const initOpenNavbar = () => {
  const modal = document.querySelector('.modal');
  const search_icon = document.querySelector('.fas.fa-search');
  if (search_icon) {
    search_icon.addEventListener('click', (event) => {
      console.log(event);
      modal.classList.add('open-modal')
    } )
  }
}

const initCloseNavbar = () => {
  const close_icon = document.querySelector('.fas.fa-times');
  if (close_icon) {
    close_icon.addEventListener('click', (event) => {
      console.log(event);
    })
  }
}

export { initOpenNavbar, initCloseNavbar };
