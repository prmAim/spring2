package ru.geekbrains.geekmarketwinter.repositories;

import ru.geekbrains.geekmarketwinter.entites.Order;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends CrudRepository<Order, Long> {
}
