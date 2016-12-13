// Navigator Functions
navOpen = 0;
activeDiv = 0;
function navBar() {
    if (navOpen === 0) {
        document.getElementById("mySidenav").style.width = "9%";
        document.getElementById("main").style.marginLeft = "9%";
        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        navOpen = 1;
    } else {
        document.getElementById("mySidenav").style.width = "0%";
        document.getElementById("main").style.marginLeft = "0%";
        document.body.style.backgroundColor = "white";
        navOpen = 0;
        $('.fade').fadeOut();
    }
}
//Fading divs
function fadeClick(element) {
    $(".fade").fadeOut();
    $(element).fadeIn();
}

//Pausing video
var video = document.getElementById("video");

function stop() {
    var video = document.getElementById("video");
    video.load();
}


