package taxiapp.service;

import taxiapp.lib.exception.AuthenticationException;
import taxiapp.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationException;
}
