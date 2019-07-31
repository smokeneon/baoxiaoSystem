package leondon.dao;

import leondon.bean.Expense;
import leondon.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-5-7上午10:46
 * @Version 1.0
 */
public class ApprovalDao {
    public List<Expense> approvalList(String office_num) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        List<Expense> query = queryRunner.query("select expense.* from expense left join user on expense.username = user.username where user.office_num = ? and request_status=1;", new BeanListHandler<Expense>(Expense.class), office_num);
        System.out.println("approvalDao"+query);
        return  query;
    }

    public int changeShenpiStatus(String expense_num, int agreeStatus) throws SQLException {
        System.out.println("approvaldao"+agreeStatus+"   "+expense_num);
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "update expense set shen_pi_status = ? where expense_num = ?";
        int result = queryRunner.update(sql, agreeStatus,expense_num);
        System.out.println("resultchangeshenpiStatus dao"+result);
        return  result;



    }
}
