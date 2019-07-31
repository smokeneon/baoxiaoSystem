package leondon.dao;

import leondon.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;

/**
 * @Autor:leondon
 * @Date:19-5-6下午8:56
 * @Version 1.0
 */
public class NormalDao {

    public int submitShenPi(String expense_num) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        return queryRunner.update("update expense set request_status=1 where expense_num=?", expense_num);
    }

    public int updateExpenseFile(String expense_num, String filename) throws SQLException {
        System.out.println("dao  "+expense_num+filename);
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "update expense set create_file = ? where expense_num = ?";
        int result = queryRunner.update(sql,filename,expense_num);
        System.out.println("result"+result);
        return result;
    }
}
