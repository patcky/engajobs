//= require rails-ujs
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require activestorage


document.addEventListener('DOMContentLoaded', () => {
  // Navbar
  let show = true;
  const menuSection = document.querySelector(".menu-section")
  const navbarButton = menuSection.querySelector(".navbar_button")

  navbarButton.addEventListener("click", () => {
    menuSection.classList.toggle("on", show)
    show = !show;
  })
});
