package bml.controller;

import bml.entity.Film;
import bml.service.FilmService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/9 18:56
 */
@Controller
public class FilmController {

    @Resource
    FilmService filmService;

    @RequestMapping("/listAllFilms")
    public String listAllFilms(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model){
        PageHelper.startPage(pn,10);
        List<Film> films = filmService.getAllFilms();
        PageInfo<Film> info = new PageInfo<>(films, 5);
        model.addAttribute("info",info);
        return "listAllFilms";
    }

    @RequestMapping("toAddFilm")
    public String toAddFilm(){
        return "addFilm";
    }

    @RequestMapping("addFilm")
    public String addFilm(Film film){
        filmService.addFilm(film);
        return "redirect:/listAllFilms";
    }

    @RequestMapping("deleteFilm")
    public String deleteFilm(@RequestParam("id")short id){
        filmService.deleteFilm(id);
        return "redirect:/listAllFilms";
    }

    @RequestMapping("editFilm")
    public String toEditFilm(@RequestParam("id")short id, Model model){
        Film film = filmService.getFilmByID(id);
        model.addAttribute("ymg",film);
        return "editFilm";
    }

    @RequestMapping("/updateFilm")
    public String updateFilm(Film film){
        filmService.updateFilms(film);
        return "redirect:/listAllFilms";
    }
}
