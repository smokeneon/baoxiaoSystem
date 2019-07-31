package leondon.web.user;

import leondon.bean.User;
import leondon.service.UserService;
import leondon.utils.JSONUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Autor:leondon
 * @Date:19-4-19下午3:12
 * @Version 1.0
 */
@WebServlet("/UserEdit")
public class UserEdit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // 获得用户帐号
//        String username = request.getParameter("username");
        HttpSession session = request.getSession();
        String username =(String) session.getAttribute("usernameid");

        UserService userService = new UserService();
        User user = userService.findUserByUId(username);

        // 返回结果
        response.getWriter().write(JSONUtils.objToJsonString(user));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
