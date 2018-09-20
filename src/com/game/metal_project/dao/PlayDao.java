package com.game.metal_project.dao;

import com.game.metal_project.model.PlayModel;

public interface PlayDao {
	
	//登录
	public PlayModel login(PlayModel pm);
	
	//注册
	public int regist(PlayModel pm);
}
