/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**

 @author kasper
 */
@WebServlet( name = "OrderCake", urlPatterns = { "/OrderCake" } )
public class OrderCake extends HttpServlet {

    protected void processRequest( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        response.setContentType( "text/html;charset=UTF-8" );
        
        HttpSession ses = request.getSession();
        if ( ses.getAttribute( "counter" ) == null ) {
            ses.setAttribute( "counter", 0 );
        }
        int count = (int) ses.getAttribute( "counter" );
        count++;
        ses.setAttribute( "counter", count );
        forward("/orderconfirmation.jsp",request, response);
    }

    private void forward( String url, HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        getServletContext()
                .getRequestDispatcher( url )
                .forward( request, response );
    }

    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        processRequest( request, response );
    }

    @Override
    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        processRequest( request, response );
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
