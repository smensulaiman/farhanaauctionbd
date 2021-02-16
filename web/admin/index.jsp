<%-- 
    Document   : index
    Created on : Dec 28, 2020, 1:54:03 PM
    Author     : farhana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="app-ui">

    <jsp:include page="./includes/head.jsp"></jsp:include>

        <body class="app-ui layout-has-drawer layout-has-fixed-header">
            <div class="app-layout-canvas">
                <div class="app-layout-container">

                <jsp:include page="./includes/navigation_drawer.jsp"></jsp:include>

                <jsp:include page="./includes/header.jsp"></jsp:include>

                    <main class="app-layout-content">

                        <!-- Page Content -->
                        <div class="container-fluid p-y-md">
                            <!-- Stats -->
                            <div class="row">
                                <div class="col-sm-6 col-lg-3">
                                    <a class="card" href="javascript:void(0)">
                                        <div class="card-block clearfix">
                                            <div class="pull-right">
                                                <p class="h6 text-muted m-t-0 m-b-xs">Revenue</p>
                                                <p class="h3 text-blue m-t-sm m-b-0">Tk. 120.9k</p>
                                            </div>
                                            <div class="pull-left m-r">
                                                <span class="img-avatar img-avatar-48 bg-blue bg-inverse"><i class="ion-ios-bell fa-1-5x"></i></span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- .col-sm-6 -->

                                <div class="col-sm-6 col-lg-3">
                                    <a class="card bg-green bg-inverse" href="javascript:void(0)">
                                        <div class="card-block clearfix">
                                            <div class="pull-right">
                                                <p class="h6 text-muted m-t-0 m-b-xs">Total visitors</p>
                                                <p class="h3 m-t-sm m-b-0">920 000</p>
                                            </div>
                                            <div class="pull-left m-r">
                                                <span class="img-avatar img-avatar-48 bg-gray-light-o"><i class="ion-ios-people fa-1-5x"></i></span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- .col-sm-6 -->

                                <div class="col-sm-6 col-lg-3">
                                    <a class="card bg-blue bg-inverse" href="javascript:void(0)">
                                        <div class="card-block clearfix">
                                            <div class="pull-right">
                                                <p class="h6 text-muted m-t-0 m-b-xs">Revenue</p>
                                                <p class="h3 m-t-sm m-b-0">Tk. 340.5k</p>
                                            </div>
                                            <div class="pull-left m-r">
                                                <span class="img-avatar img-avatar-48 bg-gray-light-o"><i class="ion-ios-speedometer fa-1-5x"></i></span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- .col-sm-6 -->

                                <div class="col-sm-6 col-lg-3">
                                    <a class="card bg-purple bg-inverse" href="javascript:void(0)">
                                        <div class="card-block clearfix">
                                            <div class="pull-right">
                                                <p class="h6 text-muted m-t-0 m-b-xs">Messages</p>
                                                <p class="h3 m-t-sm m-b-0">3 new</p>
                                            </div>
                                            <div class="pull-left m-r">
                                                <span class="img-avatar img-avatar-48 bg-gray-light-o"><i class="ion-ios-email fa-1-5x"></i></span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <!-- .col-sm-6 -->
                            </div>
                            <!-- .row -->
                            <!-- End stats -->

                            <div class="row">
                                <!-- Company overview Chart -->
                                <div class="col-lg-8">
                                    <div class="card">
                                        <div class="card-header bg-blue bg-inverse">
                                            <h4>Company overview</h4>
                                            <ul class="card-actions">
                                                <li>
                                                    <span class="label bg-green">Stat<span class="hidden-xs">istic</span>s <i class="ion-connection-bars"></i></span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="card-block p-b-0 bg-blue bg-inverse">
                                            <!-- Chart.js Charts (initialized in js/pages/base_pages_dashboard.js), for more examples please check http://www.chartjs.org/docs/ -->
                                            <div style="height: 200px;"><canvas class="js-chartjs-lines1"></canvas></div>
                                        </div>
                                        <div class="card-block">
                                            <div class="row">
                                                <div class="col-xs-6 col-lg-3 b-r">
                                                    <p class="h6 small text-muted">Yearly change</p>
                                                    <p class="h3 m-t-0 m-b-md">+214.22</p>
                                                    <div class="progress progress-mini m-b-sm">
                                                        <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="76" aria-valuemin="0" aria-valuemax="100" style="width: 76%"></div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-lg-3 b-r visible-lg">
                                                    <p class="h6 small text-muted">Shares trade</p>
                                                    <p class="h3 m-t-0 m-b-md">Tk. 28.74M</p>
                                                    <div class="progress progress-mini m-b-sm">
                                                        <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="84" aria-valuemin="0" aria-valuemax="100" style="width: 84%"></div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-lg-3 b-r visible-lg">
                                                    <p class="h6 small text-muted">Yearly change</p>
                                                    <p class="h3 m-t-0 m-b-md">+74%</p>
                                                    <div class="progress progress-mini m-b-sm">
                                                        <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="74" aria-valuemin="0" aria-valuemax="100" style="width: 74%"></div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-lg-3">
                                                    <p class="h6 small text-muted">Total revenue</p>
                                                    <p class="h3 m-t-0 m-b-md">Tk. 74.23M</p>
                                                    <div class="progress progress-mini m-b-sm">
                                                        <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- .row -->
                                        </div>
                                        <!-- .card-block -->
                                    </div>
                                    <!-- .card -->
                                </div>
                                <!-- .col-lg-8 -->
                                <!-- End Company overview Chart -->

                                <!-- Weekly transactions Widget -->
                                <div class="col-lg-4">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4>Weekly transactions</h4>
                                            <ul class="card-actions">
                                                <li class="dropdown">
                                                    <button type="button" data-toggle="dropdown"><i class="ion-more"></i></button>
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-header">Profile</li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)"><span class="badge pull-right">3</span> News</a>
                                                        </li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)"><span class="badge pull-right">1</span> Messages</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li class="dropdown-header">More</li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)">Edit Profile..</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <!-- .card-actions -->
                                        </div>
                                        <!-- .card-header -->
                                        <div class="card-block p-b-0">
                                            <div style="height: 268px;"><canvas class="js-chartjs-lines2"></canvas></div>
                                        </div>
                                        <div class="card-block text-center">
                                            <span class="label bg-green m-r-xs">Statistics <i class="ion-connection-bars"></i></span> <small>for the <a href="javascript:void(0)">last year</a></small>
                                        </div>
                                    </div>
                                </div>
                                <!-- .col-lg-4 -->
                                <!-- End Weekly transactions Widget -->
                            </div>
                            <!-- .row -->

                            <div class="row">

                                <div class="col-lg-4">
                                    <!-- Weekly users Widget -->
                                    <div class="card">
                                        <div class="card-header">
                                            <h4>Weekly users</h4>
                                            <ul class="card-actions">
                                                <li class="dropdown">
                                                    <button type="button" data-toggle="dropdown"><i class="ion-more"></i></button>
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-header">Profile</li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)"><span class="badge pull-right">3</span> News</a>
                                                        </li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)"><span class="badge pull-right">1</span> Messages</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li class="dropdown-header">More</li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)">Edit Profile..</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="card-block">
                                            <div style="height: 238px;"><canvas class="js-chartjs-bars"></canvas></div>
                                        </div>
                                        <div class="card-block text-center">
                                            <span class="label bg-green m-r-xs">Statistics <i class="ion-connection-bars"></i></span> <small>for the <a href="javascript:void(0)">last year</a></small>
                                        </div>
                                    </div>
                                    <!-- .card -->
                                    <!-- End Weekly users Widget -->
                                </div>
                                <!-- .col-lg-4 -->

                                <div class="col-lg-8">
                                    <!-- Transactions history Widget -->
                                    <div class="card">
                                        <div class="card-header">
                                            <h4>Transactions history</h4>
                                            <ul class="card-actions">
                                                <li class="dropdown">
                                                    <button type="button" data-toggle="dropdown"><i class="ion-more"></i></button>
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-header">Profile</li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)"><span class="badge pull-right">3</span> News</a>
                                                        </li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)"><span class="badge pull-right">1</span> Messages</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li class="dropdown-header">More</li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)">Edit Profile..</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="card-block">
                                            <div style="height: 238px;"><canvas class="js-chartjs-lines3"></canvas></div>
                                        </div>
                                        <div class="card-block text-center">
                                            <span class="label bg-green m-r-xs">Statistics <i class="ion-connection-bars"></i></span> <small>for the <a href="javascript:void(0)">last year</a></small>
                                        </div>
                                    </div>
                                    <!-- .card -->
                                    <!-- End Transactions history Widget -->
                                </div>
                                <!-- .col-lg-8 -->
                            </div>
                            <!-- .row -->

                            <div class="row">
                                <div class="col-lg-8">
                                    <!-- Yearly summary widget -->
                                    <div class="card">
                                        <div class="card-header">
                                            <h4>Yearly summary</h4>
                                            <ul class="card-actions">
                                                <li class="dropdown">
                                                    <button type="button" data-toggle="dropdown"><i class="ion-more"></i></button>
                                                    <ul class="dropdown-menu dropdown-menu-right">
                                                        <li class="dropdown-header">Profile</li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)"><span class="badge pull-right">3</span> News</a>
                                                        </li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)"><span class="badge pull-right">1</span> Messages</a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li class="dropdown-header">More</li>
                                                        <li>
                                                            <a tabindex="-1" href="javascript:void(0)">Edit Profile..</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                            <!-- .card-actions -->
                                        </div>
                                        <!-- .card-header -->
                                        <div class="card-block">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <p class="h6 small text-muted">Yearly change</p>
                                                    <p class="h3 m-t-0">+214.22</p>
                                                    <!-- Chart.js Charts (initialized in js/pages/base_pages_dashboard.js), for more examples please check http://www.chartjs.org/docs/ -->
                                                    <div style="height: 120px;"><canvas class="js-chartjs-lines4"></canvas></div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <p class="h6 small text-muted">Shares trade</p>
                                                    <p class="h3 m-t-0">Tk. 28.74M</p>
                                                    <!-- Chart.js Charts (initialized in js/pages/base_pages_dashboard.js), for more examples please check http://www.chartjs.org/docs/ -->
                                                    <div style="height: 120px;"><canvas class="js-chartjs-lines5"></canvas></div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <p class="h6 small text-muted">Yearly change</p>
                                                    <p class="h3 m-t-0">+74%</p>
                                                    <!-- Chart.js Charts (initialized in js/pages/base_pages_dashboard.js), for more examples please check http://www.chartjs.org/docs/ -->
                                                    <div style="height: 120px;"><canvas class="js-chartjs-lines6"></canvas></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- .card-block -->
                                    </div>
                                    <!-- .card -->
                                    <!-- End Yearly summary widget -->
                                </div>
                                <!-- .col-lg-8 -->

                                <!-- Server load Widget -->
                                <div class="col-lg-4">
                                    <div class="card">
                                        <div class="card-header bg-purple bg-inverse">
                                            <h4>Server load</h4>
                                            <ul class="card-actions">
                                                <li>
                                                    <span class="js-flot-live-info"></span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="card-block bg-purple p-x-0 p-b-0">
                                            <!-- Live Chart Container -->
                                            <div class="js-flot-live" style="height: 207px;"></div>
                                        </div>
                                    </div>
                                    <!-- .card -->
                                </div>
                                <!-- End Server load Widget // .col-lg-4 -->
                            </div>
                            <!-- .row -->
                        </div>
                        <!-- .container-fluid -->
                        <!-- End Page Content -->

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

        <jsp:include page="./includes/scripts.jsp"></jsp:include>

    </body>

</html>
