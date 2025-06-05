package com.example.MovieService.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MovieService.model.Showtime;

public interface IShowtimeRepository extends JpaRepository<Showtime, Integer> {
    Optional<List<Showtime>> findByMovieId(Integer movieId);
}
