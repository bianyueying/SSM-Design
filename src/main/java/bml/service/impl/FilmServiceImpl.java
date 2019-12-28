package bml.service.impl;

import bml.dao.FilmDao;
import bml.entity.Film;
import bml.service.FilmService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/9 18:51
 */
@Service
public class FilmServiceImpl implements FilmService {

    final FilmDao filmDao;
    public FilmServiceImpl(FilmDao filmDao) {
        this.filmDao = filmDao;
    }

    @Override
    public List<Film> getAllFilms() {
        return filmDao.getAllFilms();
    }

    @Override
    public void addFilm(Film film) {
        filmDao.addFilm(film);
    }

    @Override
    public void deleteFilm(short id) {
        filmDao.deleteFilm(id);
    }

    @Override
    public void updateFilms(Film film) {
        filmDao.updateFilms(film);
    }

    @Override
    public Film getFilmByID(short id) {
        return filmDao.getFilmByID(id);
    }
}
