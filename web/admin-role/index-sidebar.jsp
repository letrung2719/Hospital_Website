<%-- 
    Document   : index-sidebar
    Created on : Oct 14, 2021, 3:55:38 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Sidebar-->
<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title">
                    <span>Main</span>
                </li>
                <c:set var="context" value="<%=request.getContextPath()%>"></c:set>
                <c:set var="path" value="<%=request.getServletPath()%>"></c:set>
                <li class="${path == "/admin-role/index.jsp" ? "active" : ""}">
                    <a href="index.jsp"><i class="fe fe-home"></i> <span>Dashboard</span></a>
                </li>
                <li class="${path == "/admin-role/profile.jsp" ? "active" : ""}">
                    <a href="profile.jsp"><i class="fe fe-user-plus"></i> <span>Profile</span></a>
                </li>
                <li class="${path == "/admin-role/appointment.jsp" ? "active" : ""}">
                    <a href="appoint"><i class="fe fe-layout"></i> <span>Appointments</span></a>
                </li>
                <li class="${path == "/admin-role/reservation.jsp" ? "active" : ""}">
                    <a href="reservation"><i class="fe fe-layout"></i> <span>Reservation</span></a>
                </li>
                <li class="${path == "/admin-role/doctor-list.jsp" ? "active" : ""}">
                    <a href="doctor_list"><i class="fe fe-user-plus"></i> <span>Doctors</span></a>
                </li>
                <li class="${path == "/admin-role/patient-list.jsp" ? "active" : ""}">
                    <a href="patient_list"><i class="fe fe-user"></i> <span>Patients</span></a>
                </li>
                <li class="${path == "/admin-role/service-list.jsp" ? "active" : ""}">
                    <a href="service_list"><i class="fe fe-user"></i> <span>Services</span></a>
                </li>
                <li class="${path == "/admin-role/review.jsp" ? "active" : ""} ${path == "/admin-role/service-feedback.jsp" ? "active" : ""}">
                    <a href="review"><i class="fe fe-star-o"></i> <span>Service Reviews</span></a>
                </li>
                <li class="${path == "/admin-role/blog-managerment.jsp" ? "active" : ""}">
                    <a href="blog"><i class="fe fe-document"></i> <span>Blog</span></a>
                </li>
                <li class="submenu ${path == "/admin-role/invoice-report.jsp" ? "active" : ""}" >
                    <a href="#"><i class="fe fe-document"></i> <span> Reports</span> <span class="menu-arrow"></span></a>
                    <ul style="display: none;">
                        <li><a href="invoice-report.jsp">Invoice Reports</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--Sidebar-->
