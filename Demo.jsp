<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Das ist meine Demo mit Kalkulator Formular</title>
</head>
<body>
anything goes here at the location:
<div class="geo">GEO:
<span class="latitude">36.123456</span>
<span class="longitude">15.654321</span>
</div>

      <h1> <center>Kalkulator</center> </h1>
      <b>unterst&uuml;tzte Rechen Operationen</b>
      <hr>
      <form method="post" action="Calc.jsp">
<font size=5 face="Times New Roman">
      <input type="radio" name="a1" value="add" checked>Addition</input><br>
      <input type="radio" name="a1" value="subtract" >Subtraktion</input><br>
      <input type="radio" name="a1" value="multiply" >Multiplikation</input><br>
      <input type="radio" name="a1" value="divide" >Division</input><br>
</font>
<br><br>
Erster Parameter &nbsp &nbsp &nbsp<input type="text" name="p1" value="0"><br>
Zweiter Parameter &nbsp &nbsp &nbsp<input type="text" name="p2" value="0"><br>
<input type="submit" name="Rechnen">
      </form>
</body>
</html>