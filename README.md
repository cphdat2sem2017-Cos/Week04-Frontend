# Frontend

This week will be centered on building a full web application and deploying it on digital ocean. 

It is intended as an exercise which will bring the previous three weeks together.

But a few new things will be thrown in along the way:

* Since we will be deploying in the cloud, the app should be usable from both a laptop and from a mobile phone. For that we will take a look at **bootstrap**.
* We will try some simple tricks in **javascript and HTML5** to make the userinterface just a nicer
* The web-app should be deployed on digital ocean. The source code however should be handed-in by putting it on **github**.


### [Text of the cupcake exercise](Cupcakes.md)

## [Link to shared google doc](https://docs.google.com/document/d/1x8VzwHrfKeVHiUy9CLpQg57RplmIUQrGPw3RJrBs-r0/edit)

# Weekplan 

Day | Topic
---|---
Monday | Cupcake project and github
Tuesday | Cupcake Q&A
Wednesday | Bootstrap
Thursday | Javascript, [Evaluation](Cos evaluation 2017-03-02.pdf)
Friday | Cupcake project [(Push to github)](Pushing to github.pdf)


# Readings

## Bootstrap
* If you are a "I need to try it out" person, then the tutorials on [w3schools has a good bootstap tutorial](https://www.w3schools.com/bootstrap/default.asp)
* Lynda.com has a series of video courses on how to use bootstrap. The one I would recommend is [Bootstrap 3 Essential Training](https://www.lynda.com/Bootstrap-tutorials/Welcome/417641/429420-4.html)

>Pitfall: Several of the online tutorials talk about how to download bootstrap. **You should not download bootstrap** but just use the method they call CDN - linking to a **C**ontents **D**elivery **N**etwork.

# Bootstrap exercises
These exercises combines a number of things you can find the solution to by looking in the [w3scools bootstrap tutorials](https://www.w3schools.com/bootstrap/default.asp)

### Exercise 1
Create a responsive html page which has a form that ask for username and password. There should be a label on the two input fields. When on a large screen, the labels should be next to the input field, when narrow screen the labels should be above the fields.

### Exercise 2
Make a zebra-stribed table which is full width in all resolutions. The table should have four collumns (Bottom, Topping, Count, and Price). 

### Exercise 3
Pick a nice template and add the two results from exercise 1 and 2 into the template. Templates can for example be found on https://startbootstrap.com.

### Exercise 4 - cupcake
The templates are typically given in html files. To turn them into jsp pages, you:

* copy the templates into the `src/main/webapp`folder of your netbeans project.
* to turn `bonanza.html` into `bonanza.jsp`you use the `add>JSP page` from the netbeans project. 
* Then you copy the contents of the html file into the newly created `jsp` page

## Javascript
Javascript is a programming language which runs in the browser, as opposed to how we use Java on the server side.

You will get to work extensively with Javascript on third semester, and this week we will only look at the most basic.

Again, [w3schools has some reasonable intro](https://www.w3schools.com/js/default.asp).

In class we looked at and talked about the following example:

```html
<!DOCTYPE html>
<html>
<body>

<h1>What Can JavaScript Do?</h1>
<script>
	document.write("Text1");
	var i = 1;
</script>
<p id="demo">JavaScript can change HTML content.</p>
<button type="button" onclick='{
	i++; 
	if(i>2){i=0;}; 
	document.getElementById("demo").innerHTML 
		= "<h3>COS: " + a[i] +"</h3>"}'>
Click Me!
</button>
<hr>
<script>
	var i = "-1";
	var a = ["Apple","Orange","Kiwi"];
	document.write("Fruits: <ul>")
	for(var j = 0; j<3;j++){
		document.write("<li>"+a[j]+"</li>");
	}
	document.write("</ul>");
</script>

</body>
</html>
```



