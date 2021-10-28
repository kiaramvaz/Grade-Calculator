<%-- 
    Document   : GradeForPage
    Created on : Jan 16, 2019, 9:37:12 AM
    Author     : KiaraVaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="gradeCalculatorStyle.css">
        <title>grade inputs</title>
    </head>
    <body>
        <!Form to input grades>
    <h1> Input the grades </h1>
        <form action="GradeComputation.jsp" method="GET" >
            First Grade: <input type="text" name="firstGrade">
            <br>
            Second Grade: <input type="text" name="secondGrade">
            <br>
            Third Grade: <input type="text" name="thirdGrade">
            <br>
            Fourth Grade: <input type="text" name="fourthGrade">
            <br>
            Fifth Grade: <input type="text" name="fifthGrade">
            <br>
            <input type="submit" value="Submit Grades" 
                   style ="font-size: 30px">
        </form>
    </body>
</html>
