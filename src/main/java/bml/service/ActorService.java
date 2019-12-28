package bml.service;

import bml.entity.Actor;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/9 12:54
 */
public interface ActorService {

    List<Actor> getAllActors();

    void insertActor(Actor actor);

    void deleteActorbyid(Integer id);

    void updateActor(Actor actor);

    Actor getActorbyid(Integer id);

}
