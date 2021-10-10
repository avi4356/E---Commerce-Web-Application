<%@page import="java.sql.*"%>
<%
 String u= request.getParameter("a1");
 String p= request.getParameter("a2");
 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
 Connection c1 =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","avinash");
  PreparedStatement st3=c1.prepareStatement("select seq101.nextval from dual");
  ResultSet rs1=st3.executeQuery();
String billno="";
  if(rs1.next())
  {
   billno=rs1.getString(1);
  } 


String x2="insert into bill values(?,?,null,null,null)";
 PreparedStatement st=c1.prepareStatement("select * from signup where email=?and password=?");
 st.setString(1,u);
 st.setString(2,p);
 

 ResultSet rs=st.executeQuery();
if(rs.next())
{
PreparedStatement st2=c1.prepareStatement(x2);
st2.setString(1,billno);
st2.setString(2,u);

st2.executeUpdate();
session.setAttribute("user",u);
session.setAttribute("billno",billno);

out.println("valid user");
response.sendRedirect("main.jsp");
}
else
{
out.println("invalid user");
}
 c1.close();
%>