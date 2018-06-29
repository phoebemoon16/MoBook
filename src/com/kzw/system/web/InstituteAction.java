package com.kzw.system.web;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kzw.comm.vo.Msg;
import com.kzw.core.util.BeanUtil;
import com.kzw.core.util.JSON;
import com.kzw.core.util.web.ResponseUtils;
import com.kzw.system.entity.Institute;
import com.kzw.system.service.InstituteService;

@Controller
@RequestMapping("/inst")
public class InstituteAction {

	@Autowired
	private InstituteService instService;
	
	@RequestMapping("view")
	public String view() {
		return "system/institute_view";
	}
	
	@RequestMapping("list")
	public void list(HttpServletResponse response) {
		List<Institute> list = instService.listAll();
		String json = new JSON(list).buildWithFilters(3);
		ResponseUtils.renderJson(response, json);
	}
	
	/**
	 * 保存
	 * */
	@RequestMapping("save")
	@ResponseBody
	public Msg save(Institute inst, Integer parentId) {
		if (inst.getId() == null) {
			inst.setLeaf(true);
			inst.setLevel(0);
			
			if(parentId != null) {
				Institute parent = instService.get(parentId);
				if(parent.getLeaf()) {
					parent.setLeaf(false);
				}
				inst.setLevel(parent.getLevel() + 1);
				inst.setParent(parent);
			}
			
			instService.saveOrUpdate(inst);
		} else {
			Institute orgInstitute = instService.get(inst.getId());
			try {
				BeanUtil.copyNotNullProperties(orgInstitute, inst);		
				instService.saveOrUpdate(orgInstitute);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return new Msg(true);
	}
	
	@RequestMapping("get/{id}")
	public String get(@PathVariable("id")int id, Model model) {
		Institute inst = instService.get(id);
		model.addAttribute("inst", inst);
		return "system/institute_form";
	}
	
	@RequestMapping("toAdd")
	public String toAdd(Model model) {
		List<String[]> insts = instService.treeAll();
		model.addAttribute("insts", insts);
		return "system/institute_form";
	}
}
