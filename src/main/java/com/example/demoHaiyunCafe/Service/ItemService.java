package com.example.demoHaiyunCafe.Service;

import com.example.demoHaiyunCafe.Bean.Item;

import java.util.List;

public interface ItemService {
    //查找所有菜品
    List<Item> findAll();

    Item findById(Integer id);

    Item saveOrUpdateItem(Item item);

    void deleteById(Integer id);

    Item findByItemname(String itemname);

}
