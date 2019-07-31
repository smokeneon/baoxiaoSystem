package leondon.web.user;

import leondon.bean.Expense;
import leondon.service.FinancialService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Autor:leondon
 * @Date:19-5-8上午1:04
 * @Version 1.0
 */
@WebServlet("/UserExpenseDetails")
public class UserExpenseDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        // 获得报销单号
        String expense_num = request.getParameter("expense_num");
        FinancialService financialService = new FinancialService();
        Expense expense = null;
        try {
            expense=financialService.findExpenseByExpenseNum(expense_num);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("ExpenseDetails",expense);
        request.getRequestDispatcher("normal_user/userExpenseDetails.jsp").forward(request,response);
//        返回结果
//        response.getWriter().write(JSONUtils.objToJsonString(expense));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
