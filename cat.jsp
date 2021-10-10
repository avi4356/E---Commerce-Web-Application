<%@page import="java.sql.*"%>
<h1 align="center">PRODUCT CATEGORIES</h1>
<h1 align="center"><img border="2px" src="images/avi03.jpg" align="center"/></h1>
<%
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");

PreparedStatement st=c1.prepareStatement("select distinct categories from stock ");
 
 ResultSet rs=st.executeQuery();
out.println("<ul><ul>");
while(rs.next())
{
String a1=rs.getString("categories");
out.println("<li style='cursor: pointer' onclick=\"abc5('"+a1+"')\">"+a1+"</a><br>");
}
out.println("</ul></ul>");
 rs.close();
 c1.close();
%>