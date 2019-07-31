package leondon.dao;

import leondon.bean.Process;
import leondon.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16下午11:59
 * @Version 1.0
 */
public class ProcessDao {
    public List<Process> findProcessList() throws SQLException {
        System.out.println("process------------------------------------4");
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        return queryRunner.query("select * from bxprocess", new BeanListHandler<Process>(Process.class));
    }

    public boolean checkProcessNum(String process_num) throws SQLException {
        System.out.println("---------------2");
        Process process = null;
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        System.out.println("---------------3");
        String sql = "select * from bxprocess where process_num = ?";
        process = queryRunner.query(sql, new BeanHandler<Process>(Process.class), process_num);
        System.out.println("---------------4");
        if (process==null){
            System.out.println("---------------5");
            return  true;
        }else {
            System.out.println("---------------5false");
            return false;
        }
    }

    public int processAdd(Process process) throws SQLException {
        System.out.println("---------------7");
        System.out.println(process.getProcess_num()+process.getProcess_name());
        QueryRunner queryRunner = new QueryRunner(DataSourceUtils.getDataSource());
        int result = queryRunner.update("insert into bxprocess(process_num,process_name) values(?,?);",process.getProcess_num(),process.getProcess_name());
        System.out.println("---------------8"+result);
        return  result;
    }
}
