document.addEventListener('DOMContentLoaded', () => {
  'use strict'

  //PUT ALL GLOBAL VARIABLES UNDER THIS LINE



  //PUT ALL YOUR CUSTOM JAVASCRIPT FUNCTIONS UNDER THIS LINE
  function init_template() {

    //CACHING GLOBAL VARIABLES
    var i, e, el; //https://www.w3schools.com/js/js_performance.asp

    /*==================================
     ADD CLASS - VISITED IN LOCAL STORAGE
    ==================================*/
    let visitedStorKey = 'visited';

    let StartVisitedLinks = () => {
      let visited = JSON.parse(localStorage.getItem(visitedStorKey)) || [];

      visited.forEach((el) => {
        let currentLink = document.querySelector(`[href='${el}']`);

        if (currentLink) {
          currentLink.classList.add('visited');
        }
      })
    }

    let EnterVisitedListeners = () => {
      let links = document.querySelectorAll('a');
      let visited = JSON.parse(localStorage.getItem(visitedStorKey)) || [];

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
     START THE SWIPERCREATORES
    ==================================*/

    var swiper = new Swiper(".swiperCreators", {
      slidesPerView: "auto",
      spaceBetween: 20,

      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 20,
        },
        768: {
          slidesPerView: 3,
          spaceBetween: 40,
        },
        1024: {
          slidesPerView: 4,
          spaceBetween: 50,
        },
      },

    });


    /*==================================
     START THE NFTSWIPER
    ==================================*/
    var swiper = new Swiper(".nftSwiper", {
      spaceBetween: 15,
      loop: true,

      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 20,
        },
        768: {
          slidesPerView: 3,
          spaceBetween: 40,
        },
        1024: {
          slidesPerView: 4,
          spaceBetween: 50,
        },
      },


    });


    /*==================================
      START THE CARDGRADUAL
    ==================================*/

    var swiper = new Swiper(".cardGradual", {
      slidesPerView: "auto",
      spaceBetween: 0,

      breakpoints: {
        640: {
          slidesPerView: 2,
          spaceBetween: 0,
        },
        768: {
          slidesPerView: 3,
          spaceBetween: 0,
        },
        1024: {
          slidesPerView: 4,
          spaceBetween: 0,
        },
      },

    });


    /*==================================
     CREATE A CLICK EFFECT
    ==================================*/
    function createRipple(event) {
      const button = event.currentTarget;

      const circle = document.createElement("span");
      const diameter = Math.max(button.clientWidth, button.clientHeight);
      const radius = diameter / 2;

      circle.style.width = circle.style.height = `${diameter}px`;
      circle.style.left = `${event.clientX - button.offsetLeft - radius}px`;
      circle.style.top = `${event.clientY - button.offsetTop - radius}px`;
      circle.classList.add("animation_clickable");

      const ripple = button.getElementsByClassName("animation_clickable")[0];

      if (ripple) {
        ripple.remove();
      }

      button.appendChild(circle);
    }

    const buttons = document.getElementsByClassName("effect-click");
    for (const button of buttons) {
      button.addEventListener("click", createRipple);
    }


    /*==================================
     MAKES THE CURRENT LINK CONTAINING A OF CLASS "ACTIVE"
    ==================================*/
    const activePage = window.location.pathname;
    const navLinks = document.querySelectorAll('.-active-links a').forEach(link => {
      if (link.href.includes(`${activePage}`)) {
        link.classList.add('active');
      }
    });

    /*==================================
     DARK MODE ACTIVATION
    ==================================*/

    //GET THE THEME TOGGLE INPUT
    const themeToggle = document.querySelector(
      '.theme-switch input[type="checkbox"]'
    );

    const currentTheme = localStorage.getItem("theme");

    if (currentTheme) {

      document.documentElement.setAttribute("data-theme", currentTheme);

      if (currentTheme === "dark") {
        themeToggle.checked = true;
      }
    }

    //FUNCTION THAT WILL SWITCH THE THEME BASED ON THE IF THEME TOGGLE IS CHECKED OR NOT
    function switchTheme(e) {
      if (e.target.checked) {
        document.documentElement.setAttribute("data-theme", "dark");
        localStorage.setItem("theme", "dark");
      } else {
        document.documentElement.setAttribute("data-theme", "light");
        localStorage.setItem("theme", "light");
      }
    }

    //ADD AN EVENT LISTENER TO THE THEME TOGGLE, WICH WILL SWITCH THE THEME
    // themeToggle.addEventListener("change", switchTheme, false);


    /*==================================
     OFFLINE MODE / ONLINE MODE DETECTION
    ==================================*/
    function hasNetWork(online) {
      const element = document.querySelector(".status-connection");

      //UPDATE THE DOM TO REFLECT THE CURRENT STATUS
      if (online) {

        element.classList.remove("offline");
        element.classList.add("online");

      } else {
        element.classList.remove("online");
        element.classList.add("offline");
        element.classList.add("show");
        element.innerHTML =
          "<div class='d-flex'>" +
          "<div class='toast-body'>" +
          "<div class='icon-status'>" +
          "<i class='ri-wifi-off-line'></i>" +
          "</div>" +
          "<p class='msg-status'>Internet disconnected</p>" +
          "</div>" +
          "<button type='button' class='btn-close me-2 m-auto' data-bs-dismiss='toast' aria-label='Close'><i class='ri-close-fill'></i></button>" +
          "</div>";
      }
    }

    window.addEventListener("load", () => {
      hasNetWork(navigator.onLine);

      window.addEventListener("online", () => {
        //SET HASNETWORK TO ONLINE WHEN THEY CHANGE TO ONLINE
        hasNetWork(true);
      });

      window.addEventListener("offline", () => {
        //SET HASNEWTWORK TO OFFLINE WHEN THEY CHANGE TO OFFLINE
        hasNetWork(false);
      });
    });


  }

  init_template();
});

