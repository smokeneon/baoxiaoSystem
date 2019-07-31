package leondon.web.user;

import leondon.bean.User;
import leondon.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListServlet",urlPatterns = "/ListUser")
public class UserList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserService userService = new UserService();
        List<User> user = (List<User>) userService.userList();

        request.setAttribute("User",user);
        request.getRequestDispatcher("Person_management/user_management.jsp").forward(request,response);
    }
}
