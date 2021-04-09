<%@page import="com.farhana.values.Constant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String name = (String) request.getSession().getAttribute("username");
%>

<header class="header">
    <div class="header__top"  style="background-color:  tomato">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
                    <p style="color: white"><%= Constant.ADDRESS_AND_NUMBER %></p>
                </div>
                <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
                    <div class="header__actions">

                        <% if (name == null) { %>

                        <a href="registration/login.jsp" style="color: white">Login & Regiser</a>

                        <% } else {%>

                        <div class="btn-group ps-dropdown" ><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white"><%=name%><i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="/Farhana/LogoutController"><i class="fa fa-sign-out"></i>Log Out</a></li>
                            </ul>
                        </div>

                        <% } %>


                        <div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">TK<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><img src="images/flag/bd.svg" alt="" style="color: white"> BD</a></li>
                            </ul>
                        </div>
                        <div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white">Language<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Bangla</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navigation">
        <div class="container-fluid">
            <div class="navigation__column left">
                <div class="header__logo"><a class="ps-logo" href="index.jsp"><img src="images/logo.png" alt=""></a></div>
            </div>
            <div class="navigation__column center">
                <ul class="main-menu menu">
                    <li class="menu-item menu-item-has-children dropdown"><a href="index.jsp">Home</a>
                    </li>
                    <li class="menu-item menu-item-has-children has-mega-menu"><a href="#">AUCTION CATEGORY</a>
                        <div class="mega-menu">
                            <div class="mega-wrap">
                                <div class="mega-column">
                                    <ul class="mega-item mega-features">

                                        <li><a href="#">NEW AUCTION</a></li>
                                        <li><a href="#">FEATURES AUCTION</a></li>
                                        <li><a href="#">BEST AUCTION</a></li>
                                        <li><a href="#">NOW TRENDING AUCTION</a></li>
                                        <li><a href="#">SUMMER ESSENTIALS AUCTION</a></li>
                                        <li><a href="#">MUJIB BORSHO AUCTION</a></li>
                                        <li><a href="#">FAN GEAR AUCTION</a></li>

                                    </ul>
                                </div>
                                <div class="mega-column">
                                    <h4 class="mega-heading">COVID-19</h4>
                                    <ul class="mega-item">
                                        <li><a href="product-listing.jsp?category=MASK">MASK</a></li>
                                        <li><a href="product-listing.jsp?category=PPE">PPE</a></li>
                                        <li><a href="product-listing.jsp?category=Hand Gloves">Hand Gloves</a></li>
                                        <li><a href="product-listing.jsp?category=Hand Sanitizer">Hand Sanitizer</a></li>
                                    </ul>
                                </div>
                                <div class="mega-column">
                                    <h4 class="mega-heading">IT and Graphics</h4>
                                    <ul class="mega-item">
                                        <li><a href="product-listing.jsp?category=Hand Sanitizer">HTML Design</a></li>
                                        <li><a href="product-listing.jsp?category=Hand Sanitizer">Logo Design</a></li>
                                        <li><a href="product-listing.jsp?category=Hand Sanitizer">Plug Ins</a></li>
                                        <li><a href="product-listing.jsp?category=Hand Sanitizer">Graesmonkey Scripts</a></li>
                                        <li><a href="product-listing.jsp?category=Hand Sanitizer">Bots</a></li>
                                    </ul>
                                </div>
                                <div class="mega-column">
                                    <h4 class="mega-heading">Garments</h4>
                                    <ul class="mega-item">
                                        <li><a href="product-listing.jsp?category=15">Shirts</a></li>
                                        <li><a href="#">Tops and T-Shirts</a></li>
                                        <li><a href="#">Pants</a></li>
                                        <li><a href="#">Hoodies Sweatshirts</a></li>
                                        <li><a href="#">Jackets Vests</a></li>
                                        <li><a href="#">Shorts</a></li>
                                    </ul>
                                </div>
                                <div class="mega-column">
                                    <h4 class="mega-heading">Writting</h4>
                                    <ul class="mega-item">
                                        <li><a href="#">Notes</a></li>
                                        <li><a href="#">Assignments</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="menu-item"><a href="#">TOP 10 AUCTIONS</a></li>
                    <li class="menu-item"><a href="about.jsp">ABOUT US</a></li>
                    <li class="menu-item menu-item-has-children dropdown"><a href="joblist.jsp">JOBS</a>
                    </li>
                    <li class="menu-item menu-item-has-children dropdown"><a href="contact-us.jsp">Contact</a>
                    </li>
                </ul>
            </div>
            <div class="navigation__column right">
                <form class="ps-search--header" action="do_action" method="post">
                    <input class="form-control" type="text" placeholder="Search Product…">
                    <button><i class="ps-icon-search"></i></button>
                </form>
                <div class="ps-cart"><a class="ps-cart__toggle" href="#"><span><i>20</i></span><i class="ps-icon-shopping-cart"></i></a>
                    <div class="ps-cart__listing">
                        <div class="ps-cart__content">
                            <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                <div class="ps-cart-item__thumbnail"><a href="#"></a><img src="images/logo.png" alt=""></div>
                                <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="#">NUB16012452</a>
                                    <p><span>Quantity:<i>12</i></span><span>Total:<i>Tk.176</i></span></p>
                                </div>
                            </div>
                            <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                <div class="ps-cart-item__thumbnail"><a href="#"></a><img src="images/logo.png" alt=""></div>
                                <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="#">NUB16012452</a>
                                    <p><span>Quantity:<i>12</i></span><span>Total:<i>Tk.176</i></span></p>
                                </div>
                            </div>
                            <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                <div class="ps-cart-item__thumbnail"><a href="#"></a><img src="images/logo.png" alt=""></div>
                                <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="#">NUB16012452</a>
                                    <p><span>Quantity:<i>12</i></span><span>Total:<i>Tk.176</i></span></p>
                                </div>
                            </div>
                        </div>
                        <div class="ps-cart__total">
                            <p>Number of items:<span>36</span></p>
                            <p>Item Total:<span>Tk.528.00</span></p>
                        </div>
                        <div class="ps-cart__footer"><a class="ps-btn" href="#">Check out<i class="ps-icon-arrow-left"></i></a></div>
                    </div>
                </div>
                <div class="menu-toggle"><span></span></div>
            </div>
        </div>
    </nav>

    <div class="header-services">
        <div class="ps-services owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="7000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="false" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on">

            <% for (int i = 0; i < 3; i++) { %>

            <p class="ps-service"><i class="ps-icon-delivery"></i><strong>Free delivery</strong>: Get free standard delivery on every order with AuctionBD Store</p>

            <% }%>

        </div>
    </div>

</header>
