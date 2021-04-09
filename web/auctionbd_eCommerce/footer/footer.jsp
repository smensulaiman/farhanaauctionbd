<%@page import="com.farhana.values.Constant"%>

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
                <p>...and receive  <span>Tk. 200</span>  coupon for first bidding.</p>
            </div>
        </div>
    </div>
</div>

<div class="ps-footer bg--cover" data-background="images/background/parallax.jpg">
    <div class="ps-footer__content">
        <div class="ps-container">
            <div class="row">

                <%= Constant.ADDRESS_FOOTER%>

                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
                    <aside class="ps-widget--footer ps-widget--link">
                        <header>
                            <h3 class="ps-widget__title">Shortcut Category</h3>
                        </header>
                        <footer>
                            <ul class="ps-list--link">
                                <li><a href="product-listing.jsp?category=MASK">MASK</a></li>
                                <li><a href="product-listing.jsp?category=PPE">PPE</a></li>
                                <li><a href="product-listing.jsp?category=Hand Gloves">Hand Gloves</a></li>
                                <li><a href="product-listing.jsp?category=Hand Sanitizer">Hand Sanitizer</a></li>
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
                                <li><a href="checkout.jsp">Order Status</a></li>
                                <li><a href="about.jsp">About Us</a></li>
                                <li><a href="contact-us.jsp">Contact Us</a></li>
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
                                <li><a href="product-listing.jsp?category=MASK">MASK</a></li>
                                <li><a href="product-listing.jsp?category=PPE">PPE</a></li>
                                <li><a href="product-listing.jsp?category=Hand Gloves">Hand Gloves</a></li>
                                <li><a href="product-listing.jsp?category=Hand Sanitizer">Hand Sanitizer</a></li>
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
