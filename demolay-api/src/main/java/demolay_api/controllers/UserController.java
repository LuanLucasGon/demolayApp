package demolay_api.controllers;

import demolay_api.openapi.UserOpenApi;
import demolay_api.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/demolay/api/user")
@RequiredArgsConstructor
public class UserController implements UserOpenApi {

    private final UserService userService;
}
