package com.helloworld.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/hello")
public class HelloController {

	@GetMapping("/hello1")
	public String atividade1() {
		return "Pra realizar essa atividade, utilizei a Persistência e a Atenção aos Detalhes!";
	}

	@GetMapping("/hello2")
	public String atividade2() {
		return "O objetivo de aprendizado da semana é absorver todo o conhecimento em Spring!";
	}
	
}
