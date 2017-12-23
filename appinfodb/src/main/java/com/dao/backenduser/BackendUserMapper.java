package com.dao.backenduser;

import com.entity.BackendUser;
import org.apache.ibatis.annotations.Param;

/**
 * Created by Administrator on 2017/12/19.
 */
public interface BackendUserMapper {
    public BackendUser getLoginUser(@Param("userCode")String userCode)throws Exception;


}
