package bml.controller;

import bml.entity.City;
import bml.service.CityService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/10 9:57
 */
@Controller
public class CityController {

    final CityService cityService;
    public CityController(CityService cityService) {
        this.cityService = cityService;
    }

    @RequestMapping("/listAllCity")
    public String test(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model){
        PageHelper.startPage(pn,10);
        List<City> city = cityService.getCitylist();
        PageInfo<City> info = new PageInfo<>(city, 5);
        model.addAttribute("lqz",info);
        return "listAllCitys";
    }
}
