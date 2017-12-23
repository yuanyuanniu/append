import com.entity.DevUser;
import com.service.developer.DevUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class DevUserServiceTest {
    @Resource
    private DevUserService devUserService;
    @Test
    public void login() throws Exception {
        DevUser user=devUserService.login("test001","123456");
        System.out.println(user.getDevName());
    }

}
