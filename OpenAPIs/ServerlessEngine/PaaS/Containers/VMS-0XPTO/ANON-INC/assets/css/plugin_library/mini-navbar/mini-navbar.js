document.addEventListener('DOMContentLoaded', () => {
    'use strict'
    /*==================================
	 ADD CLASS - VISITED IN LOCAL STORAGE
	==================================*/
    let visitedStorKey = 'visited';
    let StartVisitedLinks = () => {
        let visited = JSON.parse(localStorage.getItem(visitedStorKey)) || [];
		// console.log(visited);
        visited.forEach((el) => {
            let currentLink = document.querySelector(`[href='${el}']`);
            if (currentLink) {
				// console.log(currentLink);
                currentLink.classList.add('visited');
            }
        })
    }

    let EnterVisitedListeners = () => {
        let links = document.querySelectorAll('a');
		// console.log(links);
        let visited = JSON.parse(localStorage.getItem(visitedStorKey)) || [];
		// console.log(visited);
        for (let link of links) {
            link.addEventListener('click', function (ev) {
                if (visited.indexOf(this.getAttribute('href')) == -1) visited.push(this.getAttribute('href'));
                this.classList.add('visited');
                localStorage.setItem(visitedStorKey, JSON.stringify(visited));
            })
        }
    }

    StartVisitedLinks();
    EnterVisitedListeners();

    /*==================================
	 MAKES THE CURRENT LINK CONTAINING A OF CLASS "ACTIVE"
	==================================*/
    const activePage = window.location.pathname;
	// console.log(`${activePage}`);
    const navLinks = document.querySelectorAll('.-active-links a').forEach( link => {
		// link.classList.add('active');
		console.log(activePage);
		// link.classList.remove('active');
        // link.classList.add('active');
        // if (link.href) {
        //     link.classList.add('active');
        // }
        // if (link.href.includes(`${activePage}`)) {
        //     link.classList.remove('active');
        // }
        if (link.href.includes(`${activePage}`)) {
            link.classList.add('active');
        }

    });
});