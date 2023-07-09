import './Toolbar.css';

const jMap: { [j: number]: number } = {
	1: 0,
	2: 1,
	3: 1,
	4: 2,
	6: 2,
	8: 3,
	9: 2,
};

const kMap: { [k: number]: number } = {
	1: 0,
	2: 0,
	3: 1,
	4: 0,
	6: 1,
	8: 0,
	9: 2,
};

const dMap: { [d: string]: number } = {
	'=': -2,
	'-': -1,
	'+': 1,
	'#': 2,
};

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
	setBoard: React.Dispatch<React.SetStateAction<number[][]>>,
};

const Toolbar = ({ selectedCell, board, setBoard }: IToolbarProps) => {
	const K = board.length ?? 1;
	const J = board[0]?.length ?? 1;
	
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
			if (!selectedCell || !canUpdateBoard(oldBoard, changes)) {
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
							{changes}
						</button>
					))}
				</li>
			))}
		</menu>
	);
};

export default Toolbar;
