import { useCallback, useState } from 'react';
import './App.css';
import { ReactComponent as CollatzLogo } from './assets/collatz.svg';
import Board from './Board';
import Toolbar from './Toolbar';
import BoardSizeForm from './BoardSizeForm';

const App = () => {
	const [selectedCell, setSelectedCell] = useState<{ j: number, k: number } | null>(null);
	const [board, setBoard] = useState<number[][] | null>(null);

	const onApply = useCallback((J: number, K: number) => {
		setSelectedCell(null);
		setBoard(() => [...Array(K+1).keys()].map((_, k) => [...Array(J+K+1).keys()].map((_, j) => (k==0 && j==J+K) ? 1 : (k==K && j==K) ? -1 : 0)));
	}, []);

const saveBoard = () => {
  localStorage.setItem("board", JSON.stringify(board));
}

const loadBoard = () => {
setBoard(JSON.parse(localStorage.getItem("board")));
}

	return (
		<>
			<h1>
				<button onClick={() => setBoard(null)}>
					<CollatzLogo className="inline-logo" />
				</button>
				Collatz Cycle Search Game
			</h1>
			<header>
				{board ? (
     <>
					<span>
						{board.reduce((s, row, k) => s + 2**(-k)*3**k*row.reduce((sr, v, j) => sr + 2**j*v, 0), 0)}
					</span>
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
	)
};

export default App;
