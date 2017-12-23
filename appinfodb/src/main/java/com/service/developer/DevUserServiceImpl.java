package com.service.developer;

import com.dao.devuser.DevUserMapper;
import com.entity.DevUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/12/18.
 */
@Service
public class DevUserServiceImpl implements DevUserService {
    @Resource
    private DevUserMapper mapper;
    public DevUser login(String devCode, String devPassword) throws Exception{
        // TODO Auto-generated method stub
        DevUser user = null;
        user = mapper.getLoginUser(devCode);
        //匹配密码
        if(null != user){
            if(!user.getDevPassword().equals(devPassword))
                user = null;
        }
        return user;
    }

    @Override
    public Integer register(DevUser devUser) {
        return mapper.register(devUser);
    }
}
