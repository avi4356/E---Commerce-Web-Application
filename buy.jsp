<head font-size=100px>
<%@page import="java.sql.*"%>
<%
 //String a= request.getParameter("n2");
 //String b= request.getParameter("n2");
//String r3=(String)session.getAttribute("id");
//String r4=(String)session.getAttribute("user");
String r5=(String)session.getAttribute("billno");
String s=(String)session.getAttribute("totalamount");
String i=(String)session.getAttribute("totalitem");
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");
 PreparedStatement st=c1.prepareStatement("update bill set totalammount=?,dateofpurches=sysdate,totalitem=? where bno=?");
  st.setString(1,s); 
  st.setString(2,i);
  st.setString(3,r5);
  
// st.setString(1,r4);
// st.setString(2,r3);

st.executeUpdate();
c1.close();
response.sendRedirect("billshow.jsp");
%>
</head>