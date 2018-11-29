function challengeButton() {
  function showChalForm() {
    document.getElementById("challenge-form").style.display = 'block';
    document.getElementById("challenge-button").style.display = 'none';
  }
  if (document.getElementById("challenge-button")) {
    let button = document.getElementById("challenge-button");
    button.addEventListener("click", showChalForm);
  }
}
export { challengeButton };
