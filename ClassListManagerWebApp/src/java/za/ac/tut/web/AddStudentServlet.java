/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author hp
 */
public class AddStudentServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        Long studNum = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        Integer age = Integer.parseInt(request.getParameter("age"));
        
        //Create a Student
        Student student = generateStudent(studNum,name,age);
        sfl.createStudent(student);
        
        //persist the student
        RequestDispatcher disp = request.getRequestDispatcher("addstudent_outcome.jsp");
        disp.forward(request, response);
    }

    private Student generateStudent(Long studNum, String name, Integer age) {
        //creating a student
        Student student = new Student();
        student.setId(studNum);
        student.setName(name);
        student.setAge(age);
        student.setCreationDate(new Date());
        return student;
    }
}
