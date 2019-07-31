package leondon.web.user;

import leondon.bean.User;
import leondon.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Arrays;

/**
 * @Autor:leondon
 * @Date:19-4-19下午3:37
 * @Version 1.0
 */
@WebServlet("/UserUpdate")
public class UserUpdate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        // 接收参数
        String username_edit = request.getParameter("username_edit");//更新账号
        String user_num_edit = request.getParameter("user_num_edit");//更新工号
        String user_name_edit = request.getParameter("user_name_edit");//更新用户姓名
        String work_city_edit = request.getParameter("work_city_edit");//更新办公城市
        String office_num_edit = request.getParameter("office_num_edit");//更新办公室
        String department_num_edit = request.getParameter("department_num_edit");//更新部门
        String director_name_edit = request.getParameter("director_name_edit");//更新上级主管
        String process_num_edit = request.getParameter("process_num_edit");//更新审核流程
        String password_edit = request.getParameter("password_edit");//更新密码
        String user_telephone = request.getParameter("user_telephone_edit");//更新手机号
        String alipay = request.getParameter("alipay_edit");
        String[] role_edits = request.getParameterValues("role_edit");//更新用户身份
        boolean flag = false;
        if(role_edits!=null){
            String  role_edit = Arrays.toString(role_edits);
            role_edit = role_edit.substring(1,role_edit.length()-1);
            User user = new User();
            user.setUsername(username_edit);
            user.setUser_num(user_num_edit);
            user.setUser_name(user_name_edit);
            user.setWork_city(work_city_edit);
            user.setOffice_num(office_num_edit);
            user.setDepartment_num(department_num_edit);
            user.setDirector_name(director_name_edit);
            user.setProcess_num(process_num_edit);
            user.setPassword(password_edit);
            user.setUser_telephone(user_telephone);
            user.setAlipay(alipay);
            user.setRole(role_edit);

            UserService userService=new UserService();
            try {
                flag = userService.UpdateUser(user);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            // 返回结果
            if(flag) {
                request.setAttribute("uupdateflag", "true");
            }else {
                request.setAttribute("uupdateflag", "false");
            }
           // request.setAttribute("opFlag", "edit");
            request.getRequestDispatcher("/ListUser").forward(request, response);

        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
