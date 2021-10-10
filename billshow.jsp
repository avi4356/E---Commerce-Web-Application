 
<%@page import="java.sql.*"%>
<form action=showcart.jsp>
<h1 align="center">PRODUCT DETAILS</h1>
<h1 align="center">YOUR PRODUCTS WILL BE DILIVERED TO YOU SOON</h1>
<%

String r3=(String)session.getAttribute("user");
String r4=(String)session.getAttribute("billno");
out.println("<table width=100% border=0 align='center'><tr align='center'><th>Bill no.</td><td>"+r4 +"</td><th>userid</th><td>"+r3+"</td></tr></table>");
%>
<table border="1" width="80%" align="center">

<%
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");

PreparedStatement st=c1.prepareStatement("select * from cart where billno=?");
st.setString(1,r4);

ResultSet rs=st.executeQuery();
   out.println("<th>Product Id</th>");
   out.println("<th>itemname</th>");
   out.println("<th>Description</th>");
   out.println("<th>Price</th>");
   out.println("<th>photo</th></tr>");
   int s=0;
   int i=0;
while(rs.next())
{

String a1=rs.getString("id");



  PreparedStatement st2=c1.prepareStatement("select * from stock where id=?");
  st2.setString(1,a1);
  ResultSet rs1=st2.executeQuery();
  
   
  while(rs1.next())
  {
    String b1=rs1.getString("id");
    String b2=rs1.getString("itemname");
    String b3=rs1.getString("description");
    String b4=rs1.getString("price");
    String b5=rs1.getString("photo");
    
    out.println("<td>"+b1+"</td>");
    out.println("<td>"+b2+"</td>");
    out.println("<td>"+b3+"</td>");
    out.println("<td>"+b4+"</td>");
    out.println("<td><img src='images/"+b5+"'width='50'></td></tr>"); 
    s=s+Integer.parseInt(b4);
    //i=i+Integer.parseInt(b4);
    i++;
  }
    
}
out.println("<tr><td></td><td></td><th>Total amount</th><td>"+s+"</td>");
out.println("<th>Total item</th><td>"+i+"</td></tr>");
 rs.close();
 c1.close();
session.setAttribute("totalamount",s+"");
session.setAttribute("totalitem",i+"");
%>
</table>
</form>














