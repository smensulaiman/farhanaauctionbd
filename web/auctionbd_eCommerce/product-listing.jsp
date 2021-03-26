<%@page import="java.util.List"%>
<%@page import="com.farhana.model.ProductModel"%>
<%@page import="com.farhana.db.QueryHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="head/head.jsp"></jsp:include>

        <body class="ps-loading">
            <div class="header--sidebar"></div>

        <jsp:include page="header/header.jsp"></jsp:include>

            <main class="ps-main">
                <div class="ps-products-wrap pt-80 pb-80">
                    <div class="ps-products" data-mh="product-listing">
                        <div class="ps-product-action">
                            <div class="ps-product__filter">
                                <select class="ps-select selectpicker">
                                    <option value="1">Shortby</option>
                                    <option value="2">Name</option>
                                    <option value="3">Price (Low to High)</option>
                                    <option value="3">Price (High to Low)</option>
                                </select>
                            </div>
                            <div class="ps-pagination">
                                <ul class="pagination">
                                    <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">...</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                        </div>

                    <%
                        String category = (String) request.getParameter("category");
                        QueryHelper queryHelper = new QueryHelper();
                        List<ProductModel> productModels = queryHelper.getAllProducts();
                    %>

                    <div class="ps-product__columns">
                        <%
                            for (ProductModel model : productModels) {
                                if (model.getProductCategoryID() != Integer.parseInt(category)) {
                                    continue;
                                }
                        %>
                        <div class="ps-product__column">
                            <div class="ps-shoe mb-30">
                                <div class="ps-shoe__thumbnail">
                                    <a class="ps-shoe__favorite" href="#">
                                        <i class="ps-icon-heart"></i>
                                    </a>
                                    <img src="images/product/ppe/<%=model.getProductImage()%>" alt="">
                                    <a class="ps-shoe__overlay" href="product-detail.jsp?id=<%=productModels.indexOf(model)%>""></a>
                                </div>
                                <div class="ps-shoe__content">
                                    <div class="ps-shoe__variants">
                                        <div class="ps-shoe__variant normal">

                                            <% for (int j = 0; j < 4; j++) {%>

                                            <img src="images/product/ppe/<%=model.getProductImage()%>" alt="">

                                            <% }%>

                                        </div>
                                        <select class="ps-rating ps-shoe__rating">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select>
                                    </div>
                                    <div class="ps-shoe__detail"><a class="ps-shoe__name" href="#"><%=model.getProductName()%></a>
                                        <p class="ps-shoe__categories">
                                            <a href="#"><%=model.getProductCategoryID()%></a>
                                        </p><span class="ps-shoe__price">Tk. <%=model.getProductPrice()%></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%
                            }
                        %>

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
                                        <p><strong>NUB, BANANI, DHAKA, BANGLADESH</strong></p>
                                        <p>Email: <a href='mailto:support@auctionbd.com'>support@auctionbd.com</a></p>
                                        <p>Phone: +880 1640 138 206</p>
                                        <p>Fax: ++323 32434 5333</p>
                                    </footer>
                                </aside>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
                                <aside class="ps-widget--footer ps-widget--link">
                                    <header>
                                        <h3 class="ps-widget__title">Find Our store</h3>
                                    </header>
                                    <footer>
                                        <ul class="ps-list--link">
                                            <li><a href="#">Coupon Code</a></li>
                                            <li><a href="#">SignUp For Email</a></li>
                                            <li><a href="#">Site Feedback</a></li>
                                            <li><a href="#">Careers</a></li>
                                        </ul>
                                    </footer>
                                </aside>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
                                <aside class="ps-widget--footer ps-widget--link">
                                    <header>
                                        <h3 class="ps-widget__title">Get Help</h3>
                                    </header>
                                    <footer>
                                        <ul class="ps-list--line">
                                            <li><a href="#">Order Status</a></li>
                                            <li><a href="#">Shipping and Delivery</a></li>
                                            <li><a href="#">Returns</a></li>
                                            <li><a href="#">Payment Options</a></li>
                                            <li><a href="#">Contact Us</a></li>
                                        </ul>
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
