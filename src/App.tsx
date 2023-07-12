import { useCallback, useState } from 'react';
import './App.css';
import Board from './Board';
import ScoreBar from './ScoreBar';
import Toolbar from './Toolbar';
import BoardSizeForm from './BoardSizeForm';
import HelpTooltip from './HelpTooltip';
import HamburgerMenu from './HamburgerMenu';

const App = () => {
	const [selectedCell, setSelectedCell] = useState<{ j: number, k: number } | null>(null);
	const [board, setBoard] = useState<number[][] | null>(null);

	const onApply = useCallback((J: number, K: number) => {
		setSelectedCell(null);
		setBoard(() => [...Array(K + 1).keys()].map((_, k) => [...Array(J + K + 1).keys()].map((_, j) => (k == 0 && j == J + K) ? 1 : (k == K && j == K) ? -1 : 0)));
	}, []);

	return (
		<>
			<h1>
				<HamburgerMenu {...{
					board,
					setBoard,
				}} />
				Collatz Cycle Search Game
				<HelpTooltip />
			</h1>
			
			<header>
				{board ? (
					<ScoreBar {...{
						board,
					}} />
				) : (
					<BoardSizeForm {...{
						onApply,
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
