package com.mainserver.online.shop.controller;

import com.mainserver.online.shop.domain.ListElement;
import com.mainserver.online.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller("/")
public class MainController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/")
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView("index");
        List<ListElement> productList = productService.getProductList();
        modelAndView.addObject("products", productList);
        return modelAndView;
    }

}