package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class notifications_005fcontrol_0020add_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\n");
      out.write("    </head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <h3>Adding Notifications</h3>\n");
      out.write("\n");
      out.write("    <div class=\"form2\">\n");
      out.write("    <form action=\"notification_control add final.jsp\">\n");
      out.write("    <label for=\"fname\">Title</label>\n");
      out.write("    <input type=\"text\" name=\"text1\" placeholder=\"Title of Notification\">\n");
      out.write("    <label for=\"lname\">Reference</label>\n");
      out.write("    <input type=\"text\" name=\"text2\" placeholder=\"Link of Notification\">\n");
      out.write("    <label for=\"country\">Content</label>\n");
      out.write("    <input type=\"text\" name=\"text4\" placeholder=\"Content of Notification\"> \n");
      out.write("    <input type=\"submit\" value=\"Add Notification\">\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
