package com.kwon.jun261xj.menu;

import java.util.List;

public interface MenuMapper {
	public abstract List<Menu> get(MenuSelector ms);
	public abstract int getAllMenuCount(); 
}
