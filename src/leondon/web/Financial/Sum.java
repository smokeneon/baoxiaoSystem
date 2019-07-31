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
 * @Date:19-5-14下午8:05
 * @Version 1.0
 */
@WebServlet(urlPatterns = "/Sum")
public class Sum extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("this is sum aaaaaaa");
        FinancialService financialService = new FinancialService();
        List<Expense> financialExpensesList=null;
        try {
            financialExpensesList = financialService.financialList();
            System.out.println("financialExpensesList"+financialExpensesList);

        } catch (SQLException e) {
            e.printStackTrace();
        }

//        String jiaotongTitle = "交通费";
//        String zhusuTitle = "住宿费";
//        String otherTitle = "额外费用";
//        String qitaTitle = "其他费用";
        int jiaotong = 0;
        int zhusu = 0;
        int other = 0;
        int qita = 0;
        for (int i=0;i<financialExpensesList.size();i++){
            if(financialExpensesList.get(i).getCreate_cost_category().equals("交通费")){
                jiaotong +=Double.parseDouble(financialExpensesList.get(i).getCreate_fee()) ;
            }
            if(financialExpensesList.get(i).getCreate_cost_category().equals("住宿费")){
                zhusu +=Double.parseDouble(financialExpensesList.get(i).getCreate_fee()) ;
            }
            if(financialExpensesList.get(i).getCreate_cost_category().equals("额外费用")){
                other +=Double.parseDouble(financialExpensesList.get(i).getCreate_fee()) ;
            }
            if(financialExpensesList.get(i).getCreate_cost_category().equals("其他")){
                qita +=Double.parseDouble(financialExpensesList.get(i).getCreate_fee()) ;
            }
        }

        String result = "[{\"Create_cost_category\":\"交通费\",\"create_fee\":"+jiaotong+"}"+",{\"Create_cost_category\":\"住宿费\",\"create_fee\":"+zhusu+"},{\"Create_cost_category\":\"额外费用\",\"create_fee\":"+other+"},{\"Create_cost_category\":\"其他\",\"create_fee\":"+qita+"}]";

        response.getWriter().write(result);

//        ObjectMapper mapper = new ObjectMapper();
//        String jsonlist = mapper.writeValueAsString(financialExpensesList);
//        response.getWriter().write(jsonlist);

    }
}
