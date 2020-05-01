package servlet;

import dao.ScenerySpotDao;
import domin.ScenerySpot;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/SuggestionServlet")
public class SuggestionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ScenerySpotDao spotDao = new ScenerySpotDao();

        String[] sceneries = request.getParameterValues("scenery");
        if(sceneries==null)
            request.getRequestDispatcher("destination.jsp").forward(request,response);
        String location=request.getParameter("location");

        // 获得景点的具体介绍的页面
        String introduction=null;
        try {
            ScenerySpot theIntroduction = spotDao.findTheIntroduction(location);
            introduction = theIntroduction.getIntroduction();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 获取游玩总时间
        int totaldays=0;
        for (String scenery : sceneries) {

            try {
                ScenerySpot theDay = spotDao.findTheDay(scenery);
                int tourtime = theDay.getTourtime();
                totaldays+=tourtime;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        request.getSession().setAttribute("days",totaldays);
        request.getSession().setAttribute("sceneries",sceneries);
        request.getSession().setAttribute("introduction",introduction);
        response.sendRedirect("suggestion.jsp");


    }
}
