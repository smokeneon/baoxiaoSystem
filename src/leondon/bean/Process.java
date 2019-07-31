package leondon.bean;

/**
 * @Autor:leondon
 * @Date:19-4-16下午11:51
 * @Version 1.0
 */
public class Process {
    public int getProcess_id() {
        return process_id;
    }

    public void setProcess_id(int process_id) {
        this.process_id = process_id;
    }

    public String getProcess_num() {
        return process_num;
    }

    public void setProcess_num(String process_num) {
        this.process_num = process_num;
    }

    public String getProcess_name() {
        return process_name;
    }

    @Override
    public String toString() {
        return "Process{" +
                "process_id=" + process_id +
                ", process_num='" + process_num + '\'' +
                ", process_name='" + process_name + '\'' +
                '}';
    }

    public void setProcess_name(String process_name) {
        this.process_name = process_name;
    }

    private  int process_id;
    private  String process_num;
    private  String process_name;
}
