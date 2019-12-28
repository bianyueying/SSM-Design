package bml.service.impl;

import bml.dao.ActorDao;
import bml.entity.Actor;
import bml.service.ActorService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/9 12:57
 */
@Service
public class ActorServiceImpl implements ActorService {

    final ActorDao actorDao;
    public ActorServiceImpl(ActorDao actorDao) {
        this.actorDao = actorDao;
    }

    @Override
    public List<Actor> getAllActors() {
        return actorDao.getAllActors();
    }

    @Override
    public void insertActor(Actor actor) {
        actorDao.insertActor(actor);
    }

    @Override
    public void deleteActorbyid(Integer id) {
        actorDao.deleteActorbyid(id);
    }

    @Override
    public void updateActor(Actor actor) {
        actorDao.updateActor(actor);
    }

    @Override
    public Actor getActorbyid(Integer id) {
        return actorDao.getActorbyid(id);
    }
}
