package test;

import com.yang.dao.CartMapper;
import com.yang.domain.Cart;
import com.yang.domain.CartExample;
import junit.framework.Assert;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class TestCart {
    public void getCartTest(){
        SqlSession session = MyBatisUtil.getSession();
        try{
            CartMapper cartDao = session.getMapper(CartMapper.class);
            List<Cart> carts = cartDao.selectByExample(new CartExample());
            Assert.assertEquals(1,carts.size());
        }finally {
            session.close();
        }
    }
}
