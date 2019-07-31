package leondon.dao;

import leondon.bean.Department;
import leondon.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16上午8:45
 * @Version 1.0
 */
public class DepartmentDao {
    public List<Department> findUserList() throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        return queryRunner.query("select * from department", new BeanListHandler<Department>(Department.class));
    }

    public boolean checkDepartmentNum(String department_num) throws SQLException {
        System.out.println("-------------------------------------DepartmentDao----------0");
            Department department = null;
            QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
            String sql = "select * from department where department_num = ?";
            department = queryRunner.query(sql, new BeanHandler<Department>(Department.class), department_num);
        System.out.println("-------------------------------------DepartmentDao----------1");
            if (department==null){
                System.out.println("-------------------------------------DepartmentDao----------2");
                return  true;
            }else {
                System.out.println("-------------------------------------DepartmentDao----------3");
                return false;
            }
    }

    public int departmentAdd(Department department) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        int result = queryRunner.update("insert into department(department_num,department_name,department_manager) values(?,?,?)",department.getDepartment_num(),department.getDepartment_name(),department.getDepartment_manager());
        return  result;
    }

}
