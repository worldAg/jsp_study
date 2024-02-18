package ch03.com.dao;

/* 자바빈즈 작성 규칙
	1. 자바 클래스는 java.io.Serializable 인터페이스를 구현해야 함
		자바빈즈에 저장된 프로퍼티를 포함한 채로 파일 시스템에 저장되거나 네트워크로 전송될 수 있도록 객체 직렬화를 제공해야 하므로 implements 해야 함
	2. 인수가 없는 기본 생성자 있어야 함
	3. 모든 멤버변수인 프로퍼티는 private 접근지정자로 설정해야 함
	4. 모든 멤버변수인 프로퍼티는 Getter/Setter()메서드가 존재해야 함
		- Getter()는 멤버변수의 값을 가져오는 메서드, Setter()는 멤버변수에 값을 저장하는 메서드
*/
import java.io.Serializable;

public class JavabeansSample implements java.io.Serializable { // java.io.Serializable 인터페이스를 구현(생략 가능)
	
	// 멤버변수(프로퍼티) 정의
	private int id;
	private String name;
	
	// 기본 생성자
	public JavabeansSample() {
		
	}
	
	// Getter/Setter()메서드
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
