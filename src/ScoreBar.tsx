import './ScoreBar.css';

interface IScoreBarProps {
	board: number[][],
}

const ScoreBar = ({ board }: IScoreBarProps) => {
	const K = (board.length ?? 1) - 1;
	const J = (board[0]?.length ?? K) - K - 1;

	return (
		<section>
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
						<th scope='row'>Positive</th>
						<td>
							{board.reduce((s, row) => s + row.reduce((sr, v) => sr + (v > 0 ? 1 : 0), 0), 0)}
						</td>
						<td>
							{board.reduce((s, row, k) => s + 2 ** (-k) * 3 ** k * row.reduce((sr, v, j) => sr + 2 ** j * (v > 0 ? 1 : 0), 0), 0)}
						</td>
					</tr>
					<tr>
						<th scope='row'>Negative</th>
						<td>
							{board.reduce((s, row) => s + row.reduce((sr, v) => sr + (v < 0 ? 1 : 0), 0), 0)}
						</td>
						<td>
							{board.reduce((s, row, k) => s + 2 ** (-k) * 3 ** k * row.reduce((sr, v, j) => sr + 2 ** j * (v < 0 ? 1 : 0), 0), 0)}
						</td>
					</tr>
					<tr>
						<th scope='row'>All</th>
						<td>
							{board.reduce((s, row) => s + row.reduce((sr, v) => sr + v, 0), 0)}
						</td>
						<td>
							{board.reduce((s, row, k) => s + 2 ** (-k) * 3 ** k * row.reduce((sr, v, j) => sr + 2 ** j * v, 0), 0)}
						</td>
					</tr>
				</tbody>
			</table>
			<table>
				<tbody>
					<tr>
						<td>Empty: {0}</td>
						<td>Red: {0}</td>
					</tr>
					<tr>
						<td>Blue: {0}</td>
						<td>Mixed: {0}</td>
					</tr>
				</tbody>
			</table>
		</section>
	);
};

export default ScoreBar;
