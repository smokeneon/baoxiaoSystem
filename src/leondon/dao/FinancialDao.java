package leondon.dao;

import leondon.bean.Expense;
import leondon.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-5-7下午11:55
 * @Version 1.0
 */
public class FinancialDao {
    public static Expense findExpenseByExpenseNum(String expense_num) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select * from expense where expense_num =?";
        Expense expense=queryRunner.query(sql, new BeanHandler<Expense>(Expense.class),expense_num);
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11"+expense);
        return  expense;
    }

    public List<Expense> financialList() throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        List<Expense> query = queryRunner.query("select * from expense where request_status=1 and shen_pi_status=1", new BeanListHandler<Expense>(Expense.class));
        System.out.println("financialDao"+query);
        return  query;
    }

    public int changePayStatus(String expense_num, int payStatus2) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "update expense set pay_status = ? where expense_num = ?";
        int result = queryRunner.update(sql, payStatus2,expense_num);
        return  result;
    }
}
