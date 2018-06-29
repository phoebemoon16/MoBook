package com.kzw.system.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kzw.comm.vo.Msg;
import com.kzw.core.orm.Page;
import com.kzw.core.orm.PageRequest;
import com.kzw.core.orm.StringPropertyFilter;
import com.kzw.core.util.BeanUtil;
import com.kzw.core.util.JSON;
import com.kzw.core.util.MD5;
import com.kzw.core.util.web.ResponseUtils;
import com.kzw.system.entity.AppUser;
import com.kzw.system.service.AppUserService;

@Controller
@RequestMapping("/reading")
public class ReadingTimeAction {

	@Autowired
//	private AppUserService userService;
	
	@RequestMapping("view")
	public String view() {
		return "system/Reading_view";
	}
	
	
}
