package leondon.web.user;

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
 * @Date:19-5-16上午11:23
 * @Version 1.0
 */
@WebServlet("/UserExpenseDelete")
public class UserExpenseDelete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        // 获得报销单号
        String expense_num = request.getParameter("expense_num");
        UserService userService = new UserService();
        boolean result = false;
        try {
            result = userService.deleteExpense(expense_num);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (result) {
            request.getRequestDispatcher("My_expense").forward(request, response);
        }else{
            response.getWriter().write("<script>alert('删除失败')</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
