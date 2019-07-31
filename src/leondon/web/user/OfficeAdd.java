package leondon.web.user;

import leondon.service.OfficeService;
import leondon.bean.Office;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Autor:leondon
 * @Date:19-4-16下午10:11
 * @Version 1.0
 */
@WebServlet("/OfficeAdd")
public class OfficeAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String office_num = request.getParameter("office_num");
        String office_name = request.getParameter("office_name");
        String office_manager = request.getParameter("office_manager");
        Office office = new Office();
        office.setOffice_num(office_num);
        office.setOffice_name(office_name);
        office.setOffice_manager(office_manager);

        OfficeService officeService = new OfficeService();
        int officeAdd = 0;
        try {
            officeAdd = officeService.AddOffice(office);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (officeAdd>0){
            request.getRequestDispatcher("/OfficeList").forward(request,response);
        }else {
            response.getWriter().write("<script>alert('添加失败')</script>");
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
