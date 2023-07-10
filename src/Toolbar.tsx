import './Toolbar.css';
import { dMap, jMap, kMap } from './ToolbarData';
import ToolbarIcon from './ToolbarIcon';

const buttonData: string[][] = [
	[
		`#1 -2`,
		`=1 +2`,		
	],
	[
		`+1 +2 -3`,
		`-1 -2 +3`,		
	],
	[
		`+1 +3 -4`,
		`-1 -3 +4`,		
	],
	[
		`+1 +8 -9`,
		`-1 -8 +9`,		
	],
];

interface IToolbarProps {
	selectedCell: { j: number, k: number } | null,
	board: number[][],
	
	setBoard: React.Dispatch<React.SetStateAction<number[][] | null>>,
};

const Toolbar = ({ selectedCell, board, setBoard }: IToolbarProps) => {
	const K = (board.length ?? 1) - 1;
	const J = (board[0]?.length ?? K) - K - 1;
	
	const canUpdateBoard = (board: number[][], changes: string) => {
		if (!selectedCell) {
			return false;
		}

		return changes.split(' ').every(change =>
			selectedCell.k+kMap[+change[1]] <= K &&
			selectedCell.j+jMap[+change[1]] <= J+K &&
			board[selectedCell.k+kMap[+change[1]]][selectedCell.j+jMap[+change[1]]] + dMap[change[0]] <= 1 &&
			board[selectedCell.k+kMap[+change[1]]][selectedCell.j+jMap[+change[1]]] + dMap[change[0]] >= -1
		);
	};

	const updateBoard = (changes: string) => {
		setBoard(oldBoard => {
			if (!oldBoard || !selectedCell || !canUpdateBoard(oldBoard, changes)) {
				return oldBoard;
			}

			const newBoard = oldBoard.map(row => [...row]);
			changes.split(' ').forEach(change => {
				newBoard[selectedCell.k+kMap[+change[1]]][selectedCell.j+jMap[+change[1]]] += dMap[change[0]];
			});
			return newBoard;
		})
	};

	return (
		<menu className={!selectedCell ? "inactive" : ""}>
			{buttonData.map(column => (
				<li key={column.join(',')} >
					{column.map(changes => (
						<button
							key={changes}
							onClick={() => updateBoard(changes)}
							disabled={!canUpdateBoard(board, changes)}
						>
							<ToolbarIcon {...{
								changes: canUpdateBoard(board, changes) ? changes : '.1'
							}}/>
						</button>
					))}
				</li>
			))}
		</menu>
	);
};

export default Toolbar;
