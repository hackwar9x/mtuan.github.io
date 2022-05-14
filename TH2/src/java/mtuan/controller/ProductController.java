/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mtuan.controller;

import javax.management.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author hackw
 */
@Controller
@RequestMapping
public class ProductController {
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String showProductList(ModelMap modelMap){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("TH2");
        EntityManager em = factory.createEntityManager();
        
        Query q = em.createNamedQuery("Product.findAll", Product.class);
        List<Product> productList = q.getResultList();
        
        modelMap.put("productList", productList);
        
        return "list";
    }
    @RequestMapping(value = "/view",method = RequestMethod.GET)
    public String view(){
        return "list";
    }
    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public String save(){
        return "list";
    }
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public String delete(){
        return "list";
    }
}
