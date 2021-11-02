<%-- 
    Document   : servlet-list
    Created on : Nov 2, 2021, 11:08:10 AM
    Author     : admin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from dreamguys.co.in/demo/doccure/admin/doctor-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Nov 2019 04:12:51 GMT -->

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Doccure - Service  Page</title>

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Feathericon CSS -->
        <link rel="stylesheet" href="assets/css/feathericon.min.css">

        <!-- Datatables CSS -->
        <link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">

        <!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--[if lt IE 9]>
                            <script src="assets/js/html5shiv.min.js"></script>
                            <script src="assets/js/respond.min.js"></script>
                    <![endif]-->
    </head>

    <body>

        <!-- Main Wrapper -->
        <div class="main-wrapper">

            <!-- Header -->
            <jsp:include page="index-header.jsp"/>
            <!-- /Header -->

            <!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title">
                                <span>Main</span>
                            </li>
                            <li>
                                <a href="index.jsp"><i class="fe fe-home"></i> <span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="profile.html"><i class="fe fe-user-plus"></i> <span>Profile</span></a>
                            </li>
                            <li>
                                <a href="appoint"><i class="fe fe-layout"></i> <span>Appointments</span></a>
                            </li>
                            <li>
                                <a href="doctor_list"><i class="fe fe-user-plus"></i> <span>Doctors</span></a>
                            </li>
                             <li class="active">
                                <a href="service-list"><i class="fe fe-star-o"></i> <span>Service</span></a>
                            </li>
                            <li>
                                <a href="patient_list"><i class="fe fe-user"></i> <span>Patients</span></a>
                            </li>
                            <li>
                                <a href="review"><i class="fe fe-star-o"></i> <span>Reviews</span></a>
                            </li>
                            <li>
                                <a href="transactions-list.html"><i class="fe fe-activity"></i> <span>Transactions</span></a>
                            </li>
                            <li class="submenu">
                                <a href="#"><i class="fe fe-document"></i> <span> Reports</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="invoice-report.html">Invoice Reports</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Sidebar -->

            <!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">

                    <!-- Page Header -->
                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-7 col-auto">
                                <h3 class="page-title">List of Services</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="javascript:(0);">Users</a></li>
                                    <li class="breadcrumb-item active">Service</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div style="display: flex">
                       <!-- Search Filter -->
                            <div class="card search-filter">
                                <div class="card-header">
                                    <h4 class="card-title mb-0">Search </h4>
                                    <div class="card-body">
                                        <form action="search-service?id=0" method="post">
                                            <div class="input-group">
                                                <input value="${tim}" name="txt" type="text" class="form-control" placeholder="Search By Title">
                                                <button style="width: 50px;border: 0px;background-color: white" type="submit"><i class="fa fa-search"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                               
                                <div class="card-body"> 
                                    <div class="filter-widget">
                                        <h4>Sort list</h4>
                                        <style>
                                            .text-muted:hover {
                                                color: aqua !important;
                                            }
                                        </style>
                                        <i class="fas fa-angle-up text-primary"></i><a href="search-service?id=4" class="text-muted"> Sort by highest to lowest Price</a><br>
                                        <i class="fas fa-angle-down text-primary"></i><a href="search-service?id=3" class="text-muted"> Sort by lowest to highest Price</a><br>
                                        
                                    </div>
                                    <form action="search-service?id=1" method="post">
                                        <div class="filter-widget">
                                            <h4>Select Specialist</h4>
                                            <c:forEach items="${listSpecialities}" var="o">
                                                <div>
                                                    <label class="custom_check">
                                                        <input type="checkbox" value="${o.name}" name="select_specialist">
                                                        <span class="checkmark"></span> ${o.name}
                                                    </label>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        
                                        <div class="btn-search">
                                            <button type="submit" class="btn btn-block">Search</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- /Search Filter -->
                        <!-- /Page Header -->
                        <div class="row" style="width: 80%">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body modal-content"> 
                                        <div class="table-responsive ">
                                            <table class="datatable table table-hover table-center mb-0 "> 
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Service Name</th>
                                                        <th>Speciality</th>
                                                        <th>Description</th>
                                                        <th>Price</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${listServices}" var="o">
                                                        
                                                        <tr>
                                                            <!-- >Service ID-->
                                                            <td>${o.service_id}</td>

                                                            <td> <!-- name-->
                                                                <h2 class="table-avatar">
                                                                    <a href="profile.html" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${o.image}" alt="Service Image"></a>
                                                                    <a href="profile.html">${o.title}</a>
                                                                </h2>
                                                            </td>
                                                            
                                                            <!-- >Speciality-->
                                                            <td>${o.type_id}</td>                                                              
                                                            <!-- >Description-->
                                                            <td>${o.description} </td>
                                                            <!-- >Phone -->
                                                            <td> ${o.price} </td>
                                                            <td class="text-right">
                                                                <div class="actions">
                                                                    <a class="btn btn-sm bg-success-light" data-toggle="modal" href="#edit_specialities_details${o.service_id}">
                                                                        <i class="fe fe-pencil"></i> Edit
                                                                    </a>
                                                                    <a data-toggle="modal" href="#delete_modal${o.service_id}" class="btn btn-sm bg-danger-light">
                                                                        <i class="fe fe-trash"></i> Delete
                                                                    </a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        
                                                       

                                                    <!-- Delete Modal -->
                                                    <div class="modal fade" id="delete_modal${o.service_id}" aria-hidden="true" role="dialog">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">

                                                                <div class="modal-body" style="text-align: center">
                                                                    <div class="form-content p-2">
                                                                         <h4 class="modal-title">Delete</h4>
                                                                        <p class="mb-4">Are you sure want to delete?</p>
                                                                        <a href="delete-service-list?id=${o.service_id}"><button type="button" class="btn btn-primary">Save</button></a>
                                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- /Delete Modal -->
                                                </c:forEach>
                                                   <div class="load-more text-center">
                                                    <ul class="pagination">
                                                        <li class="page-item ">
                                                            <a class="page-link" href="service-list?page=${page-1}">Previous</a>
                                                        </li>
                                                        <c:set var="page" value="${requestScope.page}"/>
                                                        <c:forEach begin="1" end="${pageNumber}" var="i">
                                                            <li class="page-item ${page==i?"active":""}"><a class="page-link"  href="service-list?page=${i}">${i}</a></li>
                                                            </c:forEach>

                                                        <li class="page-item">
                                                            <a class="page-link" href="service-list?page=${page+1}">Next</a>
                                                        </li>
                                                    </ul>	
                                                </div> 
                                                </tbody>
                                                
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>

                </div>

                <!-- Add Modal -->

                <!-- /ADD Modal -->


            </div>
            <!-- /Page Wrapper -->

        </div>
        <!-- /Main Wrapper -->

        <!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>

        <!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Slimscroll JS -->
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Datatables JS -->
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>

        <!-- Custom JS -->
        <script src="assets/js/script.js"></script>

    </body>

    <!-- Mirrored from dreamguys.co.in/demo/doccure/admin/doctor-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 30 Nov 2019 04:12:51 GMT -->

>>>>>>> Stashed changes
</html>