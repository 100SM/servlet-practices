package helloweb;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifeCycleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init() throws ServletException {
		System.out.println("LifeCycle.init() called");
		super.init();
	}

	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("LifeCycle.service() called");
		super.service(req, res);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("LifeCycle.doGet() called");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("LifeCycle.doPost() called");
		doGet(request, response);
	}

	public void destroy() {
		System.out.println("LifeCycle.destroy() called");
		super.destroy();
	}
}