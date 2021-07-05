package taxiapp.service;

import java.util.Optional;
import taxiapp.lib.Inject;
import taxiapp.lib.Service;
import taxiapp.lib.exception.AuthenticationException;
import taxiapp.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Login or password was incorrect");
    }
}
