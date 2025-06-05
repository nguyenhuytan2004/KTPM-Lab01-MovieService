package com.example.MovieService.service.implement;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MovieService.model.Showtime;
import com.example.MovieService.repository.IShowtimeRepository;
import com.example.MovieService.service.IShowtimeService;

@Service
public class ShowtimeService implements IShowtimeService {
    @Autowired
    IShowtimeRepository _showtimeRepository;

    @Override
    public List<Showtime> getShowtimesByMovieId(Integer movieId) {
        Optional<List<Showtime>> showtimes = _showtimeRepository.findByMovieId(movieId);
        if (showtimes.isPresent()) {
            return showtimes.get();
        } else {
            throw new IllegalArgumentException("No showtimes found for movie ID: " + movieId);
        }
    }
}
