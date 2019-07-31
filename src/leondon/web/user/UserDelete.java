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

/**
 * @Autor:leondon
 * @Date:19-4-22上午10:46
 * @Version 1.0
 */
@WebServlet("/UserDelete")
public class UserDelete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username_userDelete");
        UserService userService = new UserService();
        try {
            boolean delete = userService.deleteUser(username);
            if(delete){
                response.getWriter().write("<script>alert('删除成功')</script>");
            }else {
                response.getWriter().write("<script>alert('删除失败')</script>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //  System.out.println("UserEdit-----------------------"+username);

        response.getWriter().write("thisis delete page1");
        System.out.println("this delete page1");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
        System.out.println("this delete page2");
    }
}
