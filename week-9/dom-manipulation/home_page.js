// DOM Manipulation Challenge

// I worked on this challenge [by myself, with: Jack Hamilton, Kevin Sullivan].

// Add your JavaScript calls to this page:

// Release 1: Add a Class
// Add the class "done" to the #release-0 div.

document.getElementById("release-0").className = "done";

// Release 2: Set the Display Property
// Set the display property of the #release-1 div to none.

document.getElementById("release-1").style.display = "none";

// Release 3: Change Text
// Change the inner text of the <h1> tag to "I completed release 2."

document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2.";

// Release 4: Add a Background Color
// Add the background color #955251 to the #release-3 div. #955251 was Pantone's (Links to an external site.) color of the year for 2015!


document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5: Modify the Text Size
// Select all occurrences of class .release-4 and change the text-size to 2em.

var array = document.getElementsByClassName("release-4");

for (element in array) {
  array.item(element).style.fontSize = "2em";
  //document.getElementById("release-3").style.fontSize = "2em";
}

// Release 6: Append HTML
// Take the HTML in the template.hidden and append it to the bottom of the page. Use the Treehouse Blog Template Tag (Links to an external site.) resource for help.


var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));


// var clone = document.importNode(t.content, true);
// document.body.appendChild(clone);

//
// var span = document.querySelector('hidden').content;
// // Update something in the template DOM.
// span.textContent = parseInt(span.textContent) + 1;
// document.querySelector('#container').appendChild(
//     document.importNode(content, true));
//
//
//
// // Release 7: Reflect
// Create a reflection section in your "home-page.js" file. In it, answer the following questions:
//
// What did you learn about the DOM?

// I learned that the getElementsByClass does not return an array like we think it would. Instead it returns an HTML object that contains a list of elements. These elements must be accessed with the .item method.


// What are some useful methods to use to manipulate the DOM?

// Some useful methods for manipulating the DOM are:
// getElementsByClass,
// getElementById,
// getElementsByTagName,
// appendChild
