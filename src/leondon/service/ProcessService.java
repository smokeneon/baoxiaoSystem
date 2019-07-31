package leondon.service;

import leondon.bean.Process;
import leondon.dao.ProcessDao;

import java.sql.SQLException;
import java.util.List;

/**
 * @Autor:leondon
 * @Date:19-4-16下午11:54
 * @Version 1.0
 */
public class ProcessService {
    private ProcessDao processDao = new ProcessDao();
    public List<Process> ProcessList() {
        System.out.println("process------------------------------------2");
        try {
            System.out.println("process------------------------------------3");
            return  processDao.findProcessList();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int AddProcess(Process process) throws SQLException {
        System.out.println("---------------1");

        boolean checkProcess = processDao.checkProcessNum(process.getProcess_num());
        if (checkProcess) {
            System.out.println("---------------6");
            return processDao.processAdd(process);
        }
        return 0;
    }
}
