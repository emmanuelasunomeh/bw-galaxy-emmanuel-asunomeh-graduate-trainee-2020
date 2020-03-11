package com.tms.TMS.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import com.tms.TMS.entities.Tasks;

public interface TasksRepository extends JpaRepository<Tasks, Long> {


}
