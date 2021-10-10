<html>
<head>
<title>my form page  </title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
<style>      
        .head1{
            
            background-color:#0035; 
            width:auto;
            height:10px;
       
           
      img{  
            width:10%;
            height:10px;
            background-color:#0035;
            } 
         
       
}
         
        .head2 { 
            
            font-size:50px; 
            color:#009900; 
            font-weight:bold;
            background-color:#0035; 
            padding-top:0px;
            padding-bottom:0px;
            text-align:right;
            width:100%;
            align:80;
            height:15%;
        } 
     .head3 { 
            
            font-size:15px; 
             
            font-weight:bold;
            background-color:green; 
              padding-top:0px;
             padding-bottom:0px;
            text-align:right;
            width:100%;
            align:80;
            height:5%; 
         }
     .head4
          {
          background:pink;
          position:absolute;
          width:100%;
           left:6;
           top:190px;
          height:80%;
          visibility:hidden;
          

           }
     
</style>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<script type="text/javascript">
function abc4()
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      aba.innerHTML=z
	abd.style.visibility="hidden"

    }
  }
    var b="cat.jsp"
    xm.open("GET",b,true);
    xm.send();
}
function abc()
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      aba.innerHTML=z
abd.style.visibility="hidden"
    }
  }
    var b="login.jsp"
    xm.open("GET",b,true);
    xm.send();
}
function abc1()
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      aba.innerHTML=z
abd.style.visibility="hidden"
    }
  }
    var b="home.jsp"
    xm.open("GET",b,true);
    xm.send();
}
function abc2()
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      aba.innerHTML=z
abd.style.visibility="hidden"
    }
  }
    var b="signup.jsp"
    xm.open("GET",b,true);
    xm.send();
}
function abc3()
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      aba.innerHTML=z
abd.style.visibility="hidden"
    }
  }
    var b="about us.jsp"
    xm.open("GET",b,true);
    xm.send();
}
function abc5(d1)
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      aba.innerHTML=z

    }
  }
    var b="subcat.jsp?n1="+d1
    xm.open("GET",b,true);
    xm.send();
}
function abc6(d2)
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      abb.innerHTML=z
      abd.style.visibility="visible"

    }
  }
    var b="detail.jsp?n2="+d2
    xm.open("GET",b,true);
    xm.send();
}
function abc7(d2)
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      abb.innerHTML=z
      abd.style.visibility="visible"
    }
  }
    var b="item.jsp?n2="+d2
    xm.open("GET",b,true);
    xm.send();
}

function abc8()
{

 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {

   if(xm.readyState==4)
   {

     z=xm.responseText;
     //document.f1.time.value=z;
      aba.innerHTML=z
      abd.style.visibility="hidden"
    }
  }
    var b="addcart.jsp"
    xm.open("GET",b,true);

    xm.send();
}
function abc9()
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {
     z=xm.responseText;
     //document.f1.time.value=z;
      abb.innerHTML=z
      abd.style.visibility="visible"
    }
  }
    var b="showcart.jsp"
    xm.open("GET",b,true);
    xm.send();
}
function abc10()
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {
     z=xm.responseText;
     //document.f1.time.value=z;
      abb.innerHTML=z
      abd.style.visibility="visible"
    }
  }
    var b="buy.jsp"
    xm.open("GET",b,true);
    xm.send();
}
function abc11()
{
 var xm;
 xm=new XMLHttpRequest();
 xm.onreadystatechange=function()
  {
   if(xm.readyState==4)
   {
     z=xm.responseText;
     //document.f1.time.value=z;
      abb.innerHTML=z
      abd.style.visibility="visible"
    }
  }
    var b="bank.jsp"
    xm.open("GET",b,true);
    xm.send();
}
</script>



</head>
<body>
<script type="text/*" src="js/jquery.js"></script>
<script type="text/*" src="js/bootstrap.min.js"></script>



   <!-- Header Section -->
    <header> 
           <div class="head1"><img src="images/avi02.jpg" width="300" height="106" border="4"></div>
           
           <div class="head2">Electronic Device Trade Shop(E.D.T.S)</div>
     
<div id="head3" align = right>
<%
String x1=(String)session.getAttribute("user");
if(x1!=null)
{
out.println("Welcome   " + x1);
}
else
{
out.println("Welcome   " + "guest" );
}
%>
</div>
</header>
<%@ include file="nav.jsp" %>


<table width=100%>
<tr>
<td width=50% valign="top"><img src="images/avi1.jpg" width="704" height="484"></td>
<td bgcolor=pink>
<p id="aba"></p></td>
</tr>
</table>


<div class="head4" id="abd">


<p id="abb"></p>

</div>





</body>
</html>
