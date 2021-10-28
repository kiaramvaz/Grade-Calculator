<%-- 
    Document   : GradeComputation
    Created on : Jan 16, 2019, 10:21:24 AM
    Author     : KiaraVaz
--%>

<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="gradeCalculatorStyle.css">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <!Declaration of Array>
        
        <% double [] gradeArray = new double[5];
        gradeArray[0] = Double.parseDouble(request.getParameter("firstGrade"));
        gradeArray[1] = Double.parseDouble(request.getParameter("secondGrade"));
        gradeArray[2] = Double.parseDouble(request.getParameter("thirdGrade"));
        gradeArray[3] = Double.parseDouble(request.getParameter("fourthGrade"));
        gradeArray[4] = Double.parseDouble(request.getParameter("fifthGrade"));
        
        
        for(int k=0; k<gradeArray.length; k++){
            if(gradeArray[k]>100 || gradeArray[k]<0){
                throw new RuntimeException("Grade over 100");
            }
        }
            
        %>
        
        <!print the grades>
        <br>
        First Grade:
        <% out.println(request.getParameter("firstGrade")); %>
        <br>
        Second Grade:
        <% out.println(request.getParameter("secondGrade")); %>
        <br>
        Third Grade:
        <% out.println(request.getParameter("thirdGrade")); %>
        <br>
        Fourth Grade:
        <% out.println(request.getParameter("fourthGrade")); %>
        <br>
        Fifth Grade:
        <% out.println(request.getParameter("fifthGrade")); %>
        <br>
        <br>
        <!Computation of the average>
        The Average:
        <% out.println(
                ((Double.parseDouble(request.getParameter("firstGrade"))
                        +
                        Double.parseDouble(request.getParameter("secondGrade"))
                        +
                        Double.parseDouble(request.getParameter("thirdGrade"))
                        + 
                        Double.parseDouble(request.getParameter("fourthGrade"))
                        +
                        Double.parseDouble(request.getParameter("fifthGrade")))/5)
                        );
        %> 
        <br>
        <br>
        <!For loop to calculate highest grade>
        <%
        double high=0;
        for(int i = 0;i<gradeArray.length;i++)
            if(gradeArray[i]>high)
            {
                high = gradeArray[i]; 
                
            }
        out.println("The highest grade is " + high);
        
        %>
        <br>
        <!For loop to calculate lowest grade>
        <%
            double low= gradeArray[0];
            for(int i = 0;i<gradeArray.length;i++)
            if(gradeArray[i]<low)
            {
                low= gradeArray[i];
            }
         out.println("The lowest grade is " + low);
        %>
        
        
    </body>
</html>
