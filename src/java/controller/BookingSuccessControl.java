/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AppointmentDAO;
import dal.DoctorDAO;
import dal.PatientDAO;
import dal.ServicesDAO;
import dal.TimetableDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Appointment;
import model.Timetable;

/**
 *
 * @author admin
 */
public class BookingSuccessControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookingSuccessControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingSuccessControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int patient_id = Integer.parseInt(request.getParameter("patient_id"));
            int doctor_id = Integer.parseInt(request.getParameter("doctor_id"));
            String date = request.getParameter("date");
            int slot_id = Integer.parseInt(request.getParameter("slot_id"));
            String description = request.getParameter("description");

            PatientDAO db1 = new PatientDAO();
            DoctorDAO db2 = new DoctorDAO();
            TimetableDAO db3 = new TimetableDAO();
            
            Appointment a = new Appointment(db1.getPatientByPatientID(patient_id), db2.getDoctorByDoctorID(doctor_id), date, db3.getTimeBySlotID(slot_id), description, 1);
            
            AppointmentDAO db4 = new AppointmentDAO();
            db4.addNewAppointment(a);

            request.setAttribute("appointment", a);
            request.getRequestDispatcher("booking-success.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
