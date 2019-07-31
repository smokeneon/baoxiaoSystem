package leondon.web.normal;

import leondon.bean.CreateExpenseMessage;
import leondon.service.NormalService;
import leondon.utils.JSONUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-22下午4:52
 * @Version 1.0
 */
@WebServlet("/normalCreatePage")
public class normalCreatePage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        String username =(String) session.getAttribute("usernameid");
        NormalService normalService = new NormalService();
        try {
            CreateExpenseMessage createExpenseMessage =(CreateExpenseMessage) normalService.getCreateExpenseMessage(username);
            response.getWriter().write(JSONUtils.objToJsonString(createExpenseMessage));
            //request.setAttribute("CreateExpenseMessage",createExpenseMessage);
            //request.getRequestDispatcher("normal_user/create_expense.jsp").forward(request,response);

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
