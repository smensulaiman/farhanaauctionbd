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
                        <h2 class="section-title">Seller Entry forms</h2>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-header bg-green bg-inverse">
                                        <h4>Please enter seller information</h4>
                                        <ul class="card-actions">
                                            <li>
                                                <button type="button" data-toggle="card-action" data-action="refresh_toggle" data-action-mode="demo"><i class="ion-refresh"></i></button>
                                            </li>
                                            <li>
                                                <button type="button" data-toggle="card-action" data-action="content_toggle"></button>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="card-block">
                                        <form class="form-horizontal" action = "../SellerController" method = "post">
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-username">Seller Name</label>
                                                <div class="col-xs-12">
                                                    <input class="form-control" type="text" id="register1-username" name="sellerName" placeholder="Enter Seller Name" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-email">Seller Email</label>
                                                <div class="col-xs-12">
                                                    <input class="form-control" type="text" id="register1-email" name="sellerEmail" placeholder="Enter Email" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-password">Seller Address</label>
                                                <div class="col-xs-12">
                                                    <input class="form-control" type="text" id="register1-password" name="sellerAddress" placeholder="Enter Address" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-password2">Seller Phone</label>
                                                <div class="col-xs-12">
                                                    <input class="form-control" type="text" id="register1-password2" name="sellerPhone" placeholder="Enter Seller Phone" />
                                                </div>
                                            </div>                                          

                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <button class="btn btn-app col-xs-12" type="submit">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <div class="app-ui-mask-modal"></div>
        <jsp:include page="./includes/formscript.jsp"></jsp:include>
    </body>
</html>