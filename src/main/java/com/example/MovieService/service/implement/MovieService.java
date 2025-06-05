package com.example.MovieService.service.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.MovieService.model.Movie;
import com.example.MovieService.repository.IMovieRepository;
import com.example.MovieService.service.IMovieService;

@Service
public class MovieService implements IMovieService {
    @Autowired
    private IMovieRepository _movieRepository;

    @Override
    public List<Movie> getAllMovies() {
        return _movieRepository.findAll();
    }
}
