package com.kwon.jun131m.main;

import java.util.Scanner;

// 마트 정책이 포인트를 0.5% 적립하는걸로 바뀜 
// -> 프로그램 수정해야
// 1) 마트 사장님이 자바 못할
// 2) 할줄안다해도 수정불가
//		.jar : 컴파일된거 압축해놓은거
// => 마트측에서 해결 불가능
// => 개발자한테 연락
// -> 소스수정 -> 재컴파일 -> 재압축 -> 재배포

public class MMain {
	public static void main(String[] args) {
		Scanner k = new Scanner(System.in);
		int price;
		while (true) {
			System.out.print("구매금액 : ");
			price = k.nextInt();
			if (price < 0) {
				break;
			}
			System.out.printf("포인트 : %.0f\n", price * 0.005);
		}
		k.close();
	}
}





