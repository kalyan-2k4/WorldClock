<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./master.css"></link>
<title>World Time Zone</title>
</head>
<body>
<%@ page import="com.kalyan.worldtimezone.TimeZoneCalculator" %>
<script type="text/javascript">
function calc(){
let val =document.getElementById("loc").value;
window.location.replace("Timezone.jsp?loc="+val);
<%String location=request.getParameter("loc"); 
TimeZoneCalculator t = new TimeZoneCalculator(); 
String time=null;
if(location!=null)
time = t.callTime(location);%>
}
<% TimeZoneCalculator tzc = new TimeZoneCalculator();
String s[]=tzc.callTimeZoneLocations();
%> 
</script>

<h2>Timing Zones</h2><br></br>
<label for="loc">Locations :</label>
<select name="loc" id="loc" onchange="calc() "><%for(String element : s){
               if(location != null && location.equals(element)) {%>
               <option value="<%=element %>" selected><%=element %></option>
               <%}else{ %>
               <option value="<%=element %>"><%=element %></option>
               <%} %>
 <%}%>
</select>

<label class='time' >Time = <%= time %></label>

</body>
</html>