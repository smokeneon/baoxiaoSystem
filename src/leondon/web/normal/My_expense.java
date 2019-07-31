package leondon.web.normal;

import leondon.bean.Expense;
import leondon.service.NormalService;

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
 * @Date:19-4-29下午2:18
 * @Version 1.0
 */
@WebServlet("/My_expense")
public class My_expense extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NormalService normalService = new NormalService();
        List<Expense> expense= null;
        HttpSession session = request.getSession();
        String  usernameid =(String) session.getAttribute("usernameid");
        System.out.println("My_expense----------------------------2019-5-7"+usernameid);

        try {
            expense = (List<Expense>) normalService.myExpenseList(usernameid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("my_expense expense"+expense);
        request.setAttribute("Expense",expense);

        request.getRequestDispatcher("normal_user/my_expense.jsp").forward(request,response);
    }
}
