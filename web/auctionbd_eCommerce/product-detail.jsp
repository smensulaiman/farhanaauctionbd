<%-- 
    Document   : product-detail
    Created on : Feb 5, 2020, 8:09:27 PM
    Author     : Farhana
--%>

<%@page import="com.farhana.model.BidsModel"%>
<%@page import="com.farhana.db.QueryHelper"%>
<%@page import="java.util.List"%>
<%@page import="com.farhana.model.ProductModel"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <%
        List<ProductModel> productModels = (List<ProductModel>) request.getSession().getAttribute("products");
        ProductModel model = null;
        for (ProductModel pModel : productModels) {
            if (pModel.getId() == Integer.parseInt(request.getParameter("id"))) {
                model = pModel;
                break;
            }
        }
        String currentUser = (String) request.getSession().getAttribute("username");
        boolean isWinner = false;
    %>

    <jsp:include page="head/head.jsp"></jsp:include>
        <body class="ps-loading">
            <div class="header--sidebar"></div>
        <jsp:include page="header/header.jsp"></jsp:include>

            <div class="header-services" style="margin-top: 5px;">
                <div id="countdown" style="text-align: center;"></div>
            </div>

            <main class="ps-main">
                <div class="test">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 ">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ps-product--detail pt-60">
                    <div class="ps-container">
                        <div class="row">
                            <div class="col-lg-10 col-md-12 col-lg-offset-1">
                                <div class="ps-product__thumbnail">
                                    <div class="ps-product__image">
                                        <div class="item">
                                            <img class="zoom" src="images/product/ppe/<%= model.getProductImageOne()%>" alt="" data-zoom-image="images/product/ppe/<%= model.getProductImageOne()%>">
                                    </div>
                                </div>
                            </div>
                            <div class="ps-product__thumbnail--mobile">
                                <div class="ps-product__main-img"><img src="images/product/ppe/<%= model.getProductImageOne()%>.jpg" alt=""></div>
                                <div class="ps-product__preview owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="20" data-owl-nav="true" data-owl-dots="false" data-owl-item="3" data-owl-item-xs="3" data-owl-item-sm="3" data-owl-item-md="3" data-owl-item-lg="3" data-owl-duration="1000" data-owl-mousedrag="on"><img src="images/shoe-detail/1.jpg" alt=""><img src="images/shoe-detail/2.jpg" alt=""><img src="images/shoe-detail/3.jpg" alt=""></div>
                            </div>
                            <div class="ps-product__info">
                                <div class="ps-product__rating">
                                    <h4 id="auction_status" style="color: #27ae60 ">Auction is running</h4>
                                </div>
                                <h1><%= model.getProductName()%></h1>
                                <p class="ps-product__category"><a href="sellerProfile.jsp?name=<%= model.getProductSeller()%>"> <%= model.getProductSeller()%></a>,<a href="#"> MASK</a>
                                <h3 class="ps-product__price"><%= "Taka " + model.getProductPrice()%></h3>
                                <%= model.getProductStock()%> pcs
                                <div class="ps-product__block ps-product__quickview">
                                    <h4>QUICK REVIEW</h4>
                                    <p>Short description</p>
                                </div>
                                <form id="formBid" action="../BidController" method="POST">
                                    <input type="hidden" name = "id" value="<%= model.getId()%>"/>
                                    <div class="ps-product__block ps-product__size">
                                        <h4>CHOOSE OFFER</h4>
                                        <select class="ps-select selectpicker" name="item">
                                            <option value="1">Select Price</option>
                                            <option value="1000">+1,000</option>
                                            <option value="5000">+5,000</option>
                                            <option value="10000">+10,000</option>
                                            <option value="20000">+20,000</option>
                                            <option value="50000">+50,000</option>
                                            <option value="100000">+1,00,000</option>
                                        </select>
                                    </div>
                                    <div class="form-group" style="width: 220px;">
                                        <label for="exampleInputPassword1">Custom Input</label>
                                        <input type="text" class="form-control" name="custom" value="0" placeholder="Enter Amount">
                                    </div>
                                    <button id="btnPlaceBid" class="ps-btn mb-10">Place Bid<i class="ps-icon-next"></i>
                                    </button>
                                </form>
                                <a id="btnCheckout" class="ps-btn mb-10" style="visibility: hidden" href="cart.jsp?productName=<%= model.getProductName()%>&productImage=<%= model.getProductImageOne()%>&productPrice=<%= model.getProductPrice()%>&productStock=<%= model.getProductStock()%>&productSeller=<%= model.getProductSeller()%>">GOTO CHECKOUT</a>
                            </div>
                            <div class="clearfix"></div>
                            <div class="ps-product__content mt-50">
                                <ul class="tab-list" role="tablist">
                                    <li class="active"><a href="#tab_01" aria-controls="tab_01" role="tab" data-toggle="tab">Overview</a></li>
                                    <li><a href="#tab_02" aria-controls="tab_02" role="tab" data-toggle="tab">Bids</a></li>
                                    <li><a href="#tab_03" aria-controls="tab_03" role="tab" data-toggle="tab">PRODUCT TAG</a></li>
                                    <li><a href="#tab_04" aria-controls="tab_04" role="tab" data-toggle="tab">ADDITIONAL</a></li>
                                </ul>
                            </div>
                            <div class="tab-content mb-60">
                                <div class="tab-pane" role="tabpanel" id="tab_02">
                                    <p class="mb-20">bid for <strong>Product Name</strong></p>
                                    <%
                                        QueryHelper helper = new QueryHelper();
                                        List<BidsModel> bids = helper.getBids(model.getId());
                                        if (bids != null) {
                                            int index = 0;
                                            for (BidsModel b : bids) {
                                    %>
                                    <div class="ps-review">
                                        <div class="ps-review__thumbnail"><img src="images/user/1.jpg" alt=""></div>
                                        <div class="ps-review__content">
                                            <header>
                                                <p>By<a href=""> <%= b.getName()%> </a> - <%= b.getDate()%></p>
                                                <% if (index == 0) {
                                                    System.out.println("current user : "+b.getName()+" "+currentUser);
                                                        if (currentUser.trim().equals(b.getName().trim())) {
                                                            isWinner = true;
                                                            System.out.println("winner found");
                                                        }
                                                %>
                                                <span style="background-color: tomato; color: white; padding: 0px 10px;"> Top Bid </span>
                                                <% index++;
                                                    }%>
                                            </header>
                                            <p>bids <%= b.getAmount()%> Taka</p>
                                        </div>
                                    </div>
                                    <%
                                        }
                                    } else {
                                    %>
                                    <div class="ps-review">
                                    </div>
                                    <% } %>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <div class="ps-section ps-section--top-sales ps-owl-root pt-40 pb-80">
                <div class="ps-container">
                    <div class="ps-section__header mb-50">
                        <div class="row">
                            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
                                <h3 class="ps-section__title" data-mask="Related item">- YOU MIGHT ALSO LIKE</h3>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
                                <div class="ps-owl-actions"><a class="ps-prev" href="#"><i class="ps-icon-arrow-right"></i>Prev</a><a class="ps-next" href="#">Next<i class="ps-icon-arrow-left"></i></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="ps-section__content">
                        <div class="ps-owl--colection owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="30" data-owl-nav="false" data-owl-dots="false" data-owl-item="4" data-owl-item-xs="1" data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-duration="1000" data-owl-mousedrag="on">

                            <%
                                for (ProductModel m : productModels) {
                            %>

                            <div class="grid-item kids">
                                <div class="grid-item__content-wrapper">
                                    <div class="ps-shoe mb-30">
                                        <div class="ps-shoe__thumbnail">
                                            <div class="ps-badge"><span>New</span></div>
                                            <div class="ps-badge ps-badge--sale ps-badge--2nd">
                                                <span>20%</span>
                                            </div>
                                            <a class="ps-shoe__favorite" href="#"><i class="ps-icon-heart"></i></a>
                                            <img src="images/product/ppe/<%=m.getProductImageOne()%>" alt="">
                                            <a class="ps-shoe__overlay" href="product-detail.jsp?id=<%=productModels.indexOf(m)%>"></a>
                                        </div>
                                        <div class="ps-shoe__content">
                                            <div class="ps-shoe__variants">
                                                <div class="ps-shoe__variant normal">

                                                    <% for (int j = 0; j < 4; j++) {%>

                                                    <img src="images/product/ppe/<%= m.getProductImageOne()%>" alt="">

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
                                            <div class="ps-shoe__detail"><a class="ps-shoe__name" href="#"><%= m.getProductName()%></a>
                                                <p class="ps-shoe__categories">
                                                    <a href="#"><%= m.getProductCategoryID()%></a>
                                                </p><span class="ps-shoe__price">Tk. <%= m.getProductPrice()%></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <% }%>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="footer/footer.jsp"></jsp:include>

            </main>

        <jsp:include page="footer/bottomJavascripts.jsp"></jsp:include>
            <script src="js/jquery.time-to.js"></script> 
            <script>

            <%
                if (System.currentTimeMillis() < Long.parseLong(model.getProductEndTime())) {
            %>

                $('#countdown').timeTo({
                    seconds: <%= (Long.parseLong(model.getProductEndTime()) - System.currentTimeMillis()) / 1000%>,
                    theme: "black",
                    displayCaptions: true,
                    fontSize: 48,
                    captionSize: 14
                }, () => {
                    document.getElementById("btnPlaceBid").style.visibility = 'hidden';
                    document.getElementById("auction_status").innerHTML = 'This auction is finished';
                    document.getElementById("auction_status").style.color = 'tomato';
                    if (<%= isWinner%>) {
                        //document.getElementById("formBid").style.visibility = 'visible';
                        document.getElementById("btnCheckout").style.visibility = 'visible';
                    }
                });

            <%
            } else {
            %>
                document.getElementById("btnPlaceBid").style.visibility = 'hidden';
                document.getElementById("formBid").style.visibility = 'hidden';
                document.getElementById("auction_status").innerHTML = 'This auction is finished';
                document.getElementById("auction_status").style.color = 'tomato';
                if (<%= isWinner%>) {
                    //document.getElementById("formBid").style.visibility = 'visible';
                    document.getElementById("btnCheckout").style.visibility = 'visible';
                }

            <% }%>


        </script>

    </body>
</html>
