  
<%@page import="java.sql.*"%>
<h1 align="center">PRODUCT CATEGORIES</h1>
<h1 align="center"><img border="2px" src="images/avi03.jpg" align="center"/></h1>
<%
String r1=request.getParameter("n1");
session.setAttribute("categories",r1);

 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");

PreparedStatement st=c1.prepareStatement("select distinct subcategories from stock where categories like ?");
st.setString(1,r1);
ResultSet rs=st.executeQuery();
out.println("<ul><ul>");
while(rs.next())
{
String b1=rs.getString("subcategories");
out.println("<li style='cursor: pointer' onclick=\"abc6('"+b1+"')\">"+b1+"</li><br>");
}
out.println("</ul></ul>");
 rs.close();
 c1.close();
%>