<%@page import="java.util.List"%>
<%@page import="com.farhana.model.ProductModel"%>
<%@page import="com.farhana.db.QueryHelper"%>
<!DOCTYPE html>

<html class="app-ui">

    <jsp:include page="./includes/head.jsp"></jsp:include>

        <body class="app-ui layout-has-drawer layout-has-fixed-header">
            <div class="app-layout-canvas">
                <div class="app-layout-container">

                <jsp:include page="./includes/navigation_drawer.jsp"/>
                <jsp:include page="./includes/header.jsp"/>

                <main class="app-layout-content">
                    <div class="container-fluid p-y-md">
                        <h2 class="section-title">Product Entry forms</h2>
                        <div class="card">
                            
                            <div class="card-block">
                                
                                <div class="table-responsive">
                                    <table class="table table-striped table-borderless table-vcenter">
                                        
                                        <thead style="background-color: #20c997; color: white">
                                            <tr>                                                  
                                                <th class="text-center w-10"><i class="ion-person"></i></th>
                                                <th>Title</th>
                                                <th>Seller</th>
                                                <th>Start Time</th>
                                                <th>End Time</th>
                                                <th>Category</th>
                                                <th>Stock</th>
                                                <th>Price</th>
                                                <th class="text-center" style="width: 100px;">Actions</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                            
                                            <% 
                                                
                                                QueryHelper helper = new QueryHelper();
                                                List<ProductModel> allProducts = helper.getAllProducts();
                                                
                                                for(ProductModel model : allProducts){ %>
                                            
                                            <tr>
                                                <td class="text-center">
                                                    <img class="img-avatar img-avatar-48" src="../auctionbd_eCommerce/images/product/ppe/<%=model.getProductImage()%>" alt="">
                                                </td>
                                                <td class="font-500"><%= model.getProductName() %></td>
                                                <td class="font-500">Shohag pk Pharmacy Limited</td>
                                                <td class="font-500">10:00 am</td>
                                                <td class="font-500">08:00 pm</td>
                                                <td class="font-500">Covid-19</td>
                                                <td class="font-500">1,00,000</td>
                                                <td class="font-500">Tk. 30</td>
                                               
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Edit Client"><i class="ion-edit"></i></button>
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Remove Client"><i class="ion-close"></i></button>
                                                    </div>
                                                </td>
                                            </tr>
                                            
                                            <%
                                            
                                            }
                                            %>
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- .card-block -->
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <div class="app-ui-mask-modal"></div>
        <jsp:include page="./includes/formscript.jsp"></jsp:include>
    </body>
</html>