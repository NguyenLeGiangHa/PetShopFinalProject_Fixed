package murach;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.UUID;

public class CsrfTokenManage {

    private static final String CSRF_TOKEN_SESSION_ATTR = "csrf_token";
    private static final int CSRF_TOKEN_LENGTH = 32;
    private static final long TOKEN_EXPIRATION_TIME_MS = 30 * 60 * 1000; // 30 minute

    // create token using UUID
    public static String csrfTokenGenerator() {
        return UUID.randomUUID().toString();
    }

    // save csrf token to session
    public static void storeCsrfToken(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        String csrfToken = csrfTokenGenerator();
        session.setAttribute(CSRF_TOKEN_SESSION_ATTR, csrfToken);
        session.setAttribute(CSRF_TOKEN_SESSION_ATTR + "_expiration", System.currentTimeMillis() + TOKEN_EXPIRATION_TIME_MS);
    }

    public static String getCsrfToken(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            long expirationTime = (long) session.getAttribute(CSRF_TOKEN_SESSION_ATTR + "_expiration");
            if (expirationTime > System.currentTimeMillis()) {
                return (String) session.getAttribute(CSRF_TOKEN_SESSION_ATTR);
            } else {
                // Nếu token is expire remove it then create a new one
                session.removeAttribute(CSRF_TOKEN_SESSION_ATTR);
                session.removeAttribute(CSRF_TOKEN_SESSION_ATTR + "_expiration");
                storeCsrfToken(request);
            }
        }
        return null;
    }

    public static boolean isValidCsrfToken(HttpServletRequest request) {
        String csrfTokenFromForm = request.getParameter("csrf_token");
        String csrfTokenFromSession = getCsrfToken(request);
        if (csrfTokenFromForm == null || csrfTokenFromSession == null) {return false;}
        return csrfTokenFromSession.equals(csrfTokenFromForm);
    }
}