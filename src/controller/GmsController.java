package controller;
import java.util.List;

import javax.swing.JOptionPane;

import domain.*;
import service.*;



enum Butt {
	EXIT, NAMEINPUT, SCOREINPUT;
}

public class GmsController {

		public static void main(String[] args) {
			ExamBean exam = null;
			MemberBean mem = null;
			Butt[] buttons = { Butt.EXIT, Butt.NAMEINPUT, Butt.SCOREINPUT};
			while (true) {

				Butt select = (Butt) JOptionPane.showInputDialog(null, // frame
						"MENU", // frame title
						"SELECT  MENU", // order
						JOptionPane.QUESTION_MESSAGE, // type
						null, // icon
						buttons, // Array of choices
						buttons[1] // default
				);
				switch (select) {
				case EXIT : return;
				case NAMEINPUT :
					exam = new ExamBean();
					mem = new MemberBean();
					String[] arr=JOptionPane.showInputDialog("이름, 월").split(",");
					exam.setMonth(arr[1]);
					exam.setMemId("4"); //임시로 쓴거 
					/*List<MemberBean> list = MemberServiceImpl.getInstance().showSomeList(arr[0]);
					if(list.size()==0) {
						System.out.println("해당 이름의 학생이 없어요");
					}else if(list.size()==1) {
						exam.setMemId(list.get(0).getMemId());
					}else {
						System.out.println(list);
					}*/
					break;
				case SCOREINPUT: 
					exam.setScore(JOptionPane.showInputDialog("java,SQL,R,HTML,PYTHON?"));				
					ExamServiceImpl.getInstance().createScore(exam);
					break;
				
			}
		}
	}

}
