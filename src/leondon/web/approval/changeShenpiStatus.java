package leondon.web.approval;

import leondon.service.ApprovalService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Autor:leondon
 * @Date:19-5-7下午5:45
 * @Version 1.0
 */
@WebServlet("/changeShenpiStatus")
public class changeShenpiStatus extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        System.out.println("changeShenpiStatus测试");
        String expense_num = request.getParameter("expense_num");//报销单号
        String agreeStatus = request.getParameter("agreeStatus");//同意状态
        int agreeStatus2 = Integer.parseInt(agreeStatus);
        System.out.println("agreeStatus2"+agreeStatus2);
        ApprovalService approvalService = new ApprovalService();
        try {
            int result = approvalService.changeShenpiStatus(expense_num, agreeStatus2);
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
