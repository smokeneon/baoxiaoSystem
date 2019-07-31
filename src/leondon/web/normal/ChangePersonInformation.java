package leondon.web.normal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Autor:leondon
 * @Date:19-5-16上午10:45
 * @Version 1.0
 */
@WebServlet("/ChangePersonInformation")
public class ChangePersonInformation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
//        response.sendRedirect(request.getContextPath() + "/login.jsp");
        request.getRequestDispatcher("normal_user/modifying_personal_information.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
