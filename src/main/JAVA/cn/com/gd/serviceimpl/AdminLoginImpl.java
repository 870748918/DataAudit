package cn.com.gd.serviceimpl;

import cn.com.gd.dao.AdminDao;
import cn.com.gd.pojo.Admin;
import cn.com.gd.service.AdminLogin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by AMD on 2017/7/06 0006.
 */
@Service("adminLogin")
public class AdminLoginImpl implements AdminLogin {
    @Resource
    private AdminDao adminDao;
    public Admin login(Admin admin) {
        return this.adminDao.findByUserIDAndUserPass(admin);
    }
}
