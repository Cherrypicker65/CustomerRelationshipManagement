<%@ page language="java"%>
<%@ page import="java.lang.*"%>
<html>
<body>
<H1><center>Resultat der <%=request.getParameter("a1")%></center></H1>
<%
int i=Integer.parseInt(request.getParameter("p1"));
int j=Integer.parseInt(request.getParameter("p2"));
int k=0;
String str=request.getParameter("a1");

if(str.equals("add"))
  k=i+j;
if(str.equals("subtract"))
	  k=i-j;
if(str.equals("multiply"))
  k=i*j;
if(str.equals("divide"))
  k=i/j;
%>
Resultat beträgt <%=k%>
</body>
</html>
