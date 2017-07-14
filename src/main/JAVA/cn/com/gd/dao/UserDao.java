package cn.com.gd.dao;

import cn.com.gd.pojo.Authorize;
import cn.com.gd.pojo.User;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

/**
 * Created by AMD on 2017/7/05 0005.
 */
@Service
public interface UserDao {
    //校验用户ID是否注册
     boolean ajaxValidateUserID(String UserID) throws Exception;
    //校验邮箱是否注册
     boolean ajaxValidateEmail(String Email) throws SQLException;
    // 添加用户信息
     void addUser (User user) throws SQLException;
    //修改用户权限
     void editAuth(Authorize auth) throws SQLException;
    //修改登陆时间
     void updataLoginTime(User user) throws SQLException;
    //删除用户
     void deleteUser(String userID) throws SQLException;
    //批量删除用户
     void batchDelete(String userIDs) throws SQLException;
    //更新用户信息
     void updateUser(User user) throws SQLException;
    //查询用户权限
     Authorize findAuth(String userID) throws SQLException;
}
