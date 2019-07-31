package leondon.service;

import leondon.bean.Department;
import leondon.dao.DepartmentDao;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16上午8:38
 * @Version 1.0
 */
public class DepartmentService {
    private DepartmentDao departmentDao = new DepartmentDao();

    public List<Department>  DepartmentList() {
        try {

            return  departmentDao.findUserList();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    //添加部门
    public int departmentAdd(Department department) throws SQLException {
        boolean checkUser = departmentDao.checkDepartmentNum(department.getDepartment_num());
        if (checkUser) {
            return departmentDao.departmentAdd(department);
        }
        return 0;
    }
}
