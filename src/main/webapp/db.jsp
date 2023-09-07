<%@page import="com.cslc.MainPackage.Connect"%>

<html>
<body>

<%
  Connect con= new Connect();
  con.getConnection();
  con.executeSelectQuery("select *from test.user_credentials");
%>
<TABLE BORDER="1">
      <TR>
      <TH>user_name</TH>
      <TH>user_password</TH>
       </TR>
      <% while(con.rs.next()) {  %>
      <TR>
       <TD> <%= con.rs.getString("user_name") %></TD>
       <TD> <%= con.rs.getString("user_password") %></TD>
      <% } %>
     <% con.closeConnection();%>

</Tbody>
</TABLE>
</body>
</html>