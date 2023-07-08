import { useEffect, useState } from 'react';
import './App.css';
import { ReactComponent as CollatzLogo } from './assets/collatz.svg';

const cellDisplayMap: { [K: number]: string } = {
	"-1": "-",
	0: " ",
	1: "+",
};

const App = () => {
	const [J, setJ] = useState(1);
	const [K, setK] = useState(1);

	const [powerShift, setPowerShift] = useState(0);
	const [colHeaders, setColHeaders] = useState<number[]>([]);
	const [rowHeaders2, setRowHeaders2] = useState<number[]>([]);
	const [rowHeaders3, setRowHeaders3] = useState<number[]>([]);
	const [board, setBoard] = useState<number[][]>([]);

	useEffect(() => {
		setBoard(() => [...Array(K + 1).keys()].map(() => [...Array(J).keys()].map(() => 0)));
	}, [J, K]);

	useEffect(() => {
		setColHeaders(() => [...Array(J).keys()].map((_, i) => powerShift + i));
		setRowHeaders2(() => [...Array(K + 1).keys()].map((_, i) => K - 1 - powerShift - i));
		setRowHeaders3(() => [...Array(K + 1).keys()].map((_, i) => i));
	}, [J, K, powerShift]);

	const isInactive = (j: number, k: number) => rowHeaders2[k] + colHeaders[j] < 0;

	return (
		<>
			<h1>
				<CollatzLogo className="inline-logo" />
				Collatz Cycle Search Game
			</h1>
			<header>
				<label htmlFor="J">Select J</label>
				<input id="J" type="number" value={J} onChange={e => setJ(Math.max(+e.target.value, 1))} />
				<label htmlFor="K">Select K</label>
				<input id="K" type="number" value={K} onChange={e => setK(Math.max(+e.target.value, 1))} />
			</header>
			<main>
				<button onClick={() => setPowerShift(v => v - 1)}>
					v
				</button>
				<button onClick={() => setPowerShift(v => v + 1)}>
					&gt;
				</button>
				{colHeaders.map(colHeader => (
					<button disabled className="inactive">
						2^{colHeader}
					</button>
				))}
				{board.map((row, k) => (
					<div>
						<button disabled className="inactive">
							2^{rowHeaders2[k]}
						</button>
						<button disabled className="inactive">
							3^{rowHeaders3[k]}
						</button>
						{row.map((cell, j) => (
							<button className={isInactive(j, k) ? "inactive" : ""} disabled={isInactive(j, k)}>
								{cellDisplayMap[cell]}
							</button>
						))}
					</div>
				))}
			</main>
		</>
	)
};

export default App;
