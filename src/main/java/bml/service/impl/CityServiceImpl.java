package bml.service.impl;

import bml.dao.CityDao;
import bml.entity.City;
import bml.service.CityService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * User: 月影
 * Date: 2019/12/10 9:50
 */
@Service
public class CityServiceImpl implements CityService {

    final CityDao cityDao;
    public CityServiceImpl(CityDao cityDao) {
        this.cityDao = cityDao;
    }

    @Override
    public List<City> getCitylist() {
        return cityDao.getCitys();
    }

    @Override
    public List<City> getCountryCity(String countryName) {
        return cityDao.getCountrycity(countryName);
    }

    @Override
    public List<City> getCityByCountrys(List<Integer> ids) {
        return cityDao.selectCitysByName(ids);
    }
}
