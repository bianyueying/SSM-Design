package bml.dao;

import bml.entity.City;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/10 9:31
 */
public interface CityDao {

    List<City> getCitys();

    //根据国家名字获取城市
    List<City> getCountrycity(String countryname);

    List<City> selectCitysByName(List<Integer> countryIds);

}
