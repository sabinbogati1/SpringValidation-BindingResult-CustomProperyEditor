
package com.sabin.Gontuseries.Controller;


import com.sabin.Gontuseries.Editor.StudentNameEditor;
import com.sabin.Gontuseries.Model.Student;
import java.util.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import java.text.SimpleDateFormat; 
import javax.validation.Valid;
import org.springframework.beans.propertyeditors.CustomDateEditor;


@Controller
public class DefaultController {
    
    
    @InitBinder
    public void initBinder(WebDataBinder binder){
       
        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy--MM--dd");
        binder.registerCustomEditor(Date.class, "studentDOB", new CustomDateEditor(dateFormat, false));
        binder.registerCustomEditor(String.class, "studentName", new StudentNameEditor());
        
    }
   
    
      @RequestMapping(value = "/",method = RequestMethod.GET)
    public String sllo(){
        
        
        return "index";
    }
    
    
    @RequestMapping(value = "/addForm", method = RequestMethod.GET)
    public ModelAndView addForm(){
        
        ModelAndView model= new ModelAndView("addForms");
        
        return  model;
        
    }
    
    
   @RequestMapping(value = "/submitForm", method = RequestMethod.POST)
    public ModelAndView submitForm(@Valid @ModelAttribute("student1") Student student , BindingResult result ){
        
        
        if (result.hasErrors()) {
           ModelAndView model1= new ModelAndView("addForms");
           return model1;
       }
        
        
        
        
        ModelAndView model= new ModelAndView("SucessForm");
    //    model.addObject("name", student.getStudentName());
        
        return  model;
        
    }
    
   
    
    
    
    
    
   
    
  
    
    
    
}
