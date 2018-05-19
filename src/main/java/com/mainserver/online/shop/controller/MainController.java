package com.mainserver.online.shop.controller;

import com.mainserver.online.shop.domain.dto.ListElement;
import com.mainserver.online.shop.domain.entity.Product;
import com.mainserver.online.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller("/")
public class MainController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/")
    public ModelAndView index(@RequestParam(value = "keyword",
            required = false, defaultValue = "") String keyword) {
        ModelAndView modelAndView = new ModelAndView("index");
        List<ListElement> productList = productService.getProductList(keyword);
        modelAndView.addObject("products", productList);
        return modelAndView;
    }

    @RequestMapping("/item/{productId}")
    public ModelAndView productPage(@PathVariable("productId") int id) {
        ModelAndView modelAndView = new ModelAndView("product");
        Product product = productService.getProductById(id);
        modelAndView.addObject("product", product);
        return modelAndView;
    }
}