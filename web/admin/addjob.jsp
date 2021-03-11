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
                    <h2 class="section-title">Job Entry forms</h2>
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
                            <form class="form-horizontal m-t-sm" action="../JobController" method="post">
                                <div class="row">
                                    <div class="col-sm-7">
                                        <div class="form-group">
                                            <div class="col-xs-6">
                                                <label for="mega-firstname">Job Title</label>
                                                <input class="form-control input-lg" type="text" id="mega-firstname"
                                                    name="jobTitle" placeholder="Please Enter Job Title">
                                            </div>
                                            <div class="col-xs-6">
                                                <label for="mega-lastname">Job Type</label>
                                                <input class="form-control input-lg" type="text" id="mega-lastname"
                                                    name="jobType" placeholder="Enter Job Type">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <label for="mega-lastname">Location</label>
                                                <input class="form-control input-lg" type="text" id="mega-username"
                                                    name="jobLocation" placeholder="Enter Location">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-7">
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <label for="mega-bio">Description</label>
                                                <textarea class="form-control input-lg" id="mega-bio" name="jobDescription"
                                                    rows="22"
                                                    placeholder="Enter job description"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <label for="mega-city">Salary</label>
                                                <input class="form-control input-lg" type="text" id="mega-city"
                                                    name="salary" placeholder="ex. 50,000 - 60,000">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <label for="mega-skills">Skills</label>
                                                <select class="form-control" id="mega-skills" name="skills"
                                                    size="7" multiple="">
                                                    <option value="1">HTML</option>
                                                    <option value="2">CSS</option>
                                                    <option value="3">JavaScript</option>
                                                    <option value="4">PHP</option>
                                                    <option value="5">Ruby</option>
                                                    <option value="6">Photoshop</option>
                                                    <option value="7">Illustrator</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-6">
                                                <label for="mega-age">Age</label>
                                                <input class="form-control input-lg" type="text" id="mega-age"
                                                    name="mega-age" placeholder="Enter age..">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-xs-12">Gender</label>
                                            <div class="col-xs-12">
                                                <label class="css-input css-radio css-radio-success m-r-sm">
                                                    <input type="radio" name="mega-gender-group"><span></span> Female
                                                </label>
                                                <label class="css-input css-radio css-radio-success">
                                                    <input type="radio" name="mega-gender-group"><span></span> Male
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group m-b-0">
                                    <div class="col-xs-12">
                                        <button class="btn btn-app" type="submit"><i class="ion-checkmark m-r-xs"></i>
                                            Post Job</button>
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