/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ntt.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author trant
 */
@Controller
@RequestMapping("/admin")
public class AdminControllers {

    @GetMapping("/")
    public String Admin() {
        return "admin-index";
    }
    @RequestMapping("/dangnhap")
    public String AdminLogin() {
        return "login-base";
    }
    @RequestMapping("/sanpham")
    public String AdminProduct() {
        return "admin-product";
    }
    @RequestMapping("/donhang")
    public String AdminOrder() {
        return "admin-order";
    }
    @RequestMapping("/user")
    public String AdminUser() {
        return "admin-user";
    }
    @RequestMapping("/baocao")
    public String AdminReport() {
        return "admin-report";
    }
}
