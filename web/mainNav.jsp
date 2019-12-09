<%@page import="com.farhana.values.Constant"%>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp"><%= Constant.WEB_SITE_NAME %></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">

                <% for (int i = 0; i < Constant.MENU.length; i++) {%>

                <li class="nav-item active"><a href=" <%= Constant.LINK[i]%> " class="nav-link"><%= Constant.MENU[i]%></a></li>

                <%}%>

                <li class="nav-item cta mr-md-1"><a href="new-post.html" class="nav-link">Post a Job</a></li>
                <li class="nav-item cta cta-colored"><a href="job-post.html" class="nav-link">Want a Job</a></li>

            </ul>
        </div>
    </div>
</nav>