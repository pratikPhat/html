<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
</head>
<body>
	<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.active, .accordion:hover {
	background-color: #ccc;
}

.panel {
	display: none;
	background-color: white;
	overflow: hidden;
}
</style>
</head>
<body>

	<h2>FAQ'S</h2>

	<button class="accordion">How To Log In?</button>
	<div class="panel">
		<p>
			1. Visit Our Home Page</br> 2. Click On sign-up and fill the details.</br> 3.
			Enter Username ,password and select type.</br> 4. Reenter your username
			and password and you will succesfully log in.
		</p>
	</div>

	<button class="accordion">Can I Volunteer With Social
		Help-Care Portal ?</button>
	<div class="panel">
		<p>Yes.We welcome volunteers.</p>
	</div>

	<button class="accordion">How can I contact Social Help-Care
		Portal if I have questions?</button>
	<div class="panel">
		<p>
			You may get our contact information from <a href="ContDemo.html">here.</a>
		</p>
	</div>

	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.display === "block") {
					panel.style.display = "none";
				} else {
					panel.style.display = "block";
				}
			});
		}
	</script>

</body>
</html>
</body>
</html>

















