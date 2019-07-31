package leondon.filter;

import leondon.bean.User;
import leondon.utils.SessionSave;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter",urlPatterns = "/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }
    @SuppressWarnings("deprecation")
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletResponse servletResponse = (HttpServletResponse) response;
        HttpServletRequest servletRequest = (HttpServletRequest) request;

        //获取session
        HttpSession session = servletRequest.getSession();
        //获得用户请求的URI
        String path = servletRequest.getRequestURI();

        //获取session的用户信息
        User user = (User) session.getAttribute("user");

        //如果是登录界面直接放行
        if (path.indexOf("/index.jsp") > -1 || path.indexOf("/login") > -1 || path.endsWith("png") || path.endsWith("css")) {
            chain.doFilter(servletRequest, servletResponse);
            return;
        }

        //如果用户信息为空，表明session已经过期或者已经被清空，则跳转到登陆页面
        if (user == null) {
            session.setAttribute("msg1","登陆超时，请重新登录！");
            servletResponse.sendRedirect(servletRequest.getContextPath() + "/login.jsp");
        } else {
            String sessionId = SessionSave.getSessionIdSave().get(user.getUsername());//获取全局类SessionSave保存账户的静态sessionId
            String currentSessionId = session.getId();//获取当前的sessionId
            System.out.println("currentSessionId"+session.getId());
            System.out.println("sessionId"+sessionId);
            if (!currentSessionId.equals(sessionId)) {
                //如果两个sessionId不等，则当前账户强制下线，需要重新登录
                session.setAttribute("msg1","您的帐号已在异地登陆！");
                servletResponse.sendRedirect(servletRequest.getContextPath() + "/login.jsp");
            }else {// 如果是同一账户session则放行请求
                chain.doFilter(servletRequest, servletResponse);
                session.removeAttribute("msg1");

            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
