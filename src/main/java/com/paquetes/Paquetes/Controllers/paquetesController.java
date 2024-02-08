package com.paquetes.Paquetes.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class paquetesController {

    @GetMapping("/")
    public String index() {
        return "index"; 
    }
    
}
