package leondon.service;

import leondon.dao.OfficeDao;
import leondon.bean.Office;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16下午9:43
 * @Version 1.0
 */
public class OfficeService {
    private OfficeDao officeDao = new OfficeDao();
    public List<Office> OfficeList() {
        try {

            return  officeDao.findOfficeList();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int AddOffice(Office office) throws SQLException {
        boolean checkOffice = officeDao.checkOfficeNum(office.getOffice_num());
        if (checkOffice) {
            return officeDao.officeAdd(office);
        }
        return 0;
    }
}
