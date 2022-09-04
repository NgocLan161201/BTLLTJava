/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ntt.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author trant
 */
@Controller
public class IndexController {

    @RequestMapping("/")
    public String index(Model model,
            @RequestParam Map<String, String> params) {
        List<String> categories = new ArrayList<>();
        categories.add("Bách hóa");
        categories.add("Điện tử");
        categories.add("Gia dụng");
        categories.add("Thời trang nam");
        categories.add("Thời trang nữ");
        categories.add("GIày nam");
        categories.add("GIày nữ");
        model.addAttribute("categories", categories);

        List<String> products = new ArrayList<>();
        products.add("Iphone12");
        products.add("Iphone13");
        products.add("Iphone12");
        products.add("Iphone13");
        products.add("Galaxy Note 10");
        products.add("Iphone13");
        products.add("Iphone12");
        products.add("Iphone13");

        String kw = params.get("kw");
        if (kw == null) {
            model.addAttribute("product", products);
        } else {
            model.addAttribute("product", products.stream().filter(p -> p.contains(kw)).collect(Collectors.toList()));
        }
        return "index";
    }

    @RequestMapping("/dangnhap")
    public String Login() {
        return "login";
    }

    @RequestMapping("/dangky")
    public String Register() {
        return "register";
    }

    @RequestMapping("/chitietsanpham")
    public String DetailProduct() {
        return "detailProduct";
    }

    @RequestMapping("/sanpham")
    public String Products(Model model, @RequestParam Map<String, String> params) {
        List<String> products = new ArrayList<>();
        products.add("Iphone12");
        products.add("Iphone13");
        products.add("Iphone12");
        products.add("Iphone13");
        products.add("Galaxy Note 10");
        products.add("Iphone13");
        products.add("Iphone12");
        products.add("Iphone13");

        model.addAttribute("product", products);
        return "products";
    }
    @RequestMapping("/dangkycuahang")
    public String RegistrationShop() {
        return "registrationShop";
    }
    @RequestMapping("/cuahang")
    public String Shop(Model model, @RequestParam Map<String, String> params) {
        List<String> products = new ArrayList<>();
        products.add("Iphone12");
        products.add("Iphone13");
        products.add("Iphone12");
        products.add("Iphone13");
        products.add("Galaxy Note 10");
        products.add("Iphone13");
        products.add("Iphone12");
        products.add("Iphone13");

        model.addAttribute("product", products);
        return "shop";
    }

}
