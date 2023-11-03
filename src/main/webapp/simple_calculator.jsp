<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Simple Calculator</title>
</head>
<body>
<form action="simple_calculator.jsp">

        <label for="num1"><b>Number 1</b></label>
        <input type="text" name ="num1"><br><br>
        <label for = "num2"><b>Number 2</b></label>
        <input type="text" name="num2"><br><br>

        <input type ="radio" name = "operation" value="Add">+
        <input type = "radio" name = "operation" value="Sub">-<br>
        <input type="radio" name="operation" value ="mul">*
        <input type = "radio" name="operation" value="div">/<br><br>

        <input type="submit" value="submit">
</form>
<%-- Java code to perform calculations --%>
    <%
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String operation = request.getParameter("operation");
        
        double result = 0;

        if (num1Str != null && num2Str != null && operation != null) {
            double num1 = Double.parseDouble(num1Str);
            double num2 = Double.parseDouble(num2Str);

            if (operation.equals("Add")) {
                result = num1 + num2;
            } else if (operation.equals("Sub")) {
                result = num1 - num2;
            } else if (operation.equals("Mul")) {
                result = num1 * num2;
            } else if (operation.equals("Div")) {
                if (num2 != 0) {
                    result = num1 / num2;
                } else {
                    out.println("Division by zero is not allowed.");
                }
            }
        }
    %>

    <%-- Display the result --%>
    <h2>Result: <%= result %></h2>

</body>
</html>