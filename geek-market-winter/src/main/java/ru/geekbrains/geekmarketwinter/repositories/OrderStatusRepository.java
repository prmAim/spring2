package ru.geekbrains.geekmarketwinter.repositories;

import ru.geekbrains.geekmarketwinter.entites.OrderStatus;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderStatusRepository extends CrudRepository<OrderStatus, Long> {
}
