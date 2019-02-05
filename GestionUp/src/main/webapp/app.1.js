const navSlide = () => {
    const burger = document.querySelector ('.burger');
    const nav = document.querySelector ('.nav-links');
    const navLinks = document.querySelectorAll ('.nav-links li');
    
    nav.addEventListener('scroll', () =>{
        nav.classList.toggle('nav-active');
    });


    burger.addEventListener('click', () =>{

        nav.classList.toggle('nav-active');

        navLinks.forEach((link,index) => {
            
             link.style.animation = `navLinkFade 0.5s ease forward ${index / 7 + 1.5}s` ;   
            
        });

        burger.classList.toggle('toggle');


    });

    
    
}

navSlide();

var modal = document.getElementById('id01');

window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
var modal = document.getElementById('id02');

window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }


  var modal = document.getElementById('id03');

  window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }

    var modal = document.getElementById('id04');

window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }

  