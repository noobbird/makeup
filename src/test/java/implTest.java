import com.yang.dao.CartMapper;
import com.yang.domain.Cart;
import com.yang.service.CartService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml", "classpath:SpringMVC.xml"})
public class implTest {
    @Autowired
    CartMapper cartMapper;
    @Autowired
    CartService cartService;

    @Test
    public void find(){
        List<Cart> carts=cartService.getCart();
        System.out.println(carts.size());
    }

}
