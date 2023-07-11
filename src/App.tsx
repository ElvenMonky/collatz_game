import { useCallback, useState } from 'react';
import './App.css';
import { ReactComponent as CollatzLogo } from './assets/collatz.svg';
import Board from './Board';
import ScoreBar from './ScoreBar';
import Toolbar from './Toolbar';
import BoardSizeForm from './BoardSizeForm';

const App = () => {
	const [selectedCell, setSelectedCell] = useState<{ j: number, k: number } | null>(null);
	const [board, setBoard] = useState<number[][] | null>(null);

	const onApply = useCallback((J: number, K: number) => {
		setSelectedCell(null);
		setBoard(() => [...Array(K + 1).keys()].map((_, k) => [...Array(J + K + 1).keys()].map((_, j) => (k == 0 && j == J + K) ? 1 : (k == K && j == K) ? -1 : 0)));
	}, []);

	const saveBoard = () => {
		localStorage.setItem("board", JSON.stringify(board));
	};

	const loadBoard = () => {
		const data = localStorage.getItem("board");
		setBoard(data ? JSON.parse(data) as number[][] : null);
	};

	return (
		<>
			<h1>
				<button onClick={() => setBoard(null)}>
					<CollatzLogo className="inline-logo" />
				</button>
				Collatz Cycle Search Game
			</h1>
			<h3>
				* Remove all "red" cells (plusses) or "blue" cells (minuses) from the board.<br/>
				* Every column must be either empty or contain only one non-empty cell.<br/>
				If done, you are half way to finding cycle element in Collatz sequence and thus winning <big>$1000000</big>!
			</h3>
			<header>
				{board ? (
					<>
						<ScoreBar {...{
							board,
						}} />
						<button onClick={saveBoard}>Save</button>
					</>
				) : (
					<BoardSizeForm {...{
						onApply,
						loadBoard,
					}} />
				)}
			</header>
			<main>
				{board && (
					<>
						<Toolbar {...{
							selectedCell,
							board,
							setBoard,
						}} />
						<Board {...{
							selectedCell,
							setSelectedCell,
							board,
						}} />
					</>
				)}
			</main>
		</>
	);
};

export default App;
