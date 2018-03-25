
//On loading the home index page, greet the user, get their name and display it

function Greeting() {
    var x = document.getElementById("jumbomain");
    var userResponse = prompt("Welcome to Skipper's Wardrobe. Please enter your name?");
    x.getElementsByTagName('h2')[0].innerText = "Welcome to Skipper's Wardrobe " + userResponse + '!';
}

//change the color and size of the font when mousing over Meet Skipper
//on the index page

function mouseOver() {
    
    document.getElementById("meetSkipper").style.color = "red";
    
    document.getElementById("meetSkipper").style.fontSize = "50px";
    
}

function mouseOut() {
    document.getElementById("meetSkipper").style.fontSize = "30px";
    document.getElementById("meetSkipper").style.color = "black";
    
}

//directs user to another website and confirms they want to leave the page
//in the Outfits view

function Redirect() {
    var confirmButton = document.getElementById(ebay);
    var userResponse = confirm('You are about to leave this site. If you want to stay, please select cancel.');
    //var displayContainer = document.getElementById('Headed to Ebay');
    var displayMessage = '';
    
    if (userResponse) {
        var win = window.open("http://ebay.to/2ud8XOO", '_blank');
        win.focus();
    }
}

//uses oncopy() from homework to copy a sentence and display a message in the Tops view

function myFunction() {
    document.getElementById("demo").innerHTML = "Skipper says 'Hi friend!'"
}


//changes the footer text when hovered over and changes back when not hovered

function changeFooter()
{
document.getElementById("footer").style.color = "darkpink";
document.getElementById("footer").style.fontSize = "20px";
document.getElementById("footer").innerHTML = "Created by Susan London"
    }
function changeBack() {
    document.getElementById("footer").style.fontSize = "20px";
    document.getElementById("footer").style.color = "black";
    document.getElementById("footer").innerHTML =  "&copy; 2018  Skipper's Wardrobe"

}


//dynamically allow user to remove content from the shoe page

function cutText() {
    document.getElementById("remove").innerHTML = "You're a good listener!";
    document.getElementById("remove").style.color = "black";
    document.getElementById("remove").style.fontSize = "20px";
    document.getElementById("remove").style.fontweight = "bold";
}

//create an array and tell the user what's in it 
//using a button and quiz in the Bottoms view

function getFavorites() {

    var myArray = new Array(0);
    var color = prompt('What is your favorite color?');
    myArray.push(color);

    var animal = prompt('What is your favorite animal?')
    myArray.push(animal);

    var food = prompt('What is your favorite food?');
    myArray.push(food);
    
    alert('your answers were' + ' '  + myArray + ' ');  
    }
   
//dynamically show all items meeting a certain criteria 
//in the Accessories view

function myFunction() {
    var dynArray = new Array(8);

    var x = document.getElementById("myList").innerHTML;
    
    

    
    for (i = 0; i < dynArray.length; i++) {
        x += dynArray[i] + "<br>";
        
    }
    //document.getElementById("demo").innerHTML = x;
    ////alert('here');
    //alert(x);
    //x = x++
    //document.getElementById("demo").innerHTML = x;
    alert(x);
    //if (x === '*Purse') {
    //    alert(x);
    //} else {
    //    alert('none');
    //}
    
    }


