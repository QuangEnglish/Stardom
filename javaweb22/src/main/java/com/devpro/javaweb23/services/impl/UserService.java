package com.devpro.javaweb23.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.devpro.javaweb23.dto.UserSearch;
import com.devpro.javaweb23.model.Email;
import com.devpro.javaweb23.model.User;
import com.devpro.javaweb23.services.BaseService;
import com.devpro.javaweb23.services.PagerData;


@Service
public class UserService extends BaseService<User> {

	@Override
	protected Class<User> clazz() {
		return User.class;
	}

	public User loadUserByUsername(String userName) {
		String sql = "select * from tbl_users u where u.username = '" + userName + "' and status = 1";
		return this.getEntityByNativeSQL(sql);
	}
	public PagerData<User> searchUser(UserSearch searchModel) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_users p WHERE 1=1";

		if (searchModel != null) {

			// tìm kiếm theo title và description
			if (!StringUtils.isEmpty(searchModel.getKeyword())) {
				sql += " and (p.username like '%" + searchModel.getKeyword() + "%'" + 
						     " or p.id like '%" + searchModel.getKeyword() + "%'" + 
						     " or p.phone like '%" + searchModel.getKeyword() + "%'" + 
						     " or p.email like '%" + searchModel.getKeyword() + "%')";
			}

		}
		
		return getEntitiesByNativeSQL(sql, searchModel.getPage());
	}

}
