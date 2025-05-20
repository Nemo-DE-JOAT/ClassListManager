/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
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
public class EditStudentServlet extends HttpServlet {

    @EJB StudentFacadeLocal sfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        Long studNum = Long.parseLong(request.getParameter("id"));
        Integer age = Integer.parseInt(request.getParameter("age"));
        //location to locate the jsp after checking the student
        String location = "editstudent_outcome.jsp";
        
        Student targetStudent = sfl.findStudent(studNum);
        
        //Check if the student is found
        if(targetStudent == null){
            location = "studentnotfound.jsp";
        }else {
            Student student = modifyStudent(targetStudent, age);
            sfl.editStudent(student);
        }
        RequestDispatcher disp = request.getRequestDispatcher(location);
        disp.forward(request, response);
    }

    private Student modifyStudent(Student targetStudent, Integer age) {
        targetStudent.setAge(age);
        return targetStudent;
    }
}