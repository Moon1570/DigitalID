package com.stealthai.digitalid.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.stealthai.digitalid.model.CardModel;
import com.stealthai.digitalid.repository.CardRepository;

import ezvcard.Ezvcard;
import ezvcard.VCard;
import ezvcard.VCardVersion;
import ezvcard.io.chain.ChainingHtmlWriter;
import ezvcard.property.StructuredName;

@Controller
@RequestMapping("/card")
public class CardController {

	@Autowired
	private CardRepository cardRepository;
	
	@GetMapping("/card/all")
	public List<CardModel> getAllCards(){
		return cardRepository.findAll();
	}
	
	@RequestMapping("/add")
	public String addCardInfo() {
		return "card_info_form";
	}
	
	@PostMapping("/new")
	public ModelAndView addNewCard(@ModelAttribute("card") CardModel cardModel) {
		cardRepository.save(cardModel);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		mv.addObject("list", cardRepository.findAll());
		return mv;
	}
	
	@GetMapping("/vcf")
	@ResponseBody
	public ChainingHtmlWriter getVCF(@RequestParam("id") String id) throws FileNotFoundException {
		CardModel cardModel = cardRepository.getReferenceById(Integer.parseInt(id));
		
		VCard vcard = new VCard();

		StructuredName n = new StructuredName();
		n.setFamily("Doe");
		n.setGiven("Jonathan");
		n.getPrefixes().add("Mr");
		vcard.setStructuredName(n);

		vcard.setFormattedName("John Doe");

		String str = Ezvcard.write(vcard).version(VCardVersion.V4_0).go();
	
	
		return Ezvcard.writeHtml(vcard);
		
	}
}
