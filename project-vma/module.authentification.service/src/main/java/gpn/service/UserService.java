package gpn.service;

import gpn.contract.Claim;
import gpn.contract.SystemUser;
import gpn.interfaces.providers.IUserProvider;
import gpn.interfaces.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class UserService implements IUserService {

    @Autowired
    private IUserProvider userProvider;

    @Override
    public List<Claim> getClaims(Long userId)  {
        return userProvider.getClaims(userId);
    }

    @Override
    public SystemUser getUser(String userName) {
        SystemUser u1 = new SystemUser();
        u1.setUserName("1");
        u1.setId(1L);
        return u1;
       // return userProvider.getUser(userName);
    }

    @Transactional
    @Override
    public boolean update(SystemUser user) {
//        boolean userExist = userProvider.isUserExists(user.getUserName());
//        userProvider.update(user);
//        return !userExist;
        return true;
    }
}
