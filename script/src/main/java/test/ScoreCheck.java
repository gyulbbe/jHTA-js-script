package test;

public class ScoreCheck {

	public void check(int kor, int eng, int math,
			MessageHandler success, MessageHandler fail) {

		int total = kor + eng + math;
		int average = total / 3;
		if (average >= 60) {
			success.showMessage();
		} else {
			fail.showMessage();
		}
	}
	
	public static void main(String[] args) {
		
		// 1. 이름있는 클래스로 객체를 생성하고, 전달한다.
//		SuccessMessageHandler h1 = new SuccessMessageHandler();
//		FailMesageHandler h2 = new FailMesageHandler();
		
		ScoreCheck scoreCheck = new ScoreCheck();
//		scoreCheck.check(100, 100, 100, h1, h2);
		
		// 2. 익명클래스로 객체를 생성하고, 전달한다.
		scoreCheck.check(100, 100, 100, 
		new MessageHandler() {
			public void showMessage() {
				System.out.println("축하합니다. 합격입니다.");
			}
		}, 
		new MessageHandler() {
			public void showMessage() {
				System.out.println("불합격입니다.");
			}
		});
		
		// 3. 람다식으로 익명객체 생성하고, 전달하기
		scoreCheck.check(100, 100 , 100, 
				() -> System.out.println("축하합니다. 합격입니다."), 
				() -> System.out.println("불합격입니다."));
	}
}