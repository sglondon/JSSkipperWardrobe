//On loading the home index page, greet the user, get their name and display it

function Greeting() {
    var x = document.getElementById("jumbomain");
    var userResponse = prompt("Welcome to Skipper's Wardrobe. Please enter your name?");
    x.getElementsByTagName('h2')[0].innerText = "Welcome to Skipper's Wardrobe " + userResponse;
}

//change the color and size of the font when mousing over Meet Skipper






function mouseOver() {
    var x = document.getElementById("meetSkipper")
    document.getElementById("meetSkipper").style.color = "red" ;
    

}

function mouseOut() {
    document.getElementById("meetSkipper").style.color = "black";
}

