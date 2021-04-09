<%@page import="java.util.List"%>
<%@page import="com.farhana.model.ProductModel"%>
<%@page import="com.farhana.db.QueryHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <jsp:include page="./head/head.jsp"></jsp:include>

        <body class="ps-loading">
            <div class="header--sidebar"></div>

        <jsp:include page="./header/header.jsp"></jsp:include>

        <%
            String sellerName = (String) request.getParameter("name");
        %>

        <main class="ps-main">
            <div class="ps-container">
                <div style="margin-top: 20px; margin-left: 46%; margin-bottom: 20px">
                    <img src="images/avater.png" alt="" style="width: 100px;">
                </div>
            </div>

            <div style="height: 2px; background-color: #2b2b2b; margin-left: 20%; margin-right: 20% "></div>
            <h4 style="width: 100%; padding: 5px 0px; background-color: tomato; color: white; text-align: center" ><%= sellerName%></h4>
            <div style="height: 2px; background-color: #2b2b2b; margin-top: 10px; margin-bottom: 40px; margin-left: 20%; margin-right: 20%;"></div>

            <%
                QueryHelper queryHelper = new QueryHelper();
                List<ProductModel> productModels = queryHelper.getAllProducts();
            %>

            <div class="ps-product__columns" style="margin-left: 20%;margin-right: 20%">
                <%
                    for (ProductModel model : productModels) {
                        if (!model.getProductSeller().equals(sellerName)) {
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

            <jsp:include page="footer/footer.jsp"></jsp:include>

            </main>

        <jsp:include page="./footer/bottomJavascripts.jsp"></jsp:include>

    </body>
</html>
