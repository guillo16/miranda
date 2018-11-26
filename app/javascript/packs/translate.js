import swal from 'sweetalert';

const translate = () => {

  const url = 'https://translate.yandex.net/api/v1.5/tr.json/translate'
  const key = 'trnsl.1.1.20181126T193125Z.168557aeec68e471.5a30562a9941769bffb5c750477e43bf5adb8e9d'

  const fetchTranslation = (word) => {
    fetch(`${url}?key=${key}&text=${word}&lang=es-en`)
      .then(res => res.json())
      .then(data => {
        swal(data.text[0])
      })
  }


  const words = document.querySelectorAll('.word')

  words.forEach(word => {
    word.addEventListener('click', (e) => {
      fetchTranslation(e.target.innerText)
    })
  })
}

export default translate
