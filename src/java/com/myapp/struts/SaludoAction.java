
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;


public class SaludoAction extends DispatchAction {
	public ActionForward ret(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		DynaActionForm frmForma = (DynaActionForm)form;
		System.out.println("Si entra aqui");
		String userAgent = request.getHeader("User-Agent").toLowerCase();
				
		return mapping.findForward("regresa");
				
	}
	
}
