<!DOCTYPE html>

<html class="app-ui">

    <jsp:include page="./includes/head.jsp"></jsp:include>

        <body class="app-ui layout-has-drawer layout-has-fixed-header">
            <div class="app-layout-canvas">
                <div class="app-layout-container">

                    <!-- Drawer -->
                <jsp:include page="./includes/navigation_drawer.jsp"></jsp:include>
                    <!-- End drawer -->

                    <!-- Header -->
                <jsp:include page="./includes/header.jsp"></jsp:include>
                    <!-- End header -->

                    <main class="app-layout-content">

                        <!--                    private String productName;
                            private String productPrice;
                            private String productStock;
                            private String productSeller;
                            private String productTime;
                            private String productCategory;
                            private String productImage;-->

                        <!-- Page Content -->
                        <div class="container-fluid p-y-md">

                            <!-- Registration forms -->
                            <h2 class="section-title">Product Entry forms</h2>
                            <div class="row">
                                <div class="col-lg-4">
                                    <!-- Bootstrap registration -->
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
                                            <form class="form-horizontal" action="base_forms_samples.html" method="post" onsubmit="return false;">
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
                                                        <input class="form-control" type="text" id="register1-password2" name="productTime" placeholder="Enter Duration in hour" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-xs-12" for="register1-password2">Product Category</label>
                                                    <div class="col-xs-12">
                                                        <select class="js-select2 form-control select2-hidden-accessible" id="example-select2" name="example-select2" style="width: 100%;" data-placeholder="Choose one.." tabindex="-1" aria-hidden="true">
                                                            <option></option><!-- Required for data-placeholder attribute to work with Chosen plugin -->
                                                            <option value="1">COVID-19</option>
                                                            <option value="2">IT AND GRAPHICS</option>
                                                            <option value="3">GARMENTS</option>
                                                            <option value="4">WRITTING</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="card">
                                                    <div class="card-block card-block-full">
                                                        <input type="file" id="img" name="img" accept="image/*">  
                                                    </div>
                                                    <!-- .card-block -->
                                                </div>

                                                <div class="form-group">
                                                    <div class="col-xs-12">
                                                        <button class="btn btn-app col-xs-12" type="submit">Upload</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- .card-block -->
                                    </div>
                                    <!-- .card -->
                                    <!-- End Bootstrap registration -->
                                </div>

                            </div>
                            <!-- .row -->
                        </div>

                    </main>

                </div>
                <!-- .app-layout-container -->
            </div>
            <!-- .app-layout-canvas -->

            <!-- Apps Modal -->
            <!-- Opens from the button in the header -->
            <div id="apps-modal" class="modal fade" tabindex="-1" role="dialog">
                <div class="modal-sm modal-dialog modal-dialog-top">
                    <div class="modal-content">
                        <!-- Apps card -->
                        <div class="card m-b-0">
                            <div class="card-header bg-app bg-inverse">
                                <h4>Apps</h4>
                                <ul class="card-actions">
                                    <li>
                                        <button data-dismiss="modal" type="button"><i class="ion-close"></i></button>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-block">
                                <div class="row text-center">
                                    <div class="col-xs-6">
                                        <a class="card card-block m-b-0 bg-app-secondary bg-inverse" href="index.html">
                                            <i class="ion-speedometer fa-4x"></i>
                                            <p>Admin</p>
                                        </a>
                                    </div>
                                    <div class="col-xs-6">
                                        <a class="card card-block m-b-0 bg-app-tertiary bg-inverse" href="frontend_home.html">
                                            <i class="ion-laptop fa-4x"></i>
                                            <p>Frontend</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- .card-block -->
                        </div>
                        <!-- End Apps card -->
                    </div>
                </div>
            </div>
            <!-- End Apps Modal -->

            <div class="app-ui-mask-modal"></div>
        <jsp:include page="./includes/formscript.jsp"></jsp:include>

    </body>

</html>