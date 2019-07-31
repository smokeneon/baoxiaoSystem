package leondon.web.Financial;


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
 * @Date:19-5-9下午1:03
 * @Version 1.0
 * 确认付款
 */
@WebServlet("/ConfirmPayment")
public class ConfirmPayment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String expense_num = request.getParameter("expense_num");//报销单号
        String changePayStatus = request.getParameter("changePayStatus");//同意状态
        int payStatus2 = Integer.parseInt(changePayStatus);
        System.out.println("payStatus"+payStatus2);
        FinancialService financialService = new FinancialService();

        try {
            int result = financialService.changePayStatus(expense_num, payStatus2);
            if (result>0) {
                response.getWriter().write("success");
            }else {
                response.getWriter().write("failure");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
