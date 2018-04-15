package com.jl.first;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test")
public class MyController {
	
	@RequestMapping("/myAjax.do")
	@ResponseBody
	public Object doAjax(String name,int age,HttpServletResponse response) throws IOException{
		System.out.println("name="+name);
		System.out.println("age="+age);
		List<Student> list= new ArrayList<Student>();
		list.add(new Student("jim","24"));
		list.add(new Student("jim2","25"));
		list.add(new Student("jim3","26"));
		return list;
		
	}

	

}
