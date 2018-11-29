if (document.getElementById("Profile-Edit")) {
  const profileEdit = document.getElementById("Profile-Edit")
  const profile = document.getElementById("Profile")
  const profileEditBtn = document.getElementById("profile-edit-btn")

  profileEditBtn.addEventListener("click", e => {
    e.preventDefault()
    profile.style.display = "none"
    profileEdit.classList.remove = "user-tabcontent-edit"
    profileEdit.style.display = "block"
  })
};
