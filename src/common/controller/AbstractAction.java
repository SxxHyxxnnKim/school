package common.controller;
//Action �������̽��� ��ӹ޴�
//�߻�Ŭ���� : execute() �߻�޼ҵ带 ��ӹ޾� ������ ���� 
abstract public class AbstractAction implements Action {

	private String viewPage;//������ ��������
	private boolean isRedirect=false;
	//������ �̵������ redirect����̸� true, forward����̸� false
	
	//setter, getter
	public String getViewPage() {
		return viewPage;
	}
	public void setViewPage(String viewPage) {
		this.viewPage = viewPage;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}