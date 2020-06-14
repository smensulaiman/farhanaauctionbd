<form class="login100-form validate-form" action="../../SignUpController" method="POST">

    <%
        String emailValidation = (String) request.getSession().getAttribute("email_validation");

        if (emailValidation != null) {
            out.write("<span class=\"login100-form-title\" style = \" color: tomato; \">" + emailValidation + "</span>");
            
            request.getSession().removeAttribute("email_validation");
            
        } else {
    %>

    <span class="login100-form-title">
        Member Sign Up
    </span>

    <%
        }
    %>

    <div class="wrap-input100 validate-input">
        <input class="input100" type="text" name="fullname" placeholder="Full Name">
        <span class="focus-input100"></span>
        <span class="symbol-input100">
            <i class="fa fa-envelope" aria-hidden="true"></i>
        </span>
    </div>

    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
        <input class="input100" type="text" name="email" placeholder="Email">
        <span class="focus-input100"></span>
        <span class="symbol-input100">
            <i class="fa fa-envelope" aria-hidden="true"></i>
        </span>
    </div>

    <div class="wrap-input100 validate-input" data-validate = "Password is required">
        <input class="input100" type="password" name="pass" placeholder="Password">
        <span class="focus-input100"></span>
        <span class="symbol-input100">
            <i class="fa fa-lock" aria-hidden="true"></i>
        </span>
    </div>

    <div class="container-login100-form-btn">
        <button class="login100-form-btn">
            Sign Up
        </button>
    </div>

    <div class="text-center p-t-12">
        <span class="txt1">
            Already
        </span>
        <a class="txt2" href="#">
            have an account?
        </a>
    </div>
    
    <div class="text-center p-t-136">
        <a class="txt2" href="../index.jsp">
            Go Home
            <i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
        </a>
        <br>
        <a class="txt2" href="login.jsp">
            Click here to login
            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
        </a>
    </div>
</form>