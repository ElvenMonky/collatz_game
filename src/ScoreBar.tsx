import './ScoreBar.css';
import ScoreBarIcon from './ScoreBarIcon';

interface IScoreBarProps {
	board: number[][],
}

const ScoreBar = ({ board }: IScoreBarProps) => {
	const redCols = (board[0] || []).map((_, j) => board.reduce((s, row) => s + (row[j] > 0 ? 1 : 0), 0));
	const blueCols = (board[0] || []).map((_, j) => board.reduce((s, row) => s + (row[j] < 0 ? 1 : 0), 0));

	return (
		<section className='scorebar'>
			<table>
				<thead>
					<tr>
						<th></th>
						<th scope='col'>Count</th>
						<th scope='col'>Sum</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope='row'><ScoreBarIcon change="+"/></th>
						<td>
							{board.reduce((s, row) => s + row.reduce((sr, v) => sr + (v > 0 ? 1 : 0), 0), 0)}
						</td>
						<td>
							{board.reduce((s, row, k) => s + 2 ** (-k) * 3 ** k * row.reduce((sr, v, j) => sr + 2 ** j * (v > 0 ? 1 : 0), 0), 0)}
						</td>
					</tr>
					<tr>
						<th scope='row'><ScoreBarIcon change="-"/></th>
						<td>
							{board.reduce((s, row) => s + row.reduce((sr, v) => sr + (v < 0 ? 1 : 0), 0), 0)}
						</td>
						<td>
							{board.reduce((s, row, k) => s + 2 ** (-k) * 3 ** k * row.reduce((sr, v, j) => sr + 2 ** j * (v < 0 ? 1 : 0), 0), 0)}
						</td>
					</tr>
					<tr>
						<th scope='row'><ScoreBarIcon change="."/></th>
						<td>
							{board.reduce((s, row) => s + row.reduce((sr, v) => sr + (v !== 0 ? 1 : 0), 0), 0)}
						</td>
						<td>
							{board.reduce((s, row, k) => s + 2 ** (-k) * 3 ** k * row.reduce((sr, v, j) => sr + 2 ** j * v, 0), 0)}
						</td>
					</tr>
				</tbody>
			</table>
			<table>
				<thead>
					<tr>
						<th scope='col' rowSpan={4}>Columns</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th><ScoreBarIcon change="."/></th>
						<td>{redCols.reduce((s, r, j) => s + (r == 0 && blueCols[j] == 0 ? 1 : 0), 0)}</td>
						<th><ScoreBarIcon change="+"/></th>
						<td>{redCols.reduce((s, r, j) => s + (r == 1 && blueCols[j] == 0 ? 1 : 0), 0)}</td>
					</tr>
					<tr>
						<th><ScoreBarIcon change="-"/></th>
						<td>{redCols.reduce((s, r, j) => s + (r == 0 && blueCols[j] == 1 ? 1 : 0), 0)}</td>
						<th><ScoreBarIcon change="/"/></th>
						<td>{redCols.reduce((s, r, j) => s + ((r + blueCols[j]) > 1 ? 1 : 0), 0)}</td>
					</tr>
				</tbody>
			</table>
		</section>
	);
};

export default ScoreBar;
