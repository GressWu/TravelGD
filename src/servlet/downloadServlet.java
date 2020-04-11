package servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;

@WebServlet("/download")
public class downloadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filename=request.getParameter("filename");
        //System.out.println(filename);
        ServletContext servletContext=getServletContext();
        String realPath=servletContext.getRealPath("/download/" +filename);
       // System.out.println("真实路径"+realPath);
        String mimeType=servletContext.getMimeType(filename);
        response.setHeader("Content-Type",mimeType);
        response.setHeader("Content-Disposition","attachment;filename="+filename);

        BufferedInputStream bis=new BufferedInputStream(new FileInputStream(realPath));
        BufferedOutputStream bos=new BufferedOutputStream(response.getOutputStream());
        byte[]b=new byte[1024];
        int len;
        while((len=bis.read(b))!=-1)
        {
            bos.write(b,0,len);
        }
        bos.close();
        bis.close();
    }


}
