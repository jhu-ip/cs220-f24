// Global object for data and functions
intprog = {
	onLoad: function() {
		if (intprog.pageCategory) {
			console.log("Found page category");
			activeLink = document.getElementById("navbar_" + intprog.pageCategory);
			if (activeLink) {
				console.log("Found active link");
				activeLink.classList.add("active");
			}
		}
	}
}

// vim:ts=2:
