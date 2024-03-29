package com.greenart.movie_service.controller; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.greenart.movie_service.mapper.MovieMapper; 

@Controller 
public class MainController {
    @Autowired MovieMapper movie_mapper; 
    @GetMapping("/") 
    public String getMain(Model model,String keyword){ 
        model.addAttribute("showingList",movie_mapper.selectHomeItemList(1,keyword));
        model.addAttribute("exceptList",movie_mapper.selectHomeItemList(0,keyword));
        model.addAttribute("streamingList",movie_mapper.selectHomeItemList(2,keyword));
        model.addAttribute("keyword",keyword);
        return "/index";
    }
} 
