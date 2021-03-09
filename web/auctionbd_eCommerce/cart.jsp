<%-- 
    Document   : cart
    Created on : Feb 10, 2020, 9:57:57 PM
    Author     : Farhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <jsp:include page="head/head.jsp"></jsp:include>

        <body class="ps-loading">
            <div class="header--sidebar"></div>

        <jsp:include page="header/header.jsp"></jsp:include>

        <%
            //productName=productImage=productPrice=productStock=productSeller
            String productImage = request.getParameter("productImage");
            System.out.println("productImage : "+productImage);
        %>

        <main class="ps-main">
            <div class="ps-content pt-80 pb-80">
                <div class="ps-container">
                    <div class="ps-cart-listing">
                        <table class="table ps-cart__table">
                            <thead>
                                <tr>
                                    <th>Product Name</th>                                 
                                    <th>Product Quantity</th>
                                    <th>Total</th>
                                    <th>Seller</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a class="ps-product__preview" href="product-detail.html"><img class="mr-15" style="height: 100px; width: 100px" src="images/product/ppe/<%= productImage %>" alt=""> air jordan One mid</a></td>
                                    <td>$150</td>
                                    <td>
                                        <div class="form-group--number">
                                            <button class="minus"><span>-</span></button>
                                            <input class="form-control" type="text" value="2">
                                            <button class="plus"><span>+</span></button>
                                        </div>
                                    </td>
                                    <td>$300</td>
                                    <td>
                                        <div class="ps-remove"></div>
                                    </td>
                                </tr>


                            </tbody>
                        </table>
                        <div class="ps-cart__actions">
                            <div class="ps-cart__promotion">
                                <div class="form-group">
                                    <div class="ps-form--icon"><i class="fa fa-angle-right"></i>
                                        <input class="form-control" type="text" placeholder="Promo Code">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button class="ps-btn ps-btn--gray">Continue Shopping</button>
                                </div>
                            </div>
                            <div class="ps-cart__total">
                                <h3>Total Price: <span> 2599.00 $</span></h3><a class="ps-btn" href="checkout.html">Process to checkout<i class="ps-icon-next"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ps-subscribe">
                <div class="ps-container">
                    <div class="row">
                        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12 ">
                            <h3><i class="fa fa-envelope"></i>Sign up to Newsletter</h3>
                        </div>
                        <div class="col-lg-5 col-md-7 col-sm-12 col-xs-12 ">
                            <form class="ps-subscribe__form" action="do_action" method="post">
                                <input class="form-control" type="text" placeholder="">
                                <button>Sign up now</button>
                            </form>
                        </div>
                        <div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 ">
                            <p>...and receive  <span>$20</span>  coupon for first shopping.</p>
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
                            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
                                <aside class="ps-widget--footer ps-widget--link">
                                    <header>
                                        <h3 class="ps-widget__title">Products</h3>
                                    </header>
                                    <footer>
                                        <ul class="ps-list--line">
                                            <li><a href="#">Shoes</a></li>
                                            <li><a href="#">Clothing</a></li>
                                            <li><a href="#">Accessries</a></li>
                                            <li><a href="#">Football Boots</a></li>
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
