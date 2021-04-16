<!DOCTYPE html>

<html class="app-ui">

    <jsp:include page="./includes/head.jsp"></jsp:include>

        <body class="app-ui layout-has-drawer layout-has-fixed-header">
            <div class="app-layout-canvas">
                <div class="app-layout-container">

                <jsp:include page="./includes/navigation_drawer.jsp" />
                <jsp:include page="./includes/header.jsp" />

                <main class="app-layout-content">
                    <div class="container-fluid p-y-md">
                        <h2 class="section-title">Blog Entry forms</h2>
                        <div class="card">
                            <div class="card-header">
                                <h4>Multiple Columns</h4>
                                <ul class="card-actions">
                                    <li>
                                        <button type="button" data-toggle="card-action" data-action="refresh_toggle"
                                                data-action-mode="demo"><i class="ion-refresh"></i></button>
                                    </li>
                                    <li>
                                        <button type="button" data-toggle="card-action" data-action="content_toggle"><i
                                                class="ion-chevron-down"></i></button>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-block">
                                <form class="form-horizontal m-t-sm" action="../BlogController" method="post">
                                    <div class="row">
                                        <div class="col-sm-7">
                                            <div class="form-group">
                                                <div class="col-xs-6">
                                                    <label for="mega-firstname">Blog Title</label>
                                                    <input class="form-control input-lg" type="text" id="mega-firstname"
                                                           name="jobTitle" placeholder="Please Enter Blog Title">
                                                </div>
                                                <div class="col-xs-6">
                                                    <label for="mega-lastname">Blog Type</label>
                                                    <input class="form-control input-lg" type="text" id="mega-lastname"
                                                           name="jobType" placeholder="Enter Blog Type">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-7">
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <label for="mega-bio">Blog Description</label>
                                                    <textarea class="form-control input-lg" id="mega-bio" name="jobDescription"
                                                              rows="22"
                                                              placeholder="Enter blog description"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group m-b-0">
                                        <div class="card">
                                            <div class="card-block card-block-full">
                                                <input style="margin-top: 10px;" type="file" id="img" name="img" accept="image/*">  
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group m-b-0">
                                        <div class="col-xs-12">
                                            <button class="btn btn-app" type="submit"><i class="ion-checkmark m-r-xs"></i>
                                                Post Blog</button>
                                        </div>
                                    </div>
                                </form> 
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