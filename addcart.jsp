<head font-size=100px>
<%@page import="java.sql.*"%>
<%
 //String a= request.getParameter("n2");
 //String b= request.getParameter("n2");
String r3=(String)session.getAttribute("id");
String r4=(String)session.getAttribute("user");
String r5=(String)session.getAttribute("billno");
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");
String x2= "insert into cart values(seq1.nextval,?,?,sysdate,?)";
 PreparedStatement st=c1.prepareStatement(x2);
 st.setString(1,r4);
 st.setString(2,r3);
 st.setString(3,r5);
String x1=(String)session.getAttribute("user");
if(x1!=null)
{
st.executeUpdate();
out.println("<h1 font-size='300' align='center'>Added to Cart</h1>");

}
else
{
out.println("<h2 font-size='300' align='center'>please login first </h2></head>" + "Guest");
}

c1.close();
%>
</head>