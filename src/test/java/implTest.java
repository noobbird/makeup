import com.yang.dao.CartMapper;
import com.yang.dao.VipMapper;
import com.yang.domain.Cart;
import com.yang.domain.Vip;
import com.yang.domain.VipExample;
import com.yang.service.CartService;
import com.yang.service.ProfileService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import sun.java2d.cmm.Profile;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml", "classpath:SpringMVC.xml"})
public class implTest {
    @Autowired
    ProfileService profileService;
    @Autowired
    CartService cartService;
    @Autowired
    VipMapper vipMapper;

    @Test
    public void find(){
        List<Cart> carts=cartService.getCart();
        System.out.println(carts.size());
    }
    @Test
    public void vipMapper(){
        VipExample example = new VipExample();
        example.createCriteria().andVidEqualTo("MY103821").
                andVPasswordEqualTo("jiojio");
        List<Vip> examples = vipMapper.selectByExample(example);
//        Vip vip = vipMapper.selectByPrimaryKey(1);
        System.out.println(examples);

    }
    @Test
    public void profileTest(){
        Vip vip = profileService.getProfile("MY103821");
        System.out.println(vip);

    }

}
