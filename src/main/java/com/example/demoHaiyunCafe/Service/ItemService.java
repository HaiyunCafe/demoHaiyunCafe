package com.example.demoHaiyunCafe.Service;

import com.example.demoHaiyunCafe.Bean.Item;

import java.util.List;

public interface ItemService {
    //查找所有菜品
    List<Item> findAll();

    long countItem();
    
    Item saveOrUpdateItem(Item item);

    void deleteById(Integer id);

    Item findByItemname(String itemname);
    
    Item findById(Integer id);

    List<Item> findAllByItemname(String itemname);

    List<Item> findAllByType(String type);

    List<Item> findAllByPrice(Integer price);
    
    
}
