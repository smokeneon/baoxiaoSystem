package leondon.dao;

import leondon.bean.Office;
import leondon.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16下午9:45
 * @Version 1.0
 */
public class OfficeDao {
    public static List<Office> findOfficeList() throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        return queryRunner.query("select * from office", new BeanListHandler<Office>(Office.class));
    }

    public boolean checkOfficeNum(String office_num) throws SQLException {
        Office office = null;
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from office where office_num = ?";
        office = queryRunner.query(sql, new BeanHandler<Office>(Office.class), office_num);
        if (office==null){
            return  true;
        }else {
            return false;
        }
    }

    public int officeAdd(Office office) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        int result = queryRunner.update("insert into office(office_num,office_name,office_manager) values(?,?,?);",office.getOffice_num(),office.getOffice_name(),office.getOffice_manager());
        return  result;
    }
}
