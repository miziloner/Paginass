package com.myapp.struts;

import com.myapp.struts.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;

public class SaludoAction extends DispatchAction {

	private Object DBUtil;

	public ActionForward ret(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm frmForma = (DynaActionForm) form;
		String userAgent = request.getHeader("User-Agent").toLowerCase();

		return mapping.findForward("regresa");

	}

	public ActionForward muestra(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException {
		DynaActionForm SaludoForm = (DynaActionForm) form;
		List list = new ArrayList();

		Statement stmt = null;
		ResultSet rs = null;
		Usuario u;

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/prueba", "root", "root");
		String query = "select * from usuario";
		stmt=con.createStatement();
		rs = stmt.executeQuery(query);
		while (rs.next()) {

			u = new Usuario(rs.getString("name"), rs.getString("email"), rs.getString("password"));
			list.add(u);
			
		}
		SaludoForm.set("listId", list);
		return mapping.findForward("muestra");
	}

	private void Usuario(String string) {
		throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
	}

}
