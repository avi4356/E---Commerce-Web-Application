
<form action="bankdetail.jsp">
<table bgcolor="pink" align="center" cellspacing=20>
<tr>
<h1 align="center">Bank Details<h1>
<tr>
<td>Bank Name</td>
<td>
<select name="n1">
<option>SBI</option>
<option>HDFC</option>
<option>CBI</option>
<option>PNB</option>
<option>RBI</option>
</select></td>
</tr>
<tr>
<td>Account Number</td>
<td><input type=" text " name ="n2"/></td>
</tr>
<tr>
<td>Key</td>
<td><input type=" text " name ="n3"/></td>
</tr>
<tr>
<td>Amount</td>
<td>
<%
String b=(String)session.getAttribute("totalamount");
%>
<input type=" text " name ="n4" value=<%=b%>></td>
</tr>
<tr>
<td colspon="3" align="center">
<input class="btn btn-success" type="submit" value="submit"/>
</td>
</tr>
</table>
</form>
