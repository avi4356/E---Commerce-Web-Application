  
<%@page import="java.sql.*"%>
<h1 align="center">PRODUCT CATEGORIES</h1>
<h1 align="center"><img border="2px" src="images/avi03.jpg" align="center"/></h1>
<table border=1>
<%
String r1=(String)session.getAttribute("categories");
String r2=request.getParameter("n2");



 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");

PreparedStatement st=c1.prepareStatement("select * from stock where categories=? and subcategories=?");
st.setString(1,r1);
st.setString(2,r2);
ResultSet rs=st.executeQuery();
out.println("<tr><td>Item Name</td>");
out.println("<td>Categories</td>");
out.println("<td>Subcategories</td>");
out.println("<td>Description</td>");
out.println("<td>Price</td>");
out.println("<td>Photo</td>");
out.println("<td>Photo 1</td>");
out.println("<td>Photo 2</td>");
out.println("<td>Quantity</td></tr>");

while(rs.next())
{
String b0=rs.getString("id");

String b1=rs.getString("itemname");
String b2=rs.getString("categories");
String b3=rs.getString("subcategories");
String b4=rs.getString("description");
String b5=rs.getString("price");
String b6=rs.getString("photo");
String b7=rs.getString("photo1");
String b8=rs.getString("photo2");
String b9=rs.getString("quantity");

out.println("<tr><td style='cursor: pointer' onclick= \"abc7('"+b0+"')\">"+b1+"</td>");
out.println("<td> "+b2+"</td>");
out.println("<td> "+b3+"</td>");
out.println("<td> "+b4+"</td>");
out.println("<td> "+b5+"</td>");
out.println("<td><img src='images/"+b6+"' width=100px></td>");
out.println("<td><img src='images/"+b7+"'width=100px</td>");
out.println("<td><img src='images/"+b8+"'width=100px</td>");
out.println("<td> "+b9+"</td></tr>");
}
 rs.close();
 c1.close();
%>
</table>