package leondon.web.user;

import leondon.bean.User;
import leondon.service.UserService;
import leondon.utils.SessionSave;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        //
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        //
        String uid = request.getParameter("name");
        String password = request.getParameter("password");
        //
        UserService userService = new UserService();
        User user = userService.findUserByUId(uid);

        //
        if(user!=null && user.getPassword().equals(password)) {
            //登陆成功，保存当前用户登陆的session(单一登陆)
            String sessionId = request.getRequestedSessionId();
            String usernameSave = user.getUsername();
            if(!SessionSave.getSessionIdSave().containsKey(usernameSave)){
                //第一次登陆
                System.out.println("zhe shi di yi ci login");
                SessionSave.getSessionIdSave().put(usernameSave,sessionId);
            }else if(SessionSave.getSessionIdSave().containsKey(usernameSave)//第二次登陆，且不是同一session
                    && !sessionId.equals(SessionSave.getSessionIdSave().get(usernameSave))){
                System.out.println("zhe shi di 2 ci login");
                System.out.println("qing wu chong fu deng lu");
                response.getWriter().write("<script>alert('您的帐号在别处登陆,请点击确定重新登陆')</script>");
                request.getRequestDispatcher("/trytorelogin.html").forward(request, response);
                SessionSave.getSessionIdSave().remove(usernameSave);
                SessionSave.getSessionIdSave().put(usernameSave,sessionId);
                return;
            }
            HttpSession session = request.getSession();
            String role = user.getRole();
            session.setAttribute("user",user);
            session.setAttribute("usernameid",user.getUsername());
            session.setAttribute("username", user.getUser_name());
            session.setAttribute("role",role);
            session.setAttribute("office_num",user.getOffice_num());
            request.getRequestDispatcher("/Welcome").forward(request,response);
        } else {
            request.setAttribute("loginsign", "fail");
           response.getWriter().write("<script>alert('登录失败');window.location.href='./login.jsp'</script>");
          // request.getRequestDispatcher("./login.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        doPost(request, response);
    }
}
