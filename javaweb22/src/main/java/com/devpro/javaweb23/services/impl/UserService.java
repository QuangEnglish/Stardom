package com.devpro.javaweb23.services.impl;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.devpro.javaweb23.dto.UserSearch;
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
	public User roleUserGuest(int userId) {
		String sql = "INSERT INTO tbl_users_roles (user_id, role_id)"
				+ "SELECT p.id, c.id"
				+ "FROM tbl_users p, tbl_roles c"
				+ "WHERE p.id = "+userId+" AND c.id = 19;";
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
