 
<%@page import="java.sql.*"%>
<form action=showcart.jsp>
<h1 align="center">BANK DETAILS</h1>
<table border="1" width="80%" align="center">

<%

String r3=(String)session.getAttribute("user");
String r4=(String)session.getAttribute("billno");
String s=(String)session.getAttribute("totalamount");
 String a= request.getParameter("n1");
 String b= request.getParameter("n2");
 String c= request.getParameter("n3");
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");

String x1= "insert into bank values(?,?,?,?,?,?,sysdate)";
 PreparedStatement st=c1.prepareStatement(x1);
 st.setString(1,r3);
 st.setString(2,r4);
 st.setString(3,s);
 st.setString(4,a);
 st.setString(5,b);
 st.setString(6,c);
 st.executeUpdate();
 c1.close();  
response.sendRedirect("billshow.jsp");
%>
</table>
</form>














