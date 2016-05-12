package com.fenqi.filter;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * 验证用户登陆
 * 
 * @author MZULE
 * 
 */
public class UserLoginInterceptor implements Interceptor {

	private static final long serialVersionUID = 1593745236481514166L;

	public void destroy() {
	}

	public void init() {
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();
		// 获取session
		Map<String, Object> session = context.getSession();
		String user = (String) session.get("user");

		// 获取HttpServletRequest对象
		HttpServletRequest req = ServletActionContext.getRequest();
		// 获取此请求的地址，请求地址包含application name，进行subString操作，去除application name
		String path = req.getRequestURI();
		// 获得请求中的参数
		String queryString = req.getQueryString();
		// 预防空指针
		String realPath;
		if (queryString == null) {
			queryString = "";
			realPath = path;
		}
		else{
		// 拼凑得到登陆之前的地址
		    realPath = path + "?" + queryString;
		}
		// 存入session，方便调用
		System.out.println(realPath);
		session.put("prePage", realPath);

		return invocation.invoke();
	}

}