#! /usr/bin/env ruby

# Convert a Markdown file using Docusaurus syntax to something closer to
# Github-Flavored Markdown.

# The main thing we're trying to accomplish is converting ":::" blocks
# ("admonitions") into HTML <div> elements. Unfortunately, this
# means that we must convert the content of each block from Markdown
# to HTML, since (in most Markdown processors) Markdown can't be nested
# inside an HTML element.  However, the admonition blocks are generally
# short, so in practice it's not a huge problem.

# Use this script as follows:
#
#   ./convert_docusaurus_markdown.rb < ORIG.md > RESULT.md
#
# where ORIG.md is the Quilt-syntax input file, and
# RESULT.md is the converted file that should be more or less
# in GFM format.

# Also: you will probably need to fix links to images and other
# documents.  (E.g., the previous docasaurus-based website had
# a "static" directory for static content, which no longer exists.)

require 'open3'

DEFAULT_ADMONITION_TITLES = {
  'note' => 'Note',
  'tip' => 'Tip',
  'info' => 'Info',
  'caution' => 'Caution',
  'danger' => 'Danger',
  'success' => 'Success',
}

state = :scan

admonition_indent = nil
admonition_class = nil
admonition_content = nil
admonition_title = nil

saw_doc_title = false

STDIN.each_line do |line|
  if state == :scan
    if !saw_doc_title && (m = /^title:/.match(line))
      # this is a good point to specify the Jekyll layout
      puts "layout: default"
      puts line
      saw_doc_title = true
    elsif m = /^(\s*):::([\S]+)(\s+(.*))?/.match(line)
      # beginning of block
      admonition_indent = m[1]
      admonition_class = m[2]
      raise "Unknown admonition type #{admonition_class}" if !DEFAULT_ADMONITION_TITLES.has_key?(admonition_class)
      admonition_content = []
      admonition_title = m[4].strip
      if admonition_title.empty?
        admonition_title = DEFAULT_ADMONITION_TITLES[admonition_class]
      end
      state = :grab_block
    else
      # not in a block
      puts line
    end
  elsif state == :grab_block
    if m = /^\s*:::/.match(line)
      # end of block
      admonition_markdown = admonition_indent + admonition_content.join(admonition_indent)
      admonition_html, err, status = Open3.capture3('pandoc -f gfm -t html', stdin_data: admonition_markdown)
      if !status.exited? || status.exitstatus != 0
        raise "pandoc failed"
      end
      puts "#{admonition_indent}<div class='admonition #{admonition_class}'>"
      puts "#{admonition_indent}<div class='title'>#{admonition_title}</div>"
      puts "#{admonition_indent}<div class='content'>"
      puts admonition_html
      puts "#{admonition_indent}</div>"
      puts "#{admonition_indent}</div>"
      state = :scan
    else
      # block continues
      admonition_content.push(line)
    end
  end
end
