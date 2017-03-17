/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.actions.DispatchAction;

/**
 *
 * @author mxds-2003
 */
public class RegistroAction extends DispatchAction{
	public ActionForward reg(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		
		DynaActionForm frmForma = (DynaActionForm)form;
		System.out.println("Si entra aqui");
		String userAgent = request.getHeader("User-Agent").toLowerCase();
				
		return mapping.findForward("registra");
				
	}
	public ActionForward reto(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response){
		
		DynaActionForm frmForma = (DynaActionForm)form;
		System.out.println("Si entra aqui");
		String userAgent = request.getHeader("User-Agent").toLowerCase();
				
		return mapping.findForward("retorna");
				
	}
	
}
