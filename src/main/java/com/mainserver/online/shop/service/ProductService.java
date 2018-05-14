package com.mainserver.online.shop.service;

import com.mainserver.online.shop.domain.dto.ListElement;
import com.mainserver.online.shop.domain.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {

    private SessionFactory sessionFactory = new Configuration()
            .configure()
            .buildSessionFactory();

    public List<ListElement> getProductList() {
        Session session = sessionFactory.openSession();

        List<Product> products = session
                .createQuery("from Product", Product.class)
                .list();

        List<ListElement> listElements = new ArrayList<>();

        for (Product product : products) {
            ListElement listElement = new ListElement();
            listElement.setId(product.getId());
            listElement.setName(product.getName());
            listElement.setPrice(product.getPrice());
            listElement.setUrl(product.getImages().get(0).getUrl());

            listElements.add(listElement);
        }

        session.close();

        return listElements;
    }

    public Product getProductById(int id) {
        Session session = sessionFactory.openSession();
        Product product = session.find(Product.class, id);
        session.close();
        return product;
    }
}