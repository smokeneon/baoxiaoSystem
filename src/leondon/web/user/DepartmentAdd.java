package leondon.web.user;

import leondon.bean.Department;
import leondon.service.DepartmentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Autor:leondon
 * @Date:19-4-16上午8:28
 * @Version 1.0
 */
@WebServlet(name = "AddDepartment",urlPatterns = "/DepartmentAdd")
public class DepartmentAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        //获取前台数据
        String department_num = request.getParameter("department_num");
        String department_name = request.getParameter("department_name");
        String department_manager = request.getParameter("department_manager");
        Department department = new Department();
        department.setDepartment_num(department_num);
        department.setDepartment_name(department_name);
        department.setDepartment_manager(department_manager);
        DepartmentService departmentService = new DepartmentService();
        try {
            int departmentAdd = departmentService.departmentAdd(department);
            if (departmentAdd>0) {
                request.getRequestDispatcher("/DepartmentList").forward(request,response);
            }else {
                response.getWriter().write("addDepartment error");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
