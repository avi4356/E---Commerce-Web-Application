
<%@page import="java.sql.*"%>
<%
 String a= request.getParameter("n1");
 String b= request.getParameter("n2");
 String c= request.getParameter("n3");
 String d= request.getParameter("n4");
 String e= request.getParameter("n5");
 String f= request.getParameter("n6");
 String g= request.getParameter("n7");
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");
 String x1= "insert into signup values(?,?,?,?,?,?,?)";

 PreparedStatement st=c1.prepareStatement(x1);
 st.setString(1,a);
 st.setString(2,b);
 st.setString(3,c);
 st.setString(4,d);
 st.setString(5,e);
 st.setString(6,f);
 st.setString(7,g);
 st.executeUpdate();
 c1.close();
%>
User Successfully Created