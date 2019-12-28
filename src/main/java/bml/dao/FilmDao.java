package bml.dao;

import bml.entity.Film;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/9 18:34
 */
public interface FilmDao {

    List<Film> getAllFilms();

    void addFilm(Film film);

    void deleteFilm(short id);

    void updateFilms(Film film);

    Film getFilmByID(short id);

}
