/**
 * 
 */
package com.stealthai.digitalid.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.stealthai.digitalid.model.CardModel;
import com.stealthai.digitalid.repository.CardRepository;

/**
 * @author Moon
 *
 */

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private CardRepository cardRepository;
	
	@GetMapping(value={"", "/", "/welcome","/home"})
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("list", cardRepository.findAll());
		System.out.println("home fired");
		return mv;
	}
	
	@GetMapping("/viewcard")
	public ModelAndView viewCard(@RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		CardModel card = cardRepository.getReferenceById(Integer.parseInt(id));
		System.out.println(card.toString());
		mv.setViewName("card");
		mv.addObject("card", card);
		return mv;
	}
	
}
