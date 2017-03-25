
package com.myapp.struts;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;

public class RegistroAction extends DispatchAction {

	public ActionForward reg(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		
		DynaActionForm frmForma = (DynaActionForm) form;
		String name = (String) frmForma.get("name");
		String email = (String) frmForma.get("email");
		String password = (String) frmForma.get("password");
		Boolean val=false;

		System.out.println("name " + name);
		System.out.println("email " + email);
		System.out.println("password" + password);
		String userAgent = request.getHeader("User-Agent").toLowerCase();
		
		
		
		 
		/*if (name == null || name.length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));}
		if (email == null || email.length() < 1) {
            errors.add("email", new ActionMessage("error.email.required"));}
		if (password == null || password.length() < 1) {
            errors.add("password", new ActionMessage("error.password.required"));}*/
		
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/prueba", "root", "root");
		try {
 
            try {
                java.sql.Statement st = con.createStatement();
				if(name==null||name.length()<1 && email==null || email.length() <1 && password==null ||password.length()<1){
						System.out.println("campos vacios");
				}else{
                int value = st.executeUpdate("INSERT INTO usuario(name,email,password)"
                                + "VALUES('"
                                + name
                                + "','"
                                + email
                                + "','"
                                + password
                                 + "')");}
                 } catch (SQLException ex) {
                System.out.println("SQL statement is not executed!" + ex);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return mapping.findForward("registra");
	
	}

	
	
	public ActionForward reto(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {

		DynaActionForm frmForma = (DynaActionForm) form;

		String userAgent = request.getHeader("User-Agent").toLowerCase();

		return mapping.findForward("retorna");

	}

}
