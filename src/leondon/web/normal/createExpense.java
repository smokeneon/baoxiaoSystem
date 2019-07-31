package leondon.web.normal;

import com.jspsmart.upload.SmartUpload;
import leondon.bean.Expense;
import leondon.service.NormalService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Autor:leondon
 * @Date:19-4-18下午8:40
 * @Version 1.0
 */

@WebServlet("/createExpense")
public class createExpense extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String expense_num = request.getParameter("expense_num");
        String create_username = request.getParameter("create_username");//获取用户名
        String create_current_date = request.getParameter("create_current_date");//获取提交报销单的日期
        String creat_consumption_date = request.getParameter("creat_consumption_date");//获取消费日期
        String create_cost_category = request.getParameter("create_cost_category");//获取消费类别
        String create_fee = request.getParameter("create_fee");//获取消费金额
        String create_invoice_type = request.getParameter("create_invoice_type");//获取发票类型
        String create_reimbursement_reasons = request.getParameter("create_reimbursement_reasons");//获取报销事由
        String create_file2 = request.getParameter("create_file");//获取附件
        System.out.println("create_file"+create_file2);

        HttpSession session = request.getSession();
        String usernameid =(String) session.getAttribute("usernameid");
        String filePath = "/upload/expense/" +usernameid+"/";
        String create_file = filePath+create_file2;
        System.out.println("create_file"+create_file);

        Expense expense = new Expense();
        expense.setExpense_num(expense_num);
        expense.setCreate_current_date(create_current_date);
        expense.setUsername(create_username);
        expense.setCreate_consumption_date(creat_consumption_date);
        expense.setCreate_cost_category(create_cost_category);
        expense.setCreate_fee(create_fee);
        expense.setCreate_invoice_type(create_invoice_type);
        expense.setCreate_reimbursement_reasons(create_reimbursement_reasons);
        expense.setCreate_file(create_file);

        System.out.println("expense create"+expense);
        NormalService normalService = new NormalService();
        System.out.println("createExpense -------001");
        try {
            boolean expense1 = normalService.createExpense(expense);
            if (expense1) {
                request.setAttribute("expense_num_create",expense_num);
                request.getRequestDispatcher("normal_user/create_expense_uploadFile.jsp").forward(request,response);
                //response.getWriter().write("添加成功");

            }else {
                response.getWriter().write("添加失败");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
