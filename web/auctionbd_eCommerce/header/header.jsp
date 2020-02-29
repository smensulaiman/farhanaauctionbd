<%@page import="com.farhana.values.Constant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header class="header">
            <div class="header__top">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
                            <p><%= Constant.ADDRESS_AND_NUMBER %></p>
                        </div>
                        <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
                            <div class="header__actions"><a href="#">Login & Regiser</a>
                                <div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">TK<i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#"><img src="images/flag/usa.svg" alt=""> BD</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Language<i class="fa fa-angle-down"></i></a>
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
                                <!--                        <ul class="sub-menu">
                                                          <li class="menu-item"><a href="index.html">Homepage #1</a></li>
                                                          <li class="menu-item"><a href="#">Homepage #2</a></li>
                                                          <li class="menu-item"><a href="#">Homepage #3</a></li>
                                                        </ul>-->
                            </li>
                            <li class="menu-item menu-item-has-children has-mega-menu"><a href="#">Men</a>
                                <div class="mega-menu">
                                    <div class="mega-wrap">
                                        <div class="mega-column">
                                            <ul class="mega-item mega-features">
<!--                                                <li><a href="product-listing.html">NEW RELEASES</a></li>
                                                <li><a href="product-listing.html">FEATURES SHOES</a></li>
                                                <li><a href="product-listing.html">BEST SELLERS</a></li>
                                                <li><a href="product-listing.html">NOW TRENDING</a></li>
                                                <li><a href="product-listing.html">SUMMER ESSENTIALS</a></li>
                                                <li><a href="product-listing.html">MOTHER'S DAY COLLECTION</a></li>
                                                <li><a href="product-listing.html">FAN GEAR</a></li>-->
                                            </ul>
                                        </div>
                                        <div class="mega-column">
                                            <h4 class="mega-heading">Shoes</h4>
                                            <ul class="mega-item">
                                                <li><a href="product-listing.html">All Shoes</a></li>
                                                <li><a href="product-listing.html">Running</a></li>
                                                <li><a href="product-listing.html">Training & Gym</a></li>
                                                <li><a href="product-listing.html">Basketball</a></li>
                                                <li><a href="product-listing.html">Football</a></li>
                                                <li><a href="product-listing.html">Soccer</a></li>
                                                <li><a href="product-listing.html">Baseball</a></li>
                                            </ul>
                                        </div>
                                        <div class="mega-column">
                                            <h4 class="mega-heading">CLOTHING</h4>
                                            <ul class="mega-item">
                                                <li><a href="product-listing.html">Compression & Nike Pro</a></li>
                                                <li><a href="product-listing.html">Tops & T-Shirts</a></li>
                                                <li><a href="product-listing.html">Polos</a></li>
                                                <li><a href="product-listing.html">Hoodies & Sweatshirts</a></li>
                                                <li><a href="product-listing.html">Jackets & Vests</a></li>
                                                <li><a href="product-listing.html">Pants & Tights</a></li>
                                                <li><a href="product-listing.html">Shorts</a></li>
                                            </ul>
                                        </div>
                                        <div class="mega-column">
                                            <h4 class="mega-heading">Accessories</h4>
                                            <ul class="mega-item">
                                                <li><a href="product-listing.html">Compression & Nike Pro</a></li>
                                                <li><a href="product-listing.html">Tops & T-Shirts</a></li>
                                                <li><a href="product-listing.html">Polos</a></li>
                                                <li><a href="product-listing.html">Hoodies & Sweatshirts</a></li>
                                                <li><a href="product-listing.html">Jackets & Vests</a></li>
                                                <li><a href="product-listing.html">Pants & Tights</a></li>
                                                <li><a href="product-listing.html">Shorts</a></li>
                                            </ul>
                                        </div>
                                        <div class="mega-column">
                                            <h4 class="mega-heading">BRAND</h4>
                                            <ul class="mega-item">
                                                <li><a href="product-listing.html">NIKE</a></li>
                                                <li><a href="product-listing.html">Adidas</a></li>
                                                <li><a href="product-listing.html">Dior</a></li>
                                                <li><a href="product-listing.html">B&G</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu-item"><a href="#">Women</a></li>
                            <li class="menu-item"><a href="#">Kids</a></li>
                            <li class="menu-item menu-item-has-children dropdown"><a href="#">News</a>
                                <ul class="sub-menu">
                                    <li class="menu-item menu-item-has-children dropdown"><a href="blog-grid.html">Blog-grid</a>
                                        <ul class="sub-menu">
                                            <li class="menu-item"><a href="blog-grid.html">Blog Grid 1</a></li>
                                            <li class="menu-item"><a href="blog-grid-2.html">Blog Grid 2</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item"><a href="blog-list.html">Blog List</a></li>
                                </ul>
                            </li>
                            <li class="menu-item menu-item-has-children dropdown"><a href="#">Contact</a>
                                <ul class="sub-menu">
                                    <li class="menu-item"><a href="contact-us.html">Contact Us #1</a></li>
                                    <li class="menu-item"><a href="contact-us.html">Contact Us #2</a></li>
                                </ul>
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
                                        <div class="ps-cart-item__thumbnail"><a href="product-detail.html"></a><img src="images/cart-preview/1.jpg" alt=""></div>
                                        <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="product-detail.html">Amazin’ Glazin’</a>
                                            <p><span>Quantity:<i>12</i></span><span>Total:<i>Tk.176</i></span></p>
                                        </div>
                                    </div>
                                    <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                        <div class="ps-cart-item__thumbnail"><a href="product-detail.html"></a><img src="images/cart-preview/2.jpg" alt=""></div>
                                        <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="product-detail.html">The Crusty Croissant</a>
                                            <p><span>Quantity:<i>12</i></span><span>Total:<i>Tk.176</i></span></p>
                                        </div>
                                    </div>
                                    <div class="ps-cart-item"><a class="ps-cart-item__close" href="#"></a>
                                        <div class="ps-cart-item__thumbnail"><a href="product-detail.html"></a><img src="images/cart-preview/3.jpg" alt=""></div>
                                        <div class="ps-cart-item__content"><a class="ps-cart-item__title" href="product-detail.html">The Rolling Pin</a>
                                            <p><span>Quantity:<i>12</i></span><span>Total:<i>Tk.176</i></span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="ps-cart__total">
                                    <p>Number of items:<span>36</span></p>
                                    <p>Item Total:<span>Tk.528.00</span></p>
                                </div>
                                <div class="ps-cart__footer"><a class="ps-btn" href="cart.html">Check out<i class="ps-icon-arrow-left"></i></a></div>
                            </div>
                        </div>
                        <div class="menu-toggle"><span></span></div>
                    </div>
                </div>
            </nav>
        </header>