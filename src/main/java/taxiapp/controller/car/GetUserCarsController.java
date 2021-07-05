package taxiapp.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxiapp.lib.Injector;
import taxiapp.model.Car;
import taxiapp.service.CarService;

public class GetUserCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxiapp");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession httpSession = req.getSession();
        Long driverId = (Long) httpSession.getAttribute("driver_id");
        List<Car> driverCars = carService.getAllByDriver(driverId);
        req.setAttribute("carsList", driverCars);
        req.getRequestDispatcher("/WEB-INF/views/cars/cars.jsp").forward(req, resp);
    }
}
