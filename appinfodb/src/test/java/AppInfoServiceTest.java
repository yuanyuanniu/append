import com.service.developer.AppInfoService;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/12/18.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class AppInfoServiceTest {
    @Resource
    private AppInfoService appInfoService;

  /*  @Test
    public void appList() {
        AppInfo appInfo=new AppInfo();


        try {
            List<AppInfo> list = appInfoService.getAppInfoList(appInfo, 1, 5);
            for (AppInfo info : list) {
                System.out.println(info);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


    }*/
}