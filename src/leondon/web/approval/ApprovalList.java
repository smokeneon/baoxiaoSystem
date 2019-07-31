package leondon.web.approval;

import leondon.bean.Expense;
import leondon.service.ApprovalService;

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
 * @Date:19-5-7上午10:36
 * @Version 1.0
 */
@WebServlet("/ApprovalList")
public class ApprovalList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ApprovalService approvalService = new ApprovalService();
        HttpSession session = request.getSession();
        String office_num = (String)session.getAttribute("office_num");
        List<Expense> expenseList = null;
        try {
            expenseList = (List<Expense>)approvalService.approvalList(office_num);
        } catch (SQLException e) {
            e.printStackTrace();
        }


        request.setAttribute("ExpenseList",expenseList);
        request.getRequestDispatcher("approval_management/examination_approval_reimbursement.jsp").forward(request,response);
    }
}
