package com.fenqi.filter;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class CustomerLogin extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		Map  session = ActionContext.getContext().getSession();
		String username=(String) session.get("user");
		if(username!=null)
			return invocation.invoke();
		else
			return Action.LOGIN;
	}

}
