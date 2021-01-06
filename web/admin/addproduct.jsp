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
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-header bg-green bg-inverse">
                                        <h4>Please enter product information</h4>
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
                                        <form class="form-horizontal" action = "../UploadServlet" method = "post"
                                              enctype = "multipart/form-data" onsubmit="return false;">
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-username">Product Title</label>
                                                <div class="col-xs-12">
                                                    <input class="form-control" type="text" id="register1-username" name="productTitle" placeholder="Enter Product Title" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-email">Product Price</label>
                                                <div class="col-xs-12">
                                                    <input class="form-control" type="text" id="register1-email" name="productPrice" placeholder="Enter Price" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-password">Product Stock</label>
                                                <div class="col-xs-12">
                                                    <input class="form-control" type="text" id="register1-password" name="productStock" placeholder="Enter Stock" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-password2">Product Seller</label>
                                                <div class="col-xs-12">
                                                    <input class="form-control" type="text" id="register1-password2" name="productSeller" placeholder="Enter Seller Name" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-password2">Product Duration</label>
                                                <div class="col-xs-12">
                                                    <select class="js-select2 form-control select2-hidden-accessible" id="example-select2" name="productTime" style="width: 100%;" data-placeholder="Choose one.." tabindex="-1" aria-hidden="true">
                                                        <option></option>
                                                        <option value="1">1 HOUR</option>
                                                        <option value="2">2 HOURS</option>
                                                        <option value="3">3 HOURS</option>
                                                        <option value="4">4 HOURS</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-xs-12" for="register1-password2">Product Category</label>
                                                <div class="col-xs-12">
                                                    <select class="js-select2 form-control select2-hidden-accessible" id="example-select2" name="example-select2" style="width: 100%;" data-placeholder="Choose one.." tabindex="-1" aria-hidden="true">
                                                        <option></option>
                                                        <option value="1">COVID-19</option>
                                                        <option value="2">IT AND GRAPHICS</option>
                                                        <option value="3">GARMENTS</option>
                                                        <option value="4">WRITTING</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="card">
                                                    <div class="card-block card-block-full">
                                                        <input style="margin-top: 10px;" type="file" id="img" name="img" accept="image/*">  
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <button class="btn btn-app col-xs-12" type="submit">Upload</button>
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