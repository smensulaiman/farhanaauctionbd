<%@page import="com.farhana.values.Constant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header class="header">
    <div class="header__top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
                    <p><%= Constant.ADDRESS_AND_NUMBER%></p>
                </div>
                <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
                    <div class="header__actions"><a href="registration/login.jsp">Login & Regiser</a>
                        <div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">TK<i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><img src="images/flag/bd.svg" alt=""> BD</a></li>
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
                                    <h4 class="mega-heading">Shoes</h4>
                                    <ul class="mega-item">
                                        <li><a href="#">All Shoes</a></li>
                                        <li><a href="#">Running</a></li>
                                        <li><a href="#">Training & Gym</a></li>
                                        <li><a href="#">Basketball</a></li>
                                        <li><a href="#">Football</a></li>
                                        <li><a href="#">Soccer</a></li>
                                        <li><a href="#">Baseball</a></li>
                                    </ul>
                                </div>
                                <div class="mega-column">
                                    <h4 class="mega-heading">CLOTHING</h4>
                                    <ul class="mega-item">
                                        <li><a href="#">Compression & Nike Pro</a></li>
                                        <li><a href="#">Tops & T-Shirts</a></li>
                                        <li><a href="#">Polos</a></li>
                                        <li><a href="#">Hoodies & Sweatshirts</a></li>
                                        <li><a href="#">Jackets & Vests</a></li>
                                        <li><a href="#">Pants & Tights</a></li>
                                        <li><a href="#">Shorts</a></li>
                                    </ul>
                                </div>
                                <div class="mega-column">
                                    <h4 class="mega-heading">Accessories</h4>
                                    <ul class="mega-item">
                                        <li><a href="#">Compression & Nike Pro</a></li>
                                        <li><a href="#">Tops & T-Shirts</a></li>
                                        <li><a href="#">Polos</a></li>
                                        <li><a href="#">Hoodies & Sweatshirts</a></li>
                                        <li><a href="#">Jackets & Vests</a></li>
                                        <li><a href="#">Pants & Tights</a></li>
                                        <li><a href="#">Shorts</a></li>
                                    </ul>
                                </div>
                                <div class="mega-column">
                                    <h4 class="mega-heading">BRAND</h4>
                                    <ul class="mega-item">
                                        <li><a href="#">NIKE</a></li>
                                        <li><a href="#">Adidas</a></li>
                                        <li><a href="#">Dior</a></li>
                                        <li><a href="#">B&G</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="menu-item"><a href="#">TOP 10 AUCTIONS</a></li>
                    <li class="menu-item"><a href="#">COMPARE</a></li>
                    <li class="menu-item menu-item-has-children dropdown"><a href="#">Blog</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="blog-list.jsp">Blog List</a></li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-has-children dropdown"><a href="#">Contact</a>
                        <ul class="sub-menu">
                            <!--                            <li class="menu-item"><a href="contact-us.html">Contact Us</a></li>-->
                            <li class="menu-item"><a href="#">Contact Us</a></li>

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
</header>