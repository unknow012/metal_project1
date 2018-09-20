package com.game.metal_project.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.game.metal_project.bean.PlayBean;
import com.game.metal_project.dao.PlayDao;
import com.game.metal_project.model.PlayModel;

@Controller
@RequestMapping(value="play")
public class PlayController {
	@Resource
	public PlayBean playBean;
	
	@ResponseBody
	@RequestMapping(value="/login")
	public String login(HttpSession se,PlayModel pm){
		PlayModel play=playBean.login(pm);
		if(play!=null){
			se.setAttribute("play", play);
			return "ok";
		}
		else{
			return "error";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/regist")
	public String regist(PlayModel pm){
		pm.setP_gold(0);
		pm.setP_exp(0);
		pm.setP_max_garage(3);
		playBean.regist(pm);
		return "ok";
	}
}
