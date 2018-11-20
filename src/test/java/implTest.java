import com.yang.dao.*;
import com.yang.domain.*;
import com.yang.service.*;
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
    ProfileService profileService;
    @Autowired
    CartService cartService;
    @Autowired
    VipMapper vipMapper;
    @Autowired
    AdminMapper adminMapper;
    @Autowired
    LoginService loginService;
    @Autowired
    VipManagerService vipManagerService;
    @Autowired
    PocketRecordMapper pocketRecordMappe;

    @Autowired
    PocketRecordService pocketRecordService;

    @Test
    public void testinsert(){
        PocketRecord pocketRecord = new PocketRecord();
        pocketRecord.setAmount(new Float(1000));
        pocketRecord.setType("1");
        pocketRecordMappe.insert(pocketRecord);
    }

    @Test
    public void findPocketRecord(){
        PocketRecord pocketRecord = new PocketRecord();
        pocketRecord.setRelatedVipid("MY103821");
       List<PocketRecord> pocketRecords = pocketRecordService.findPocketRecordByWhere(pocketRecord);
        for (PocketRecord pocket: pocketRecords
             ) {
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
            System.out.println(sdf.format(pocket.getTime()));
        }
    }

    @Test
    public void find(){
        Cart cart = new Cart();
        cart.setProductId(102);
        List<Cart> carts=cartService.findCartByWhere(cart);
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
    //test admin login
    @Test
    public void suloginTest(){
        int res = loginService.sulogin("admin","admin123");
//        Admin admin = adminMapper.selectByPrimaryKey(1);
        System.out.println(res);
    }

    @Test
    public void insertVip(){
        Vip vip = new Vip();
        vip.setAddress("meishan");
        vip.setBankName("icbc");
        vip.setBankNumber("2323");
        vip.setoId(5);
        vip.setVid("meng");
        vip.setPayPassword("oijoij");
        vip.setRecommendVid("MY103821");
        Vip vip1 = vipManagerService.insert(vip);
        System.out.println(vip1);

    }

    @Test
    public void getAllVip(){
//        List<Vip> vips = vipManagerService.getAllVip();
//        System.out.println(vips.size());
        VipExample vipExample = new VipExample();
        vipExample.createCriteria().andRecommendVidEqualTo("MY103821");
        List<Vip> vips = vipMapper.selectByExample(vipExample);
        System.out.println(vips);
    }
    @Autowired
    VidGeneratorMapper vidGeneratorMapper;
    @Test
    public void getVid(){
        VidGenerator vidGenerator = vidGeneratorMapper.selectByPrimaryKey(0);
        vidGenerator.setSuffixNumber(vidGenerator.getSuffixNumber() + 1);
        vidGeneratorMapper.updateByPrimaryKey(vidGenerator);
        System.out.println(vidGenerator);
    }

    @Autowired
    AwardRecordMapper awardRecordMapper;
    @Test
    public void getRecmd(){
        List<RecommendHis> recommendHis= awardRecordMapper.selectRcmdHis();
        System.out.println(recommendHis);
    }
}
