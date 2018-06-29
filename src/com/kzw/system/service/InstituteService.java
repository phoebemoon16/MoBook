package com.kzw.system.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kzw.core.service.DefaultEntityManager;
import com.kzw.system.entity.Institute;

@Service
@Transactional
public class InstituteService extends
		DefaultEntityManager<Institute, Integer> {

	/**
	 * 以树形结构返回
	 */
	@Transactional(readOnly = true)
	public List<Institute> listAll() {
		List<Institute> result = new ArrayList<Institute>();
		String hql = "from Institute where parent is null order by sn asc";
		List<Institute> roots = getEntityDao().find(hql);
		for (Institute inst : roots) {
			result.add(inst);
			getChildren(inst, result);
		}
		return result;
	}

	//获得子列表	
	private void getChildren(Institute inst, List<Institute> list) {
		String hql = "from Institute where parent=? order by sn asc";
		List<Institute> insts = findByHQL(hql, inst);
		for (Institute d : insts) {
			list.add(d);
			getChildren(d, list);
		}
	}

	//事务（只读）
	@Transactional(readOnly = true)
	public List<String[]> treeAll() {
		List<String[]> result = new ArrayList<String[]>();
		result.add(new String[] { "", "root" });
		List<Institute> list = listAll();
		for (Institute m : list) {
			StringBuffer sb = new StringBuffer("├─");
			for (int i = 0; i < m.getLevel(); i++) {
				sb.append("──");
			}
			sb.append(m.getIname());
			result.add(new String[] { m.getId() + "", sb.toString() });
		}
		return result;
	}
}
