  
<%@page import="java.sql.*"%>
<h1 align="center">PRODUCT CATEGORIES</h1>
<form action="addcart.jsp">
<table border="1" align="center">
<%
String r1=(String)session.getAttribute("categories");
String r3=request.getParameter("n2");

session.setAttribute("id",r3);

 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");

PreparedStatement st=c1.prepareStatement("select * from stock where id=?");
st.setString(1,r3);
ResultSet rs=st.executeQuery();


/*out.println("<tr><th>Photo</th>");
out.println("<th>Photo 1</th>");
out.println("<th>Item Name</th>");
out.println("<th>Categories</th>");
out.println("<th>Subcategories</th>");
out.println("<th>Description</th>");
out.println("<th>Price</th>");
out.println("<th>Quantity</th></tr>");	

if(rs.next())
{	
String b6=rs.getString("photo");
String b7=rs.getString("photo1");
String b8=rs.getString("photo2");
String b1=rs.getString("itemname");
String b2=rs.getString("categories");
String b3=rs.getString("subcategories");
String b4=rs.getString("description");
String b5=rs.getString("price");
String b9=rs.getString("quantity");
out.println("<tr><td valign='top' width= 180px><img src='images/"+b6+"' width='200' height='118'>");
out.println("<img src='images/"+b7+"' width='200'height='118'>");
out.println("<img src='images/"+b8+"'width='200' height='118'></td>");
out.println("<td ><img src='images/"+b8+"' width='400' height='354'></td>");
out.println("<td>"+b1+"</td>");
out.println("<td> "+b2+"</td>");
out.println("<td> "+b3+"</td>");
out.println("<td> "+b4+"</td>");
out.println("<td> "+b5+"</td>");
out.println("<td> "+b9+"</td></tr>");

}
*/
if(rs.next())
{	
String b6=rs.getString("photo");
String b7=rs.getString("photo1");
String b8=rs.getString("photo2");
String b1=rs.getString("itemname");
String b2=rs.getString("categories");
String b3=rs.getString("subcategories");
String b4=rs.getString("description");
String b5=rs.getString("price");
String b9=rs.getString("quantity");
out.println("<tr> <td> <table border=1><tr><td valign='top' width= 180px><img src='images/"+b6+"' width='200' height='118'></td></tr>");
out.println("<tr><td><img src='images/"+b7+"' width='200'height='118'></td></tr>");
out.println("<tr><td><img src='images/"+b8+"'width='200' height='118'></td></tr></table></td>");
out.println("<td><img src='images/"+b8+"'width='400' height='345'></td>");
out.println("<td><table border=1 width='500' height='120'><tr><th>itemname</th><td>"+b1+"</td></tr>");
out.println("<tr> <th>categories</th><td>"+b2+"</td></tr>");
out.println("<tr><th>subcategories</th><td>"+b3+"</td></tr>");
out.println("<tr> <th>description</th><td>"+b4+"</td></tr>");
out.println("<tr><th>price</th><td>"+b5+"</td></tr>");
out.println("<tr><th>quantity</th><td>"+b9+"</td></tr> ");
out.println("<td><tr align='center' height='60'><td colspan='2' height='20'><input class='btn btn-success' type='button' style='cursor: pointer' onclick=abc8() value='Add Cart' align='left' width='100px'/></td></tr></td> </td></table></tr>");
}

 rs.close();
 c1.close();
%>

</table>
</form>