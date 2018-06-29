package com.kzw.gym.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.Null;

//import org.apache.jasper.tagplugins.jstl.core.If;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kzw.comm.vo.Msg;
import com.kzw.core.orm.Page;
import com.kzw.core.orm.PageRequest;
import com.kzw.core.orm.StringPropertyFilter;
import com.kzw.core.util.BeanUtil;
import com.kzw.core.util.JSON;
import com.kzw.core.util.web.ResponseUtils;
import com.kzw.gym.entity.Lockers;
import com.kzw.gym.entity.Member;
import com.kzw.gym.service.LockersService;
import com.kzw.gym.service.MemberService;



@Controller
@RequestMapping("/lockers")
public class LockersAction {
	
	@Autowired
	private LockersService lockersService ;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("view")
	public String view() {
		return "gym/lockers_view";
	}
	
	@RequestMapping("list")
	public void list(PageRequest pageRequest, HttpServletRequest request, HttpServletResponse response) {
		// 获得查询条件
		List<StringPropertyFilter> filters = StringPropertyFilter.buildFromHttpRequest(request);
		Page<Lockers> page = lockersService.search2(pageRequest, filters);
		String json = new JSON(page).buildWithFilters(3);
		ResponseUtils.renderJson(response, json);		
	}
	
	@RequestMapping("save")
	@ResponseBody
	public Msg save(Lockers lockers) {
		if (lockers.getId() == null) {
			lockersService.saveOrUpdate(lockers);
		} else {
			Lockers orgLockers = lockersService.get(lockers.getId());
			try {
				BeanUtil.copyNotNullProperties(orgLockers, lockers);
				lockersService.saveOrUpdate(orgLockers);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return new Msg(true);
	}
	@RequestMapping("get/{id}")
	public String get(@PathVariable("id")int id, Model model) {
		Lockers lockers = lockersService.get(id);
		model.addAttribute("lockers", lockers);
		return "gym/lockers_form";
	}
	
	@ResponseBody
	@RequestMapping("del")
	public Msg delete(String ids) {
		lockersService.remove(ids);
		return new Msg(true);
	}
	
	@InitBinder
	public void initBinder1(WebDataBinder binder) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(df, true));
	}
}
