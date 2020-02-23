package driver;

import generalChess.v1Bobby;
import octo.AI;
import sharedfiles.Board;

public class BobbyVsOcto {

	public BobbyVsOcto() {

		Board b = new Board();
		v1Bobby bobby = new v1Bobby(b, true);
		System.out.println();
		b.printBoard();
		System.out.println();

		System.out.println("BOBBY:");
		b.setBoardArray(bobby.turn(b.getBoardArray()));
		b.printBoard();
		System.out.println();

		System.out.println("OCTO:");
		AI octo = new AI();
		octo.setColor('B');
		b = octo.takeTurn(b);
		b.printBoard();

		// long start;
		for (int i = 0; i < 100; i++) {
			// start = System.currentTimeMillis();
			System.out.println();
			System.out.println("BOBBY:");
			b.setBoardArray(bobby.turn(b.getBoardArray()));
			b.printBoard();

			System.out.println();
			System.out.println("OCTO:");
			b = octo.takeTurn(b);
			b.printBoard();

			// float time = System.currentTimeMillis() - start;
			// time = time / 1000F;
			// System.out.println(time);

		}

	}
}
