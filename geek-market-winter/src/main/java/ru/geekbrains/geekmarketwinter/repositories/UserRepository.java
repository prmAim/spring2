package ru.geekbrains.geekmarketwinter.repositories;

import ru.geekbrains.geekmarketwinter.entites.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User findOneByUserName(String userName);
}
