<%@page import="com.farhana.model.JobsModel"%>
<%@page import="java.util.List"%>
<%@page import="com.farhana.db.QueryHelper"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="head/head.jsp"></jsp:include>

        <body class="ps-loading">
            <div class="header--sidebar"></div>

        <jsp:include page="header/header.jsp"></jsp:include>

            <main class="ps-main">
                <div class="ps-blog-grid pt-80 pb-80">
                    <div class="ps-container">
                        <div class="row">

                        <%
                            List<JobsModel> jobsModels = new QueryHelper().getAllJobs();
                            for (JobsModel model : jobsModels) {
                        %>

                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                            <div class="ps-post mb-30">
                                <div class="ps-post__thumbnail">
                                    <a class="ps-post__overlay" href="job-detail.jsp?title=<%= model.getJobTitle()%>&poster=<%= model.getPoser()%>&description=<%= model.getJobDescription()%>&salary=<%= model.getSalary()%>&type=<%= model.getJobType()%>&skill=<%= model.getSkills()%>"></a>
                                    <img src="images/jobs/1.jpg" alt="">
                                </div>
                                <div class="ps-post__content">
                                    <a class="ps-post__title" href="job-detail.jsp?title=<%= model.getJobTitle()%>&poster=<%= model.getPoser()%>&description=<%= model.getJobDescription()%>&salary=<%= model.getSalary()%>&type=<%= model.getJobType()%>&skill=<%= model.getSkills()%>"><%= model.getJobTitle()%></a>
                                    <p class="ps-post__meta"><span>By:<a class="mr-5" href="#"><%= model.getPoser()%></a></span> -<span class="ml-5"><%= model.getJobTitle()%></span></p>
                                    <p><%= model.getJobDescription()%></p><a class="ps-morelink" href="blog-detail.jsp?title=<%= model.getJobTitle()%>&poster=<%= model.getPoser()%>&description=<%= model.getJobDescription()%>&salary=<%= model.getSalary()%>&type=<%= model.getJobType()%>&skill=<%= model.getSkills()%>">Read more<i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>

                        <%
                            }
                        %>

                    </div>
                    <div class="mt-30">
                        <div class="ps-pagination">
                            <ul class="pagination">
                                <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="footer/footer.jsp"></jsp:include>
            </main>
        <jsp:include page="footer/bottomJavascripts.jsp"></jsp:include>
    </body>
</html>