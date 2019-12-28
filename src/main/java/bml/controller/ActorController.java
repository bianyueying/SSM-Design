package bml.controller;

import bml.entity.Actor;
import bml.service.ActorService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/9 12:26
 */
@Controller
public class ActorController {

    final ActorService actorService;
    public ActorController(ActorService actorService) {
        this.actorService = actorService;
    }

    @RequestMapping("/listAll")
    public String listAll(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model){
        PageHelper.startPage(pn,10);
        List<Actor> actors = actorService.getAllActors();
        /*对查询结果进行封装*/
        PageInfo<Actor> info = new PageInfo<>(actors, 5);
        model.addAttribute("info",info);
        return "listAll";
    }

    @RequestMapping("/deleteActor")
    public String deleteActor(@RequestParam("id")Integer id){
        actorService.deleteActorbyid(id);
        return "redirect:/listAll";
    }

    @RequestMapping("editActor")
    public String editActor(@RequestParam("id")Integer id,Model model){
        Actor actor = actorService.getActorbyid(id);
        model.addAttribute("actor",actor);
        return "editActor";
    }

    @RequestMapping("/updateActor")
    public String updateActor(Actor actor){
        actorService.updateActor(actor);
        return "redirect:/listAll";
    }

    @RequestMapping("/toAddActor")
    public String toAddActor(){
        return "addActor";
    }

    @RequestMapping("/addActor")
    public String addActor(Actor actor){
        actorService.insertActor(actor);
        return "redirect:/listAll";
    }
}
