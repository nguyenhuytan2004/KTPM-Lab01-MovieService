package com.example.MovieService.service;

import java.util.List;

import com.example.MovieService.model.Showtime;

public interface IShowtimeService {
    List<Showtime> getShowtimesByMovieId(Integer movieId);
}
