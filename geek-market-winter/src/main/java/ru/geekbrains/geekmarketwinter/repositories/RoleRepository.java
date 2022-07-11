package ru.geekbrains.geekmarketwinter.repositories;

import ru.geekbrains.geekmarketwinter.entites.Role;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
	Role findOneByName(String theRoleName);
}
