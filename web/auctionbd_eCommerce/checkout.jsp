<%-- 
    Document   : checkout
    Created on : Feb 25, 2021, 12:12:06 PM
    Author     : Farhana
--%>

<%@page import="com.farhana.model.ProductModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="head/head.jsp"></jsp:include>
        <body class="ps-loading">
            <div class="header--sidebar"></div>
        <jsp:include page="header/header.jsp"></jsp:include>

        <%
            String productName = request.getParameter("productName");
            String productImage = request.getParameter("productImage");
            String productPrice = request.getParameter("productPrice");
            String productStock = request.getParameter("productStock");
            String productSeller = request.getParameter("productSeller");
        %>

        <main class="ps-main">
            <div class="ps-checkout pt-80 pb-80">
                <div class="ps-container">
                    <form class="ps-checkout__form" action="../Success" method="post">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 ">
                                <div class="ps-checkout__billing">
                                    <h3>Billing Detail</h3>
                                    <div class="form-group form-group--inline">
                                        <label>First Name<span>*</span>
                                        </label>
                                        <input class="form-control" type="text">
                                    </div>
                                    <div class="form-group form-group--inline">
                                        <label>Last Name<span>*</span>
                                        </label>
                                        <input class="form-control" type="text">
                                    </div>
                                    <div class="form-group form-group--inline">
                                        <label>Seller<span>*</span>
                                        </label>
                                        <input class="form-control" type="text" value="<%= productSeller %>">
                                    </div>
                                    <div class="form-group form-group--inline">
                                        <label>Email Address<span>*</span>
                                        </label>
                                        <input class="form-control" type="email">
                                    </div>
                                   
                                    <div class="form-group form-group--inline">
                                        <label>Phone<span>*</span>
                                        </label>
                                        <input class="form-control" type="text">
                                    </div>
                                    <div class="form-group form-group--inline">
                                        <label>Address<span>*</span>
                                        </label>
                                        <input class="form-control" type="text">
                                    </div>
                                    <h3 class="mt-40"> Addition information</h3>
                                    <div class="form-group form-group--inline textarea">
                                        <label>Order Notes</label>
                                        <textarea class="form-control" rows="5" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                                <div class="ps-checkout__order">
                                    <header>
                                        <h3>Your Order</h3>
                                    </header>
                                    <div class="content">
                                        <table class="table ps-checkout__products">
                                            <thead>
                                                <tr>
                                                    <th class="text-uppercase">Product</th>
                                                    <th class="text-uppercase">Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><%= productName %></td>
                                                    <td>Tk.<%= productPrice %></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <footer>
                                        <h3>Payment Method</h3>
                                        <div class="form-group cheque">
                                            <div class="ps-radio">
                                                <input class="form-control" type="radio" id="rdo01" name="payment" checked>
                                                <label for="rdo01">Cheque Payment</label>
                                                <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                            </div>
                                        </div>
                                        <div class="form-group paypal">
                                            <div class="ps-radio ps-radio--inline">
                                                <input class="form-control" type="radio" name="payment" id="rdo02">
                                                <label for="rdo02">Paypal</label>
                                            </div>
                                            <ul class="ps-payment-method">
                                                <li><a href="#"><img src="images/payment/1.png" alt=""></a></li>
                                                <li><a href="#"><img src="images/payment/2.png" alt=""></a></li>
                                                <li><a href="#"><img src="images/payment/3.png" alt=""></a></li>
                                            </ul>
                                            <button class="ps-btn ps-btn--fullwidth">Place Order<i class="ps-icon-next"></i></button>
                                        </div>
                                    </footer>
                                </div>
                                <div class="ps-shipping">
                                    <h3>FREE SHIPPING</h3>
                                    <p>YOUR ORDER QUALIFIES FOR FREE SHIPPING.<br> <a href="#"> Singup </a> for free shipping on every order, every time.</p>
                                </div>
                            </div>
                        </div>
                    </form>
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
        <!-- JS Library-->
        <jsp:include page="footer/bottomJavascripts.jsp"></jsp:include>
    </body>
</html>