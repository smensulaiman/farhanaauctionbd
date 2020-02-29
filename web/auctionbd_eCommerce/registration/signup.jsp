<%-- 
    Document   : signup
    Created on : Feb 28, 2020, 7:31:14 PM
    Author     : farhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="include/head.jsp"></jsp:include>

    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="images/img-01.png" alt="IMG">
                    </div>

                <jsp:include page="signupform.jsp"></jsp:include>
                    
                </div>
            </div>
        </div>

    <jsp:include page="include/footer.jsp"></jsp:include>

    </body>
</html>