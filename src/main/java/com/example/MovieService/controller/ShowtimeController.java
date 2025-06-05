package com.example.MovieService.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.MovieService.model.Showtime;
import com.example.MovieService.service.IShowtimeService;

@RestController
@RequestMapping("/api/movies/{movieId}/showtimes")
@CrossOrigin(origins = "http://localhost:5173")
public class ShowtimeController {
    @Autowired
    private IShowtimeService _showtimeService;

    @GetMapping
    public ResponseEntity<List<Showtime>> getShowtimesByMovieId(@PathVariable Integer movieId) {
        try {
            List<Showtime> showtimes = _showtimeService.getShowtimesByMovieId(movieId);
            return ResponseEntity.ok(showtimes);
        } catch (IllegalArgumentException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
    }
}
