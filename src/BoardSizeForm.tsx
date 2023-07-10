import { useState } from 'react';
import './BoardSizeForm.css';

interface IBoardSizeFormProps {
	onApply: (J: number, K: number) => void;
};

const BoardSizeForm = ({ onApply }: IBoardSizeFormProps) => {
	const [J, setJ] = useState(1);
	const [K, setK] = useState(1);

	return (
		<form onSubmit={e => {
			e.preventDefault();
			onApply(J, K);
		}}>
			<ul>
				<li>
					<label htmlFor="J">Select J</label>
					<input id="J" type="number" value={J} onChange={e => setJ(Math.max(+e.target.value, 1))} />
				</li>
				<li>
					<label htmlFor="K">Select K</label>
					<input id="K" type="number" value={K} onChange={e => setK(Math.max(+e.target.value, 1))} />
				</li>
				<li>
					<button type='submit'>Apply</button>
				</li>
			</ul>
		</form>
	)
};

export default BoardSizeForm;
