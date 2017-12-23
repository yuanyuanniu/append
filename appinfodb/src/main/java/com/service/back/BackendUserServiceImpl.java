package com.service.back;

import com.dao.backenduser.BackendUserMapper;
import com.entity.BackendUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/12/19.
 */
@Service
public class BackendUserServiceImpl implements BackendUserService {
    @Resource
    private BackendUserMapper mapper;

    @Override
    public BackendUser login(String userCode, String userPassword) throws Exception {
        // TODO Auto-generated method stub
        BackendUser user = null;
        user = mapper.getLoginUser(userCode);
        //匹配密码
        if(null != user){
            if(!user.getUserPassword().equals(userPassword))
                user = null;
        }
        return user;
    }

}
