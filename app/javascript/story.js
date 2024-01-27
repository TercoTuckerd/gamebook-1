window.history.pushState(null, null, location.href);
window.onpopstate = function(event) {
  window.history.go(1);
};

window.addEventListener('turbo:load', () =>{
  const link1 = document.getElementById("links_1");
  link1.addEventListener('click', () =>{
    console.log("イベント発火")
    //const XHR =new XMLHttpRequest();
    //XHR.open("GET", "/games/1", true);
    //XHR.responseType = "json";
    //XHR.send();
  });

  const link2 = document.getElementById("links_2");
  link2.addEventListener('click', () =>{
    console.log("イベント発火")
  });
});