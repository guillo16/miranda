function challengeButton() {
  function showChalForm() {
    document.getElementById("challenge-form").style.display = 'block';
    document.getElementById("challenge-button").style.display = 'none';
  }
  let button = document.getElementById("challenge-button");
  button.addEventListener("click", showChalForm);
}
export { challengeButton };
