package murach.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import murach.business.User;

public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        // get parameters from the request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String birthday = request.getParameter("birthday");
        String email = request.getParameter("email");
        String heardFrom = request.getParameter("heardFrom");
        String wantsUpdates = request.getParameter("wantsUpdates");
        String contactVia = request.getParameter("contactVia");
        String likeThat = request.getParameter("likeThat");
        String action = request.getParameter("action");
      
        // process paramters
        if (heardFrom == null) {
            heardFrom = "NA";
        }
        if(likeThat == null){
            likeThat = "No";
        }else {
            likeThat = "Yes";
        }
        if (wantsUpdates == null) {
            wantsUpdates = "No";
        }
        else {
//            System.out.println(wantsUpdates);
//              Nếu mà checked 2 cái thì giá trị của wantsUpdates = 'on'
            wantsUpdates = "Yes";
        }
        
        // store data in User object
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setBirthday(birthday);
        user.setEmail(email);
        user.setlikeThat(likeThat);
        user.setHeardFrom(heardFrom);        
        user.setWantsUpdates(wantsUpdates);
        user.setContactVia(contactVia);

        // store User object in request
        request.setAttribute("user", user);

        // forward request to JSP
        String url = "/survey.jsp";
        if(action==null)
        {
            action="join";
        }
        if(action.equals("back"))
        {
            url = "/index.html";
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}