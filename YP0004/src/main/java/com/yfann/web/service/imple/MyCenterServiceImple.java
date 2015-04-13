package com.yfann.web.service.imple;

import com.yfann.web.dao.MyCenterDao;
import com.yfann.web.service.MyCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Simon on 2015/4/13.
 */
@Service("myCenterService")
public class MyCenterServiceImple implements MyCenterService {
    @Autowired
    private MyCenterDao myCenterDao;

}
