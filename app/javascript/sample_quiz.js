import swal from 'sweetalert';

const link = `${window.location.origin}/users/sign_up`

const openSwal = () => {
  swal({
        title: "Sign Up to see your results!",
        text: "7 days for free!",
        icon: "warning",
        buttons: true
      })
  .then(() => window.location = link)
  }

function bindSweetAlertSampleQuiz() {
  const swalButton = document.getElementById('sweet-alert-quiz');

  if (swalButton) { // protect other pages
    
    swalButton.addEventListener('click', (e) => {
      e.preventDefault()
      openSwal()
      console.log(link)
    });
  }
}

export { bindSweetAlertSampleQuiz };