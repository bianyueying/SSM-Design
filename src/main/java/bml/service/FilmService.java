package bml.service;

import bml.entity.Film;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/9 18:50
 */
public interface FilmService {

    List<Film> getAllFilms();

    void addFilm(Film film);

    void deleteFilm(short id);

    void updateFilms(Film film);

    Film getFilmByID(short id);
}
