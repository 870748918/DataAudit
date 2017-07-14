package cn.com.gd.dao;

import cn.com.gd.pojo.Admin;
import org.springframework.stereotype.Service;

/**
 * Created by AMD on 2017/7/06 0006.
 */
@Service
public interface AdminDao {
    //通过用户ID和用户密码查询
     Admin findByUserIDAndUserPass(Admin admin);
}
