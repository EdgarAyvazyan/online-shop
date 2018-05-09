package com.mainserver.online.shop.service;

import com.mainserver.online.shop.domain.ListElement;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class ProductService {

    public List<ListElement> getProductList() {
        //todo load from db
        ListElement listElement = new ListElement();
        listElement.setId(1);
        listElement.setUrl("https://s.list.am/r/986/23991986.webp");
        listElement.setName("Samsung Galaxy 7s heraxosi patyan");
        listElement.setPrice(5000);
        return Arrays.asList(listElement, listElement);
    }
}