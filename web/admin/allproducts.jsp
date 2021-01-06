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
                            <div class="card-header">
                                <h4>Full Table</h4>
                            </div>
                            <div class="card-block">
                                <p class="m-b-md">The first way to make a table responsive, is to wrap it with <code>&lt;div class="table-responsive"&gt;&lt;/div&gt;</code>. This way the table will be horizontally scrollable and all data will be accessible on
                                    smaller screens (&lt; 768px).</p>
                                <div class="table-responsive">
                                    <table class="table table-striped table-borderless table-vcenter">
                                        <thead>
                                            <tr>
                                                <th class="text-center w-10"><i class="ion-person"></i></th>
                                                <th>Name</th>
                                                <th style="width: 30%;">Email</th>
                                                <th style="width: 20%;">Position</th>
                                                <th class="text-center" style="width: 100px;">Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">
                                                    <img class="img-avatar img-avatar-48" src="assets/img/avatars/avatar2.jpg" alt="">
                                                </td>
                                                <td class="font-500">Julia Cole</td>
                                                <td>client1@example.com</td>
                                                <td>Accountant</td>
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Edit Client"><i class="ion-edit"></i></button>
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Remove Client"><i class="ion-close"></i></button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">
                                                    <img class="img-avatar img-avatar-48" src="assets/img/avatars/avatar1.jpg" alt="">
                                                </td>
                                                <td class="font-500">Frank Coleman</td>
                                                <td>client2@example.com</td>
                                                <td>Sales manager</td>
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Edit Client"><i class="ion-edit"></i></button>
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Remove Client"><i class="ion-close"></i></button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">
                                                    <img class="img-avatar img-avatar-48" src="assets/img/avatars/avatar8.jpg" alt="">
                                                </td>
                                                <td class="font-500">Denise Watson</td>
                                                <td>client3@example.com</td>
                                                <td>Designer</td>
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Edit Client"><i class="ion-edit"></i></button>
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Remove Client"><i class="ion-close"></i></button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">
                                                    <img class="img-avatar img-avatar-48" src="assets/img/avatars/avatar7.jpg" alt="">
                                                </td>
                                                <td class="font-500">Tiffany Kim</td>
                                                <td>client4@example.com</td>
                                                <td>Senior developer</td>
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Edit Client"><i class="ion-edit"></i></button>
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Remove Client"><i class="ion-close"></i></button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">
                                                    <img class="img-avatar img-avatar-48" src="assets/img/avatars/avatar4.jpg" alt="">
                                                </td>
                                                <td class="font-500">Emma Cooper</td>
                                                <td>client5@example.com</td>
                                                <td>Junior developer</td>
                                                <td class="text-center">
                                                    <div class="btn-group">
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Edit Client"><i class="ion-edit"></i></button>
                                                        <button class="btn btn-xs btn-default" type="button" data-toggle="tooltip" title="" data-original-title="Remove Client"><i class="ion-close"></i></button>
                                                    </div>
                                                </td>
                                            </tr>
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