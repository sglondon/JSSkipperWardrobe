//On loading the home index page, greet the user, get their name and display it

function Greeting() {
    var x = document.getElementById("jumbomain");
    var userResponse = prompt("Welcome to Skipper's Wardrobe. Please enter your name?");
    x.getElementsByTagName('h2')[0].innerText = "Welcome to Skipper's Wardrobe " + userResponse;
}

//change the color and size of the font when mousing over Meet Skipper






function mouseOver() {
    
    document.getElementById("meetSkipper").style.color = "red";
    
    document.getElementById("meetSkipper").style.fontSize = "50px";
    
}

function mouseOut() {
    document.getElementById("meetSkipper").style.fontSize = "30px";
    document.getElementById("meetSkipper").style.color = "black";
    
}

