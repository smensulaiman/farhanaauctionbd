<%-- 
    Document   : navigation_drawer
    Created on : Dec 31, 2020, 4:06:15 PM
    Author     : farhana
--%>

<aside class="app-layout-drawer">

    <!-- Drawer scroll area -->
    <div class="app-layout-drawer-scroll">
        <!-- Drawer logo -->
        <div id="logo" class="drawer-header" style="margin: 20px 0px 0px 40px">
            <a href="index.html"><img class="img-responsive" src="assets/img/logo/logo.png" title="AuctionBD" alt="AppUI" /></a>
        </div>

        <!-- Drawer navigation -->
        <nav class="drawer-main">
            <ul class="nav nav-drawer">

                <li class="nav-item nav-drawer-header">Auction BD</li>

                <li class="nav-item active">
                    <a href="index.jsp"><i class="ion-ios-speedometer-outline"></i> Dashboard</a>
                </li>
                
                <li class="nav-item">
                    <a href="#"><i class="ion-ios-monitor-outline"></i> Add Category</a>
                </li>

                <li class="nav-item">
                    <a href="addproduct.jsp"><i class="ion-ios-monitor-outline"></i> Add Product</a>
                </li>
                
                <li class="nav-item">
                    <a href="allproducts.jsp"><i class="ion-ios-list-outline"></i> All Products</a>
                </li>
                
                <li class="nav-item">
                    <a href="addproduct.jsp"><i class="ion-ios-list-outline"></i> Auction Orders</a>
                </li>

                <li class="nav-item nav-drawer-header">Components</li>

            </ul>
        </nav>
        <!-- End drawer navigation -->

        <div class="drawer-footer">
            <p class="copyright">AuctionBD &copy;</p>
            <a href="#" target="_blank" rel="nofollow">Norther University Bangladesh</a>
        </div>
    </div>
    <!-- End drawer scroll area -->
</aside>
<!-- End drawer -->