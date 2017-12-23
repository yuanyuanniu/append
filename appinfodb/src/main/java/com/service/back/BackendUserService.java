package com.service.back;

import com.entity.BackendUser;

/**
 * Created by Administrator on 2017/12/19.
 */
public interface BackendUserService {
    public BackendUser login(String userCode, String userPassword) throws Exception;
}
