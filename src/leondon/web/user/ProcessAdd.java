package leondon.web.user;

import leondon.bean.Process;
import leondon.service.OfficeService;
import leondon.service.ProcessService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Autor:leondon
 * @Date:19-4-16下午11:45
 * @Version 1.0
 */
@WebServlet("/ProcessAdd")
public class ProcessAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String process_num = request.getParameter("process_num");
        String process_name = request.getParameter("process_name");
        Process process = new Process();
        process.setProcess_num(process_num);
        process.setProcess_name(process_name);

        ProcessService processService = new ProcessService();

        int processAdd = 0;
        try {
            processAdd = processService.AddProcess(process);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (processAdd>0){
            request.getRequestDispatcher("/ProcessList").forward(request,response);
        }else {
            response.getWriter().write("add error");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
