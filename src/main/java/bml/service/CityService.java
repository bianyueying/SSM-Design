package bml.service;

import bml.entity.City;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/10 9:48
 */
public interface CityService {

    List<City> getCitylist();

    List<City> getCountryCity(String countryName);

    List<City> getCityByCountrys(List<Integer> ids);

}
