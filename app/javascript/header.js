window.addEventListener('load', function(){
  const pullDownButton = document.getElementById("down")
  const pullDownParents = document.getElementById("pull-down")

  pullDownButton.addEventListener('mouseover', function(){
    pullDownButton.setAttribute("style", "text-decoration:underline;")
  })


  pullDownButton.addEventListener('mouseout', function(){
    pullDownButton.setAttribute("style", "text-decoration: none;")
  })

  pullDownButton.addEventListener('click', function() {
   if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
})