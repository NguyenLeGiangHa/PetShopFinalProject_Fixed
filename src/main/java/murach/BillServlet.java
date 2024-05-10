package murach;

import bean.UserBean;
import murach.DAO.BillDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/bill")
public class BillServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        UserBean user = (UserBean) session.getAttribute("user");
        String url = "/cart";
        if (CsrfTokenManage.isValidCsrfToken(request)) {
            try {
                if (user == null) {
                    String message = "You must be login to buy product!";
                    session.setAttribute("message", message);
                    url = "/login.jsp";
                } else {
                    int idbillmax = BillDAO.GetMaxIDBillByIDUser(user.getIdUser());
                    if (idbillmax == 0) {
                        int result = BillDAO.InsertBill(user.getIdUser());
                        idbillmax = BillDAO.GetMaxIDBillByIDUser(user.getIdUser());
                        session.setAttribute("idbillmax", idbillmax);
                        if (result == 0) {
                            url = "/error.jsp";
                        }
                    } else {
                        session.setAttribute("idbillmax", idbillmax);
                    }
                    String action = request.getParameter("action");
                    int amount = 0;
                    if (action.equals("default")) {
                        amount = 1;
                    } else {
                        amount = Integer.parseInt(request.getParameter("amount"));
                    }
                    session.setAttribute("amount", amount);
                }
            }
            catch (Exception e) {
                // Log the exception
                e.printStackTrace(); // Or use a logging framework

                // Store the referring URL in the session
                session.setAttribute("prevUrl", request.getRequestURI());

                // Set a user-friendly error message in the session
                session.setAttribute("errorMessage", "Sorry, we encountered an error while processing your request. Please try again later.");

                // Redirect to the error page
                url = "/error.jsp";
            }
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }


    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
        try {
            String url = "/login.jsp";

            req.getRequestDispatcher(url).forward(req, resp);
        } catch (Exception e) {
            resp.sendRedirect("error.jsp");
        }
    }
}
