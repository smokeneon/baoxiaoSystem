package leondon.web.user;

import leondon.bean.Process;
import leondon.service.ProcessService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16下午11:45
 * @Version 1.0
 */
@WebServlet("/ProcessList")
public class ProcessList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProcessService processService = new ProcessService();
        System.out.println("process------------------------------------1");
        List<Process> process = (List<Process>) processService.ProcessList();
        request.setAttribute("Process",process);
        System.out.println(process);
        System.out.println("process------------------------------------5");
        request.getRequestDispatcher("Person_management/review_process_management.jsp").forward(request,response);
    }
}
