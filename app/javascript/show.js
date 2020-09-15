window.addEventListener('load', function(){

const pullDownButton = document.getElementById("edit")
const pullDownParents = document.getElementById("edit-down")


// pullDownButton.addEventListener('mouseover', function(){
//   pullDownButton.setAttribute("style", "height: 8vh;")
// })

// pullDownButton.addEventListener('mouseout', function(){
//   pullDownButton.setAttribute("style", "height: 5vh;")
// })

pullDownButton.addEventListener('click', function() {
  if (pullDownParents.getAttribute("style") == "display:flex;") {
      pullDownParents.removeAttribute("style", "display:flex;")
  } else {
    pullDownParents.setAttribute("style", "display:flex;")
  }
})

})