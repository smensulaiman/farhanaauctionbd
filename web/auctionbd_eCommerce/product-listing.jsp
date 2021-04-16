<%@page import="com.farhana.model.OrderModel"%>
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
                <div class="ps-products-wrap pt-80 pb-80 pl-80 pr-80">
                    <div class="ps-products" data-mh="product-listing">

                    <%
                        String category = (String) request.getParameter("category");
                        QueryHelper queryHelper = new QueryHelper();
                        List<ProductModel> productModels = queryHelper.getAllProducts();
                    %>

                    <div class="ps-product__columns">
                        <%
                            
                            int index = 0;
                            
                            for (ProductModel model : productModels) {
                                if (Integer.parseInt(category) == 1000) {
                                      List<OrderModel> orderModels = queryHelper.getAllOrders();
                                      if(orderModels.size() <9){
                                          break;
                                      }else{
                                          if(index == 10){
                                              break;
                                          }
                                          for(OrderModel om : orderModels){
                                              if(om.getProductCategoryID() == model.getProductCategoryID()){
                                                  index++;
                                                  break;
                                              }
                                          }
                                      }
                                } else {
                                    if (model.getProductCategoryID() != Integer.parseInt(category)) {
                                        continue;
                                    }
                                }
                        %>
                        <div class="ps-product__column">
                            <div class="ps-shoe mb-30">
                                <div class="ps-shoe__thumbnail">
                                    <a class="ps-shoe__favorite" href="#">
                                        <i class="ps-icon-heart"></i>
                                    </a>
                                    <img src="images/product/ppe/<%=model.getProductImageOne()%>" alt="">
                                    <a class="ps-shoe__overlay" href="product-detail.jsp?id=<%=productModels.indexOf(model)%>""></a>
                                </div>
                                <div class="ps-shoe__content">
                                    <div class="ps-shoe__variants">
                                        <div class="ps-shoe__variant normal">

                                            <% for (int j = 0; j < 4; j++) {%>

                                            <img src="images/product/ppe/<%=model.getProductImageOne()%>" alt="">

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
            </div>

            <jsp:include page="footer/footer.jsp"></jsp:include>

            </main>

        <jsp:include page="footer/bottomJavascripts.jsp"></jsp:include>

    </body>
</html>
