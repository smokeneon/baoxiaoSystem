package leondon.web.normal;

import leondon.service.NormalService;
import leondon.utils.JSONUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Autor:leondon
 * @Date:19-5-6下午8:51
 * @Version 1.0
 */
@WebServlet("/submitShenPi")
public class SubmitShenPi extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("--------------------------------submitShenpi");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String expense_num = request.getParameter("expense_num");
        NormalService normalService = new NormalService();
        try {
            boolean result = normalService.submitShenPi(expense_num);
            if (result){
                System.out.println("----------------------判断1");
                String result2 = "{'res':1}";
                response.getWriter().write(JSONUtils.objToJsonString(result2));
            }else {
                System.out.println("-----------------------判断2");
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
