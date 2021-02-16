<%@page import="com.farhana.model.OrderModel"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
                        <h2 class="section-title" style="color: tomato">All Orders</h2>
                        <div class="card">
                            
                            <div class="card-block">
                                
                                <div class="table-responsive">
                                    <table class="table table-striped table-borderless table-vcenter">
                                        
                                        <thead style="background-color: #0062cc; color: white">
                                            <tr>                                                  
                                                <th class="text-center w-10"><i class="ion-person"></i></th>
                                                <th>Product Name</th>
                                                <th>Buyer Name</th>
                                                <th>Seller Name</th>
                                                <th>Start Time</th>
                                                <th>End Time</th>
                                                <th>Price</th>
                                                <th class="text-center" style="width: 100px;">Actions</th>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                            
                                            <% 
                                                
                                                QueryHelper helper = new QueryHelper();
                                                SimpleDateFormat formater = new SimpleDateFormat("dd/M/yyyy hh:mm:ss");
                                                List<OrderModel> allOrders = helper.getAllOrders();
                                                
                                                for(OrderModel model : allOrders){     

                                            %> 
                                            
                                            <tr>
                                                <td class="text-center">
                                                    <img class="img-avatar img-avatar-48" src="../auctionbd_eCommerce/images/product/ppe/<%=model.getProductImage()%>" alt="">
                                                </td>
                                                <td class="font-500"><%= model.getProductName() %></td>
                                                <td class="font-500"><%= model.getName()%></td>
                                                <td class="font-500"><%= model.getProductSeller()%></td>
                                                <td class="font-500"><%= formater.format(new Date(Long.valueOf(model.getProductStartTime()))) %></td>
                                                <td class="font-500"><%= formater.format(new Date(Long.valueOf(model.getProductEndTime()))) %></td>
                                                <td class="font-500"><%= (double)(model.getProductPrice() * model.getAmount()) %></td>
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