const initOpenNavbar = () => {
    if (openModal) {
      openModal.addEventListener('click', (event) => {
  
        console.log(event);
        modal.style.display = "block";
  
      } )
    }
  }
  
  const initCloseNavbar = () => {
    if (closeModal) {
      closeModal.addEventListener('click', (event) => {
        console.log(event);
        modal.style.display = "none";
      })
    }
  }
  
  export { initOpenNavbar, initCloseNavbar };