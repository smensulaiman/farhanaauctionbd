<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%

        String title = request.getParameter("title");
        String poster = request.getParameter("poster");
        String description = request.getParameter("description");
        String salary = request.getParameter("salary");
        String type = request.getParameter("type");
        String skill = request.getParameter("skill");

    %>
    <jsp:include page="head/head.jsp"></jsp:include>
        <body class="ps-loading">
            <div class="header--sidebar"></div>
        <jsp:include page="header/header.jsp"></jsp:include>
            <main class="ps-main">
                <div class="ps-blog-grid pt-80 pb-80">
                    <div class="ps-container">
                        <div class="row">
                            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
                                <div class="ps-post--detail">
                                    <div class="ps-post__thumbnail"><img src="images/blog/11.png" alt=""></div>
                                    <div class="ps-post__header">
                                        <h3 class="ps-post__title"><%= title%></h3>
                                    <p class="ps-post__meta">Posted by <a href="#"><%= poster%></a> <%= new Date().toString()%> <a href="#"><%= type%></a> , <a href="#">####</a></p>
                                </div>
                                <div class="ps-post__content">
                                    <p><%= description%></p>
                                    <blockquote>
                                        <p>Salary : <%= salary%></p>
                                        <p class="author"><%= poster%> <br> <span><%= new Date().toString()%></span></p>
                                    </blockquote>
                                </div>
                            </div>

                            <form class="ps-form--comment" action="../BidController" method="post">
                                <h3>LEAVE A COMMENT</h3>
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                        <div class="form-group">
                                            <textarea class="form-control" rows="6" placeholder="Text your message here..."></textarea>
                                        </div>
                                    </div>
                                </div>
                                <label for="myfile">Select a file:</label>
                                <input type="file" id="myfile" name="myfile"> <br>
                                <div class="form-group">
                                    <button class="ps-btn ps-btn--sm ps-contact__submit">Apply<i class="ps-icon-next"></i></button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>

            <div class="ps-footer bg--cover" data-background="images/background/parallax.jpg">
                <div class="ps-footer__content">
                    <div class="ps-container">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                                <aside class="ps-widget--footer ps-widget--info">
                                    <header><a class="ps-logo" href="index.html"><img src="images/logo-white.png" alt=""></a>
                                        <h3 class="ps-widget__title">Address Office 1</h3>
                                    </header>
                                    <footer>
                                        <p><strong>NUB, BANANI, DHAKA, BANGLADESH</strong></p>
                                        <p>Email: <a href='mailto:support@auctionbd.com'>support@auctionbd.com</a></p>
                                        <p>Phone: +880 1640 138 206</p>
                                        <p>Fax: ++323 32434 5333</p>
                                    </footer>
                                </aside>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                                <aside class="ps-widget--footer ps-widget--info second">
                                    <header>
                                        <h3 class="ps-widget__title">Address Office 2</h3>
                                    </header>
                                    <footer>
                                        <p><strong>PO Box 16122 Collins  Victoria 3000 Australia</strong></p>
                                        <p>Email: <a href='mailto:support@auctionbd.com'>support@auctionbd.com</a></p>
                                        <p>Phone: +880 1640 138 206</p>
                                        <p>Fax: ++323 32434 5333</p>
                                    </footer>
                                </aside>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ps-footer__copyright">
                    <div class="ps-container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                                <p>&copy; <a href="#">AuctionBD</a>, Inc. All rights Resevered. Design by <a href="#"> Farhana</a></p>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                                <ul class="ps-social">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="footer/bottomJavascripts.jsp"></jsp:include>
    </body>
</html>
