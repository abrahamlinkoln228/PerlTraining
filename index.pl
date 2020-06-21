#!/usr/local/bin/perl
# hello.pl - My first CGI program
print "Content-Type: text/html\n\n";

print <<EOF;

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>

  <div class="form-group">
    <label for="exampleInputEmail1">перший додаток</label>
    <input type="number" class="form-control" id="add1">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Другий додаток</label>
    <input type="number" class="form-control" id="add2">
  </div>
  <button id="callback" class="btn btn-primary">додати</button>

	<h2 id="af_callback">sum</h2>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
	<script>
		function callback(n1, n2) {

  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("af_callback").innerHTML = this.responseText;
	console.log(this.responseText);
    }
  };
xhttp.open("POST", "add.pl", true);
xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xhttp.send("n1="+n1+"&n2="+n2); 
}

function displayDate() {
  var number1 = document.getElementById("add1").value;
  var number2 = document.getElementById("add2").value;
  callback(number1, number2);
  
}

 document.getElementById("callback").addEventListener("click", displayDate); 
		
	</script>
  </body>
</html>

EOF
