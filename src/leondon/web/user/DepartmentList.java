package leondon.web.user;

import leondon.bean.Department;
import leondon.service.DepartmentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16上午8:29
 * @Version 1.0
 */
@WebServlet(name = "ListDepartment",urlPatterns = "/DepartmentList")
public class DepartmentList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DepartmentService departmentService = new DepartmentService();
        List<Department> department = (List<Department>) departmentService.DepartmentList();

        System.out.println("Department ok");
        System.out.println(departmentService.DepartmentList());
        System.out.println("department"+department);


        System.out.println("----------------------departmentList   test0");
        request.setAttribute("Department",department);
        System.out.println("----------------------departmentList   test1");
        request.getRequestDispatcher("Person_management/department_management.jsp").forward(request,response);
        System.out.println("----------------------departmentList   test2");
    }
}
