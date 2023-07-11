import './HelpTooltip.css';

const HelpTooltip = () => {
	return (
		<sub className='tooltip'>
			?
			<div className='tooltiptext'>
				<ul>
					<li>Remove all "red" or all "blue" cells from the board</li>
					<li>Every column must be either empty or contain only one non-empty cell</li>
				</ul>
				If you happen to succeed, <big>congratulations</big>!<br/>
				You are half way to finding cycle element in Collatz sequence<br/>
				and winning <big>$1000000</big>!<br/>
				Please contact me and send your saved solution.
			</div>
		</sub>
	);
};

export default HelpTooltip;
