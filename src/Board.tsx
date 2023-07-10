import { useEffect, useState } from 'react';
import './Board.css';

const cellClassMap: { [K: number]: string } = {
	"-1": "minus-cell",
	0: "",
	1: "plus-cell",
};

const cellDisplayMap: { [K: number]: { [K: number]: number } } = {
	0: {
		0: 1,
		1: 2,
		2: 4,
		3: 8,
		4: 16,
	},
	1: {
		1: 3,
		2: 6,
		3: 12,
	},
	2: {
		2: 9,
	},
};

interface IBoardProps {
	board: number[][];
	selectedCell: { j: number, k: number } | null;
	setSelectedCell: React.Dispatch<any>;
};

const Board = ({
	board,
	selectedCell,
	setSelectedCell
}: IBoardProps) => {
	const [jShift, setJShift] = useState(0);
	const [colHeaders, setColHeaders] = useState<number[]>([]);
	const [rowHeaders2, setRowHeaders2] = useState<number[]>([]);
	const [rowHeaders3, setRowHeaders3] = useState<number[]>([]);

	const K = (board.length ?? 1) - 1;
	const J = (board[0]?.length ?? K) - K - 1;

	useEffect(() => {
		console.log(jShift);
		setColHeaders(() => [...Array(J+jShift+1).keys()].map((_, j) => j));
		setRowHeaders2(() => [...Array(K + 1).keys()].map((_, k) => K - jShift - k));
		setRowHeaders3(() => [...Array(K + 1).keys()].map((_, k) => k));
	}, [J, K, jShift]);

	const isInactive = (j: number, k: number) => rowHeaders2[k] + colHeaders[j] < 0;

	return (
		<table>
			<thead>
				<tr>
					<th scope="col">
						<button className="updown-arrow" onClick={() => setJShift(v => v - (v <= -J ? 0 : 1))}>
							&#x2193;
						</button>
						<button className="updown-arrow" onClick={() => setJShift(v => v + (v >= K ? 0 : 1))}>
							&#x2192;
						</button>
					</th>
					<th scope="col">
					</th>
					{colHeaders.map(colHeader => (
						<th key={colHeader} scope="col" className="row-header2">
							2<sup>{colHeader}</sup>
						</th>
					))}
				</tr>
			</thead>
			<tbody>
			{board.map((row, k) => (
				<tr key={k}>
					<th key="2^" scope="row" className="row-header2">
						2<sup>{rowHeaders2[k]}</sup>
					</th>
					<th key="3^" scope="row" className="inactive row-header3">
						3<sup>{rowHeaders3[k]}</sup>
					</th>
					{row.slice(K-jShift).map((cell, j) => (
						<td key={j}>
							{!isInactive(j, k) && (
								<button
									className={`${isInactive(j, k) ? "inactive" : ""} ${cellClassMap[cell] ?? ""}`}
									disabled={isInactive(j, k)}
									onClick={() => setSelectedCell({ j: j+K-jShift, k })}
								>
									{ selectedCell && cellDisplayMap[k-selectedCell.k]?.[j+K-jShift-selectedCell.j] || "\u00A0" }
								</button>
							)}
						</td>
					))}
				</tr>
			))}
			</tbody>
		</table>
	)
};

export default Board;
