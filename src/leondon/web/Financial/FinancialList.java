package leondon.web.Financial;

import leondon.bean.Expense;
import leondon.service.FinancialService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-5-7下午11:46
 * @Version 1.0
 */
@WebServlet("/FinancialList")
public class FinancialList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FinancialService financialService = new FinancialService();
        List<Expense> financialExpensesList=null;
        try {
            financialExpensesList = financialService.financialList();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("FinancialList",financialExpensesList);
        request.getRequestDispatcher("Financial_management/reimbursement_amount.jsp").forward(request,response);


    }
}
