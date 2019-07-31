package leondon.web.user;

import leondon.bean.User;
import leondon.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;

/**
 * @Autor:leondon
 * @Date:19-4-15下午12:42
 * @Version 1.0
 */
@WebServlet(name = "AddServlet",urlPatterns = "/AddUser")
public class UserAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        //获取前台参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String user_num = request.getParameter("user_num");
        String user_name = request.getParameter("user_name");
        String work_city = request.getParameter("work_city");
        String office_num = request.getParameter("office_num");
        String department_num = request.getParameter("department_num");
        String director_name = request.getParameter("director_name");
        String process_num = request.getParameter("process_num");
        String user_telephone = request.getParameter("user_telephone");
        String alipay = request.getParameter("alipay");
        String[] role = request.getParameterValues("role");
        String role1 = Arrays.toString(role);
        role1=role1.substring(1,role1.length()-1);
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setUser_name(user_name);
        user.setUser_num(user_num);
        user.setWork_city(work_city);
        user.setOffice_num(office_num);
        user.setDepartment_num(department_num);
        user.setDirector_name(director_name);
        user.setProcess_num(process_num);
        user.setRole(role1);
        user.setUser_telephone(user_telephone);
        user.setAlipay(alipay);

        UserService userService = new UserService();
        int userAdd = 0;
        try {
            userAdd = userService.AddUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (userAdd>0){
            request.getRequestDispatcher("/ListUser").forward(request,response);
        }else {
            response.getWriter().write("add error");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
