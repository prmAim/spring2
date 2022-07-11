package ru.geekbrains.geekmarketwinter.services;

import ru.geekbrains.geekmarketwinter.entites.SystemUser;
import ru.geekbrains.geekmarketwinter.entites.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {
    User findByUserName(String username);
    boolean save(SystemUser systemUser);
}
