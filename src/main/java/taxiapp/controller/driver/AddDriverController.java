package taxiapp.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxiapp.lib.Injector;
import taxiapp.model.Driver;
import taxiapp.service.DriverService;

public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxiapp");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String repeatedPassword = req.getParameter("repeat_password");
        if (!password.equals(repeatedPassword)) {
            req.setAttribute("errorMsg", "Passwords do not match");
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
            return;
        }
        Driver driver = new Driver(name, licenseNumber, login, password);
        driverService.create(driver);
        resp.sendRedirect("/drivers");
    }
}