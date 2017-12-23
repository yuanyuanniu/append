package com.dao.devuser;

import com.entity.DevUser;
import org.apache.ibatis.annotations.Param;

/**
 * Created by Administrator on 2017/12/18.
 */
public interface DevUserMapper {
    //用户登录
    public DevUser getLoginUser(@Param("devCode") String devCode) throws Exception;
    //用户注册
    public Integer register(DevUser devUser);
}
