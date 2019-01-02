<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Customers</title>
<script type="text/javascript">
 function hufistatus(){
  future=new Date();
  status="this is the time message"; // set a message text;
  future.setTime(future.getTime()+86400000); // valid for one day
  document.cookie="HufiPC";
  expires=future.toGMTString();
 }
</script>
</head>
<body onload="hufistatus()">
 <h1><b></b> <center>Search criteria</center></b> </h1>
 <p>Provide the start of the surname, given name, location (domicile) or the country ISO code. Reduce the result set by giving more details. Search is case sensitive.</p>
 <hr>
 <form method="post" action="GetCustomers.jsp">
 <br><br>
 <table border=0 colspan=3>
  <tr>
  <td>Surname</td><td/>
  <td><input type="text" name="Surname" value="" maxlength="50"></td>
  </tr>
  <tr>
   <td>Given name</td><td/>
   <td><input type="text" name="Givenname" value="" maxlength="50"></td>
  </tr>
  <tr>
   <td>Location</td><td/>
   <td><input type="text" name="Location" value="" maxlength="50"></td>
  </tr>
  <tr>
   <td>Country ISO</td><td/>
   <td><input type="text" name="Country" value="" maxlength="3"></td>
  </tr>
  <tr>
 <td><input type="reset" name="Clear fields"></td><td/>
 <td><input type="submit" name="Search"></td>
 </table>
 </form>
 <p> Martin Hufschmid, 2 JAN 2019 - all rights reserved
</body>
</html>