package leondon.bean;

/**
 * @Autor:leondon
 * @Date:19-4-18下午8:47
 * @Version 1.0
 */
public class Expense {

    private String expense_id;//报销id
    private String expense_num;//报销单号
    private String create_current_date;//获取提交报销单的日期
    private String username;//获取创建报销单的用户
    private String create_consumption_date ;//获取消费日期
    private String create_cost_category;//获取消费类别
    private String create_fee;//获取消费金额
    private String create_invoice_type;//获取发票类型
    private String create_reimbursement_reasons;//获取报销事由
    private String create_file;//获取附件
    private String request_status;//提交状态
    private String shen_pi_status;//审批状态
    private String pay_status;//付款状态

    @Override
    public String toString() {
        return "Expense{" +
                "expense_id='" + expense_id + '\'' +
                ", expense_num='" + expense_num + '\'' +
                ", create_current_date='" + create_current_date + '\'' +
                ", username='" + username + '\'' +
                ", create_consumption_date='" + create_consumption_date + '\'' +
                ", create_cost_category='" + create_cost_category + '\'' +
                ", create_fee='" + create_fee + '\'' +
                ", create_invoice_type='" + create_invoice_type + '\'' +
                ", create_reimbursement_reasons='" + create_reimbursement_reasons + '\'' +
                ", create_file='" + create_file + '\'' +
                ", request_status='" + request_status + '\'' +
                ", shen_pi_status='" + shen_pi_status + '\'' +
                ", pay_status='" + pay_status + '\'' +
                '}';
    }

    public String getExpense_id() {
        return expense_id;
    }

    public void setExpense_id(String expense_id) {
        this.expense_id = expense_id;
    }

    public String getExpense_num() {
        return expense_num;
    }

    public void setExpense_num(String expense_num) {
        this.expense_num = expense_num;
    }

    public String getCreate_current_date() {
        return create_current_date;
    }

    public void setCreate_current_date(String create_current_date) {
        this.create_current_date = create_current_date;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCreate_consumption_date() {
        return create_consumption_date;
    }

    public void setCreate_consumption_date(String create_consumption_date) {
        this.create_consumption_date = create_consumption_date;
    }

    public String getCreate_cost_category() {
        return create_cost_category;
    }

    public void setCreate_cost_category(String create_cost_category) {
        this.create_cost_category = create_cost_category;
    }

    public String getCreate_fee() {
        return create_fee;
    }

    public void setCreate_fee(String create_fee) {
        this.create_fee = create_fee;
    }

    public String getCreate_invoice_type() {
        return create_invoice_type;
    }

    public void setCreate_invoice_type(String create_invoice_type) {
        this.create_invoice_type = create_invoice_type;
    }

    public String getCreate_reimbursement_reasons() {
        return create_reimbursement_reasons;
    }

    public void setCreate_reimbursement_reasons(String create_reimbursement_reasons) {
        this.create_reimbursement_reasons = create_reimbursement_reasons;
    }

    public String getCreate_file() {
        return create_file;
    }

    public void setCreate_file(String create_file) {
        this.create_file = create_file;
    }

    public String getRequest_status() {
        return request_status;
    }

    public void setRequest_status(String request_status) {
        this.request_status = request_status;
    }

    public String getShen_pi_status() {
        return shen_pi_status;
    }

    public void setShen_pi_status(String shen_pi_status) {
        this.shen_pi_status = shen_pi_status;
    }

    public String getPay_status() {
        return pay_status;
    }

    public void setPay_status(String pay_status) {
        this.pay_status = pay_status;
    }
}
