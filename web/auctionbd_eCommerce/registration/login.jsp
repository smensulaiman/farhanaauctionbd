<%-- 
    Document   : login
    Created on : Mar 1, 2020, 10:12:05 PM
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

                    <jsp:include page="loginform.jsp"></jsp:include>

                    </div>
                </div>
            </div>

        <jsp:include page="include/footer.jsp"></jsp:include>

    </body>
</html>