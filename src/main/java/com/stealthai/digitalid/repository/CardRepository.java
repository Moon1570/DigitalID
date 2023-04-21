package com.stealthai.digitalid.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stealthai.digitalid.model.CardModel;

public interface CardRepository extends JpaRepository<CardModel, Integer>{

	List<CardModel> findByCompany(String company);
}
