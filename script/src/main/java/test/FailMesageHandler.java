package test;

public class FailMesageHandler implements MessageHandler {

	@Override
	public void showMessage() {
		System.out.println("불합격입니다.");
	}
}