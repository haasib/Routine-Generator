<!doctype html>

<html>
	<title> Admin </title>
	
	<head>
		<script type = "text/javascript">
			function doit(get)
			{
				var cur = document.getElementById(get);
				//document.write(cur.value);
			}
			function doit(get)
			{
				var cur = document.getElementById(get);
				//document.write(cur.value);
			}
		</script>
		
		
		<style>
			body {
			  margin: 0;
			  font-family: Arial, Helvetica, sans-serif;
			}

			.topnav {
			  overflow: hidden;
			  background-color: gray;
			}

			.topnav a {
			  float: left;
			  color: #f2f2f2;
			  text-align: center;
			  padding: 25px 29px;
			  text-decoration: none;
			  font-size: 17px;
			}

			.topnav a:hover {
			  background-color: #ddd;
			  color: black;
			}

			.topnav a.active {
			  background-color: #4CAF50;
			  color: white;
			}
			#selec1{
				width: 501px;
				background-color: silver;
				right: 35%;
				left: auto;
				margin: 0;
				position: absolute;
				font-color: gray;
				font-size: 20px;
				
			}
			
			#selec2{
				width: 303px;
				background-color: silver;
				right: 75%;
				left: auto;
				margin: 0;
				position: absolute;
				font-color: gray;
				font-size: 20px;
				
			}
			
			#totcredit{
				font: Arial;
				font-size: 20px;
				width: 495px;
				height: 31px;
				position: absolute;
				right: 35%;
			}
			#cr1
			{
				font: Arial;
				font-size: 18px;
				width: 200 px;
				height: 18 px;
				position: absolute;
				right: 20%;
			}
			#sec1
			{
				font: Arial;
				font-size: 18px;
				width: 200 px;
				height: 18 px;
				position: absolute;
				right: 5%;
			}
			#bt1{
				width: 153px;
				height: 53px;
				color: silver;
				background: green;
				font-size: 30px;
				position: absolute;
				right: 50%;
				left: auto;
			}
		</style>
		
	</head>
	
	<body>
		
		<body onload = "fun1()">
			<div class="topnav">
			  <a href="Adminhome.html">Home</a>
			  <a class = "active"  href="Assigncourse.html">Assign Course</a>
			  <a href="1.html">Log Out</a>
			</div>
			<P id = 'f1'></p>
			
			<!--<div class = "drop1"> -->
				<h2>Select Teacher: <h2> 
				<select id="selec2" name = "selec2" onchange = "doit2(this.id)">
					<option value = ""> </option>
					<option value = "IAE"> Iftekharul Alam </option>
					<option value = "KMIU"> Imtiaz Uddin </option>
					<option value = "AA"> Asraf Ali </option>
				</select>
				
				<br><br><br>
				<input type = "text" placeholder = "Total Credit" name = "totcredit" id="totcredit"> </input>
				<br><br><br>
				<select id="selec1" name = "selec1" onchange = "doit(this.id)">
					<option value = ""> </option>
					<option value = "swe 231"> swe 231 </option>
					<option value = "swe 232"> swe 232 </option>
					<option value = "swe 233"> swe 233 </option>
				</select>
				
				<input type = "text" placeholder = "Credit" id="cr1" name = "cr1"> </input>
				<input type = "text" placeholder = "Section" id="sec1" name = "sec1"> </input>
				
				<br><br>
				
				
				
				<select id="selec1" name = "selec2" onchange = "doit(this.id)">
					<option value = ""> </option>
					<option value = "swe 231"> swe 231 </option>
					<option value = "swe 232"> swe 232 </option>
					<option value = "swe 233"> swe 233 </option>
				</select>
				
				
				<input type = "text" placeholder = "Credit" id="cr1" name = "cr1"> </input>
				<input type = "text" placeholder = "Section" id="sec1" name = "sec1"> </input>
				
				<br><br>
				
				
				
				<select id="selec1" name = "selec3" onchange = "doit(this.id)">
					<option value = ""> </option>
					<option value = "swe 231"> swe 231 </option>
					<option value = "swe 232"> swe 232 </option>
					<option value = "swe 233"> swe 233 </option>
				</select>
				
				<input type = "text" placeholder = "Credit" id="cr1" name = "cr1"> </input>
				<input type = "text" placeholder = "Section" id="sec1" name = "sec1"> </input>
				
				<br><br>
				<select id="selec1" name = "selec4" onchange = "doit(this.id)">
					<option value = ""> </option>
					<option value = "swe 231"> swe 231 </option>
					<option value = "swe 232"> swe 232 </option>
					<option value = "swe 233"> swe 233 </option>
				</select>
				
				<input type = "text" placeholder = "Credit" id="cr1" name = "cr1"> </input>
				<input type = "text" placeholder = "Section" id="sec1" name = "sec1"> </input>
				
				<br><br>
				<select id="selec1" name = "selec5" onchange = "doit(this.id)">
					<option value = ""> </option>
					<option value = "swe 231"> swe 231 </option>
					<option value = "swe 232"> swe 232 </option>
					<option value = "swe 233"> swe 233 </option>
				</select>
				<input type = "text" placeholder = "Credit" id="cr1" name = "cr1"> </input>
				<input type = "text" placeholder = "Section" id="sec1" name = "sec1"> </input>
			<!-- </div> -->
			<br><br><br><br><br>
			<input type = "button" id = "bt1" name = "bt1" value = "Submit"></input>
		</body>
		
	</body>
	
</html>