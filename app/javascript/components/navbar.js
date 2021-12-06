const initUpdateNavbarOnScroll = () => {
    let show = true;
    const menuSection = document.querySelector(".menu-section")
    const navbarButton = menuSection.querySelector(".navbar_button")
  
    navbarButton.addEventListener("click", () => {
      menuSection.classList.toggle("on", show)
      show = !show;
    })
  }
  
  export { initUpdateNavbarOnScroll };