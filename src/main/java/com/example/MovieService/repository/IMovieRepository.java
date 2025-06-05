package com.example.MovieService.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MovieService.model.Movie;

public interface IMovieRepository extends JpaRepository<Movie, Integer> {
}
