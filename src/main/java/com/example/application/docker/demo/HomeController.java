package com.example.application.docker.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;
import org.apache.commons.collections4.CollectionUtils;

import java.util.Arrays;
import java.util.List;

@RestController
public class HomeController {

    @RequestMapping("/")
    public String home(){
        String[] list1 = {"A", "C"};
        String[] list2 = {"B", "D"};
        List<String> l1 = Arrays.asList(list1);
        List<String> l2 = Arrays.asList(list2);
        List<String> mergedList = CollectionUtils.collate(l1, l2);
        return "List1: " + l1 + "\nList2: " + l2 + "\nMerged list: " + mergedList;
    }
}
