package test;

public class SuccessMessageHandler implements MessageHandler {

	@Override
	public void showMessage() {
		System.out.println("합격입니다.");
	}
}