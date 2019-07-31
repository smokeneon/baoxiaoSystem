package leondon.web.user;

import leondon.service.OfficeService;
import leondon.bean.Office;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16下午9:38
 * @Version 1.0
 */
@WebServlet("/OfficeList")
public class OfficeList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OfficeService officeService = new OfficeService();
        List<Office> office = (List<Office>) officeService.OfficeList();
        request.setAttribute("Office",office);
        request.getRequestDispatcher("Person_management/office_management.jsp").forward(request,response);
    }
}
