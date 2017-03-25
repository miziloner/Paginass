package com.myapp.struts;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;

public class LoginAction extends DispatchAction {

	public ActionForward init(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException {
		
		DynaActionForm frmForma = (DynaActionForm) form;
		String userAgent = request.getHeader("User-Agent").toLowerCase();
		String name = (String) frmForma.get("name");
		String password = (String) frmForma.get("password");
		
		Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/prueba", "root", "root");
		
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from usuario where name='"+name+"' and password='"+password+"'");
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
           out.println("welcome "+name);
           }
          else{
           response.sendRedirect("saludo.jsp");
          }
        
    
		
		return mapping.findForward("vamos");
		
	}
	

	
}
