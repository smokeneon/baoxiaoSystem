package leondon.web.normal;

import com.jspsmart.upload.SmartUpload;
import leondon.utils.JSONUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONString;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/UploadExpenseFile")
public class UploadExpenseFile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        //上传文件
        //设置上传文件保存路径
        HttpSession session = request.getSession();
        String usernameid =(String) session.getAttribute("usernameid");

        String filePath = getServletContext().getRealPath("/Upload/")  +usernameid;
        File file = new File(filePath);
        if (!file.exists()) {
            file.mkdir();
        }
        //实例化上传组件
        SmartUpload su = new SmartUpload();
        //初始化SmartUpload
        su.initialize(getServletConfig(), request, response);
        //设置上传文件对象10M
        su.setMaxFileSize(1024*1024*10);
        //设置所有文件大小100M
        su.setTotalMaxFileSize(1024*1024*100);
        //设置允许上传文件类型
        su.setAllowedFilesList("txt,jpg,gif,png");
//        String fileName = su.getFiles().getFile(0).getFileName();
//        System.out.println("uploadExpenseFile"+fileName);

        String result = "上传成功！";
        try {
            //设置禁止上传文件类型
            su.setDeniedFilesList("rar,jsp,js");
            //上传文件
            su.upload();
            //保存文件
            su.save(filePath);

        } catch (Exception e) {
            result = "上传失败！";
            e.printStackTrace();
        }
        JSONArray jsonArray = new JSONArray();
        try {
            jsonArray.put(Integer.parseInt("3"),result);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        response.getWriter().write(JSONUtils.objToJsonString(jsonArray));
        //response.getWriter().write(String.valueOf(jsonArray));

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
