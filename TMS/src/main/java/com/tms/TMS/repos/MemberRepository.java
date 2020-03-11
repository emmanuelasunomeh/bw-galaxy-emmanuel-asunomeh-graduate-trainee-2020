package com.tms.TMS.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tms.TMS.entities.Member;


public interface MemberRepository extends JpaRepository<Member, Long> {

	Member findByUsername(String username);

}
