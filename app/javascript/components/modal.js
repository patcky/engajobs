// Modal
const modal = document.getElementById('modal');

// Button that opens modal
const openModal = document.getElementById('openModalButton');

// Button that closes modal
const closeModal = document.getElementById('closeModalButton');

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
