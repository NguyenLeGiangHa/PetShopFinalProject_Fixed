package murach;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class HeaderFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;

        // Set the X-Content-Type-Options header
        httpServletResponse.setHeader("X-Content-Type-Options", "nosniff");

        httpServletResponse.setHeader("X-Frame-Options", "SAMEORIGIN");
        // Set the Content Security Policy header
        httpServletResponse.setHeader("Content-Security-Policy",
                "default-src 'self'; frame-ancestors 'self'; form-action 'self'; "
                        + "base-uri 'self'; font-src 'self' https://fonts.gstatic.com https://cdnjs.cloudflare.com;"
                        + "script-src 'nonce-2526c7f26c' http://localhost:*;"
                        + " img-src 'self'; style-src 'self' 'nonce-2526c7f26c' https://fonts.googleapis.com ");

        // Add any additional headers you want to set here

        // Pass the request and response along the filter chain
        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization logic for the filter (if any)
    }

    @Override
    public void destroy() {
        // Cleanup logic for the filter (if any)
    }
}
