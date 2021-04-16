<%-- 
    Document   : blog-details
    Created on : Apr 15, 2021, 3:45:08 PM
    Author     : User
--%>

<%@page import="java.util.Date"%>
<%@page import="com.farhana.model.BlogModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <jsp:include page="head/head.jsp"></jsp:include>

        <body class="ps-loading">
            <div class="header--sidebar"></div>

        <jsp:include page="header/header.jsp"></jsp:include>

        <%

            String title = (String) request.getParameter("title");
            String type = (String) request.getParameter("type");
            String image = (String) request.getParameter("image");
            String desc = (String) request.getParameter("description");
            long time = Long.parseLong((String) request.getParameter("time"));

            BlogModel model = new BlogModel(title, type, desc, image, time);

        %>

        <main class="ps-main">
            <div class="ps-blog-grid pt-80 pb-80">
                <div class="ps-container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="ps-post--detail">
                                <div class="ps-post__thumbnail"><img src="images/blog/<%= model.getBlogImage()%>" alt=""></div>
                                <div class="ps-post__header">
                                    <h3 class="ps-post__title"><%= model.getBlogTitle()%></h3>
                                    <p class="ps-post__meta">Posted by <a href="#">Admin</a> <%= new Date(model.getDateTime()).toString()%> <a href="#"><%= model.getBlogType()%></a></p>
                                </div>
                                <div class="ps-post__content">
                                    <p><%= model.getBlogDescription()%></p>
                                </div>
                            </div>

                            <div class="ps-comments">

                                <div class="ps-comment">
                                    <div class="ps-comment__thumbnail"><img src="images/user/2.jpg" alt=""></div>
                                    <div class="ps-comment__content">
                                        <header>
                                            <h4>MARK GREY <span>(15 minutes ago)</span></h4><a href="#">Reply<i class="ps-icon-arrow-left"></i></a>
                                        </header>
                                        <p>The development of the mass spectrometer allowed the mass of atoms to be measured with increased accuracy. The device uses the launch and continued operation of the Hubble space telescope probably.</p>
                                    </div>
                                </div>

                            </div>


                            <form class="ps-form--comment" action="do_action" method="post">
                                <h3>LEAVE A COMMENT</h3>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="form-group">
                                            <input class="form-control" type="text" placeholder="Your Name">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="form-group">
                                            <input class="form-control" type="email" placeholder="E-mail">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="form-group">
                                            <input class="form-control" type="text" placeholder="Subject">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                                        <div class="form-group">
                                            <input class="form-control" type="text" placeholder="Phone Number">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                        <div class="form-group">
                                            <textarea class="form-control" rows="6" placeholder="Text your message here..."></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button class="ps-btn ps-btn--sm ps-contact__submit">Send Message<i class="ps-icon-next"></i></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="footer/footer.jsp"></jsp:include>

            </main>

        <jsp:include page="footer/bottomJavascripts.jsp"></jsp:include>

    </body>
</html>