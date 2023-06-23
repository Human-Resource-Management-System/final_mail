<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  %>
<%@ page import="models.input.EmployeePayRollOutputModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<h1>Employee</h1>

</head>
<body>
  <h2>Pay Slip</h2>
  <% EmployeePayRollOutputModel pay = (EmployeePayRollOutputModel) request.getAttribute("pay"); %>
 <div class="container1">
  <div class="sub-container sub-container1">
    <h2>Details</h2>
    <% if (pay != null) { %>
      <p><strong>Employee ID:</strong><%= pay.getId() %></p>
      <p><strong>Employee Name:</strong><%= pay.getName() %></p>
      <p><strong>Designation:</strong><%= pay.getDesignation() %></p>
      <p><strong>Basic Pay:</strong><%=pay.getBasicPay() %> </p>
      <p><strong>HRA:</strong><%=pay.getHra() %> </p>
      <p><strong>Special Allowances:</strong><%=pay.getTa()%></p>
      <p><strong>Variable Pay:</strong><%=pay.getVariablePay()%> </p>
      <p><strong>Earned Leaves:</strong><%=pay.getEarnedLeave()%> </p>
      <% } else { %>
      <p>Payroll information not available.</p>
    <% } %>
  </div>
  <div class="sub-container sub-container2">
    <h2>Deductions</h2>
    <% if (pay != null) { %>
        <p><strong>Gratuity:</strong><%=pay.getGratuity()%> </p>
        <p><strong>Health Insurance:</strong><%=pay.getHealthInsurance()%> </p>
        <p><strong>PF:</strong><%=pay.getPf()%> </p>
        <p><strong>Extra Leaves:</strong><%=pay.getUnpaidLeave()%> </p>
      <% } else { %>
      <p>Payroll information not available.</p>
    <% } %>
  </div>
</div>
    <div class="container2"><h2>Pay</h2>
     <% if (pay != null) { %>
      <p><strong>Gross Pay:</strong><%=pay.getGp()%> </p>
      <p><strong>Deductions:</strong> 	<%=pay.getDeduction()%></p>
      <p><strong>Net Pay:</strong><%=pay.getTotal()%></p>
       <% } else { %>
      <p>Payroll information not available.</p>
    <% } %>
    </div>
  </div>



		
</body>
</html>