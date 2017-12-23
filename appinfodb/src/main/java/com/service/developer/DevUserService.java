package com.service.developer;

import com.entity.DevUser;

/**
 * Created by Administrator on 2017/12/18.
 */
public interface DevUserService {
    public DevUser login(String devCode, String devPassword) throws Exception;
    public Integer register(DevUser devUser);
}
