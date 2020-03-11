package com.tms.TMS.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tms.TMS.entities.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {

	Admin findByUsername(String username);

}
