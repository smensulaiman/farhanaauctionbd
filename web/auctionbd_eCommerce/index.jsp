<%@page import="java.util.Arrays"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.farhana.model.ProductModel"%>
<%@page import="com.farhana.values.Constant"%>
<%@page import="com.farhana.manager.Manager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="head/head.jsp"></jsp:include>
        <body class="ps-loading">
            <div class="header--sidebar"></div>
        <jsp:include page="header/header.jsp"></jsp:include>

            <main class="ps-main">

                <div class="ps-banner">
                    <div class="rev_slider fullscreenbanner" id="home-banner">
                        <ul>
                            <li class="ps-banner" data-index="rs-2972" data-transition="random" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-rotate="0"><img class="rev-slidebg" src="images/slider/3.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" data-no-retina>
                                <div class="tp-caption ps-banner__header" id="layer-1" data-x="left" data-hoffset="['-60','15','15','15']" data-y="['middle','middle','middle','middle']" data-voffset="['-150','-120','-150','-170']" data-width="['none','none','none','400']" data-type="text" data-responsive_offset="on" data-frames="[{&quot;delay&quot;:1000,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
                                    <p>March 2020 <br> Nike Collection Auction</p>
                                </div>
                                <div class="tp-caption ps-banner__title" id="layer21" data-x="['left','left','left','left']" data-hoffset="['-60','15','15','15']" data-y="['middle','middle','middle','middle']" data-voffset="['-60','-40','-50','-70']" data-type="text" data-responsive_offset="on" data-textAlign="['center','center','center','center']" data-frames="[{&quot;delay&quot;:1200,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
                                    <p class="text-uppercase">Mirpur 10</p>
                                </div>
                                <div class="tp-caption ps-banner__description" id="layer211" data-x="['left','left','left','left']" data-hoffset="['-60','15','15','15']" data-y="['middle','middle','middle','middle']" data-voffset="['30','50','50','50']" data-type="text" data-responsive_offset="on" data-textAlign="['center','center','center','center']" data-frames="[{&quot;delay&quot;:1200,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
                                    <p>Nike Bangladesh wanted something that was going to<br>make cyclone to his hometown<br/>Dhaka City in  a big way.</p>
                                </div><a class="tp-caption ps-btn" id="layer31" href="#" data-x="['left','left','left','left']" data-hoffset="['-60','15','15','15']" data-y="['middle','middle','middle','middle']" data-voffset="['120','140','200','200']" data-type="text" data-responsive_offset="on" data-textAlign="['center','center','center','center']" data-frames="[{&quot;delay&quot;:1500,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">Purchase Now<i class="ps-icon-next"></i></a>
                            </li>
                            <li class="ps-banner ps-banner--white" data-index="rs-100" data-transition="random" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-rotate="0"><img class="rev-slidebg" src="images/slider/2.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" data-no-retina>
                                <div class="tp-caption ps-banner__header" id="layer20" data-x="left" data-hoffset="['-60','15','15','15']" data-y="['middle','middle','middle','middle']" data-voffset="['-150','-120','-150','-170']" data-width="['none','none','none','400']" data-type="text" data-responsive_offset="on" data-frames="[{&quot;delay&quot;:1000,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
                                    <p>BEST ITEM <br> THIS SUMMER</p>
                                </div>
                                <div class="tp-caption ps-banner__title" id="layer339" data-x="['left','left','left','left']" data-hoffset="['-60','15','15','15']" data-y="['middle','middle','middle','middle']" data-voffset="['-60','-40','-50','-70']" data-type="text" data-responsive_offset="on" data-textAlign="['center','center','center','center']" data-frames="[{&quot;delay&quot;:1200,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
                                    <p class="text-uppercase">Recovery</p>
                                </div>
                                <div class="tp-caption ps-banner__description" id="layer2-14" data-x="['left','left','left','left']" data-hoffset="['-60','15','15','15']" data-y="['middle','middle','middle','middle']" data-voffset="['30','50','50','50']" data-type="text" data-responsive_offset="on" data-textAlign="['center','center','center','center']" data-frames="[{&quot;delay&quot;:1200,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
                                    <p>Shopno wanted something that was going to rep his East Coast <br> roots and, more specifically, his hometown of <br/> Dhaka City in  a big way.</p>
                                </div><a class="tp-caption ps-btn" id="layer364" href="#" data-x="['left','left','left','left']" data-hoffset="['-60','15','15','15']" data-y="['middle','middle','middle','middle']" data-voffset="['120','140','200','200']" data-type="text" data-responsive_offset="on" data-textAlign="['center','center','center','center']" data-frames="[{&quot;delay&quot;:1500,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">Purchase Now<i class="ps-icon-next"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="ps-section--features-product ps-section masonry-root pt-100 pb-100">
                    <div class="ps-container">

                    <%
                        int ca = 0, cb = 0, cc = 0, cd = 0, ce = 0, cf = 0;
                        Manager manager = new Manager();
                        List<ProductModel> productModels = new ArrayList();
                        manager.getDemoProducts(productModels);
                        System.out.println("Total Products: " + productModels.size());
                        request.getSession().setAttribute("products", productModels);
                        for (ProductModel m : productModels) {
                            char firstLetter = Character.toLowerCase(m.getProductName().charAt(0));
                            switch (firstLetter) {
                                case 'k':
                                    ca++;
                                    break;
                                case 'b':
                                    cb++;
                                    break;
                                case 'c':
                                    cc++;
                                    break;
                                case 'd':
                                    cd++;
                                    break;
                                case 'e':
                                    ce++;
                                    break;
                                case 'f':
                                    cf++;
                                    break;

                            }
                        }
                    %>

                    <div class="ps-section__header mb-50">
                        <h3 class="ps-section__title" data-mask="features">- Covid 19 Trending Auctions</h3>
                        <ul class="ps-masonry__filter">
                            <li class="current"><a href="#" data-filter="*">All <sup><%= productModels.size()%></sup></a></li>
                            <li><a href="#" data-filter=".k">A <sup><%= ca%></sup></a></li>
                            <li><a href="#" data-filter=".b">B <sup><%= cb%></sup></a></li>
                            <li><a href="#" data-filter=".c">C <sup><%= cc%></sup></a></li>
                            <li><a href="#" data-filter=".d">D <sup><%= cd%></sup></a></li>
                            <li><a href="#" data-filter=".e">E <sup><%= ce%></sup></a></li>
                            <li><a href="#" data-filter=".f">F <sup><%= cf%></sup></a></li>
                        </ul>
                    </div>

                    <div class="ps-section__content pb-50">
                        <div class="masonry-wrapper" data-col-md="4" data-col-sm="2" data-col-xs="1" data-gap="30" data-radio="100%">
                            <div class="ps-masonry">
                                <div class="grid-sizer"></div>

                                <%
                                    for (ProductModel model : productModels) {
                                        System.out.println(model.toString());
                                %>

                                <div class="grid-item <%= Character.toLowerCase(model.getProductName().charAt(0))%>">
                                    <div class="grid-item__content-wrapper">
                                        <div class="ps-shoe mb-30">
                                            <div class="ps-shoe__thumbnail">
                                                <div class="ps-badge"><span>New</span></div>
                                                <div class="ps-badge ps-badge--sale ps-badge--2nd">
                                                    <span>20%</span>
                                                </div>
                                                <a class="ps-shoe__favorite" href="#"><i class="ps-icon-heart"></i></a>
                                                <img src="images/product/ppe/<%=model.getProductImage()%>" alt="">
                                                <a class="ps-shoe__overlay" href="product-detail.jsp?id=<%= model.getId()%>"></a>
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
                                </div>

                                <% } %>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ps-section--offer">
                <div class="ps-column"><a class="ps-offer" href="product-listing.html"><img src="images/banner/home-banner-1.png" alt=""></a></div>
                <div class="ps-column"><a class="ps-offer" href="product-listing.html"><img src="images/banner/home-banner-2.png" alt=""></a></div>
            </div>
            <div class="ps-section--sale-off ps-section pt-10 pb-40">
                <div class="ps-container">
                    <div class="ps-section__header mb-50">
                        <h3 class="ps-section__title" data-mask="Sale off">- Hot Deal Today</h3>
                    </div>
                    <div class="ps-section__content">
                        <div class="row">
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 ">
                                <div class="ps-hot-deal">
                                    <h3>Nike DUNK Max 95 OG</h3>
                                    <p class="ps-hot-deal__price">Only:  <span>£155</span></p>
                                    <ul class="ps-countdown" data-time="December 13, 2017 15:37:25">
                                        <li><span class="hours"></span><p>Hours</p></li>
                                        <li class="divider">:</li>
                                        <li><span class="minutes"></span><p>minutes</p></li>
                                        <li class="divider">:</li>
                                        <li><span class="seconds"></span><p>Seconds</p></li>
                                    </ul><a class="ps-btn" href="#">Order Today<i class="ps-icon-next"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 ">
                                <div class="ps-hotspot"><a class="point first active" href="javascript:;"><i class="fa fa-plus"></i>
                                        <div class="ps-hotspot__content">
                                            <p class="heading">JUMP TO HEADER</p>
                                            <p>Dynamic Fit Collar en la zona del tobillo que une la parte inferior de la pierna y el pie sin reducir la libertad de movimiento.</p>
                                        </div></a><a class="point second" href="javascript:;"><i class="fa fa-plus"></i>
                                        <div class="ps-hotspot__content">
                                            <p class="heading">JUMP TO HEADER</p>
                                            <p>Dynamic Fit Collar en la zona del tobillo que une la parte inferior de la pierna y el pie sin reducir la libertad de movimiento.</p>
                                        </div></a><a class="point third" href="javascript:;"><i class="fa fa-plus"></i>
                                        <div class="ps-hotspot__content">
                                            <p class="heading">JUMP TO HEADER</p>
                                            <p>Dynamic Fit Collar en la zona del tobillo que une la parte inferior de la pierna y el pie sin reducir la libertad de movimiento.</p>
                                        </div></a><img src="images/hot-deal.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="ps-section ps-section--top-sales ps-owl-root pt-10 pb-80">
                <div class="ps-container">
                    <div class="ps-section__header mb-50">
                        <div class="row">
                            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
                                <h3 class="ps-section__title" data-mask="BEST SALE">- Top Sales</h3>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                                <div class="ps-owl-actions"><a class="ps-prev" href="#"><i class="ps-icon-arrow-right"></i>Prev</a><a class="ps-next" href="#">Next<i class="ps-icon-arrow-left"></i></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="ps-section__content">
                        <div class="ps-owl--colection owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="30" data-owl-nav="false" data-owl-dots="false" data-owl-item="4" data-owl-item-xs="1" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-duration="1000" data-owl-mousedrag="on">
                            <%
                                if (productModels != null) {
                                    Collections.shuffle(productModels);
                                } else {
                                    return;
                                }

                                int i = 0;

                                for (ProductModel model : productModels) {
                                    if (i == 9) {
                                        break;
                                    }
                            %>

                            <div class="ps-shoes--carousel">
                                <div class="ps-shoe">
                                    <div class="ps-shoe__thumbnail">
                                        <a class="ps-shoe__favorite" href="#">
                                            <i class="ps-icon-heart"></i></a>
                                        <img src="images/product/ppe/<%=model.getProductImage()%>" alt="">
                                        <a class="ps-shoe__overlay" href="#"></a>
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
            </div>

            <div class="ps-section ps-section--top-sales ps-owl-root pt-10 pb-80">
                <div class="ps-container">
                    <div class="ps-section__header mb-50">
                        <div class="row">
                            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
                                <h3 class="ps-section__title" data-mask="BEST SALE">- Sponsored</h3>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                                <div class="ps-owl-actions"><a class="ps-prev" href="#"><i class="ps-icon-arrow-right"></i>Prev</a><a class="ps-next" href="#">Next<i class="ps-icon-arrow-left"></i></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="ps-section__content">
                        <div class="ps-owl--colection owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="30" data-owl-nav="false" data-owl-dots="false" data-owl-item="4" data-owl-item-xs="1" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-duration="1000" data-owl-mousedrag="on">
                            <%
                                if (productModels != null) {
                                    Collections.shuffle(productModels);
                                } else {
                                    return;
                                }

                                i = 0;

                                for (ProductModel model : productModels) {
                                    if (i == 9) {
                                        break;
                                    }
                            %>

                            <div class="ps-shoes--carousel">
                                <div class="ps-shoe">
                                    <div class="ps-shoe__thumbnail">
                                        <a class="ps-shoe__favorite" href="#">
                                            <i class="ps-icon-heart"></i></a>
                                        <img src="images/product/ppe/<%=model.getProductImage()%>" alt="">
                                        <a class="ps-shoe__overlay" href="#"></a>
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
            </div>


            <div class="ps-home-testimonial bg--parallax pb-40" data-background="images/background/parallax.jpg">
                <div class="container">
                    <div class="owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="false" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on" data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut">
                        <div class="ps-testimonial">
                            <div class="ps-testimonial__thumbnail"><img src="images/team/farhana.jpeg" alt=""><i class="fa fa-quote-left"></i></div>
                            <header>
                                <select class="ps-rating">
                                    <option value="1">1</option>
                                    <option value="1">2</option>
                                    <option value="1">3</option>
                                    <option value="1">4</option>
                                    <option value="5">5</option>
                                </select>
                                <p>Farhana - Director & Founder AuctionBD</p>
                            </header>
                            <footer>
                                <p>“AuctionBD is the first Bangladeshi Auction Site“</p>
                            </footer>
                        </div>
                        <div class="ps-testimonial">
                            <div class="ps-testimonial__thumbnail"><img src="images/team/nipun.jpeg" alt=""><i class="fa fa-quote-left"></i></div>
                            <header>
                                <select class="ps-rating">
                                    <option value="1">1</option>
                                    <option value="1">2</option>
                                    <option value="1">3</option>
                                    <option value="1">4</option>
                                    <option value="5">5</option>
                                </select>
                                <p>Nipun - CEO & Co-Founder AuctionBD</p>
                            </header>
                            <footer>
                                <p>“AuctionBD is the first Bangladeshi Auction Site“</p>
                            </footer>
                        </div>
                        <div class="ps-testimonial">
                            <div class="ps-testimonial__thumbnail"><img src="images/team/sharmin.jpeg" alt=""><i class="fa fa-quote-left"></i></div>
                            <header>
                                <select class="ps-rating">
                                    <option value="1">1</option>
                                    <option value="1">2</option>
                                    <option value="1">3</option>
                                    <option value="1">4</option>
                                    <option value="5">5</option>
                                </select>
                                <p>Sharmin - Head. HR & Co-Founder</p>
                            </header>
                            <footer>
                                <p>“AuctionBD is the first Bangladeshi Auction Site“</p>
                            </footer>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ps-section ps-home-blog pt-10 pb-80">
                <div class="ps-container">
                    <div class="ps-section__header mb-50">
                        <h2 class="ps-section__title" data-mask="News">Recent Blogs</h2>
                        <div class="ps-section__action"><a class="ps-morelink text-uppercase" href="#">View all post<i class="fa fa-long-arrow-right"></i></a></div>
                    </div>
                    <div class="ps-section__content">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                                <div class="ps-post">
                                    <div class="ps-post__thumbnail"><a class="ps-post__overlay" href="blog-detail.html"></a><img src="images/blog/faru2.jpg" alt=""></div>
                                    <div class="ps-post__content"><a class="ps-post__title" href="blog-detail.html">Blog Title One</a>
                                        <p class="ps-post__meta"><span>By:<a class="mr-5" href="blog.html">Farhana</a></span> -<span class="ml-5">Jun 10, 2017</span></p>
                                        <p>This is blog title one...</p><a class="ps-morelink" href="blog-detail.html">Read more<i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                                <div class="ps-post">
                                    <div class="ps-post__thumbnail"><a class="ps-post__overlay" href="blog-detail.html"></a><img src="images/blog/faru2.jpg" alt=""></div>
                                    <div class="ps-post__content"><a class="ps-post__title" href="blog-detail.html">Blog Title Two</a>
                                        <p class="ps-post__meta"><span>By:<a class="mr-5" href="blog.html">Farhana</a></span> -<span class="ml-5">Jun 10, 2017</span></p>
                                        <p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further…</p><a class="ps-morelink" href="blog-detail.html">Read more<i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                                <div class="ps-post">
                                    <div class="ps-post__thumbnail"><a class="ps-post__overlay" href="blog-detail.html"></a><img src="images/blog/faru2.jpg" alt=""></div>
                                    <div class="ps-post__content"><a class="ps-post__title" href="blog-detail.html">Blog Title Three</a>
                                        <p class="ps-post__meta"><span>By:<a class="mr-5" href="blog.html">Farhana</a></span> -<span class="ml-5">Jun 10, 2017</span></p>
                                        <p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further…</p><a class="ps-morelink" href="blog-detail.html">Read more<i class="fa fa-long-arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <jsp:include page="footer/footer.jsp"></jsp:include>

            </main>

        <jsp:include page="footer/bottomJavascripts.jsp"></jsp:include>
    </body>
</html>