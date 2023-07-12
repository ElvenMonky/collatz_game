import { BaseSyntheticEvent, useRef, useState } from 'react';
import './HamburgerMenu.css';
import { ReactComponent as CollatzLogo } from './assets/collatz.svg';

interface IHamburgerMenuProps {
	board: number[][] | null,
	setBoard: React.Dispatch<React.SetStateAction<number[][] | null>>,
}

const HamburgerMenu = ({ board, setBoard }: IHamburgerMenuProps) => {
	const [menuExpanded, setMenuExpanded] = useState(false);
	const hiddenFileInput = useRef<HTMLInputElement>(null);

	const quickLoad = () => {
		const data = localStorage.getItem("board");
		setBoard(data ? JSON.parse(data) as number[][] : null);
		setMenuExpanded(false);
	};

	const quickSave = () => {
		localStorage.setItem("board", JSON.stringify(board));
		setMenuExpanded(false);
	};

	const saveGame = async () => {
		const options: SaveFilePickerOptions = { types: [{ accept: {'application/json': '.json'} }], suggestedName: 'collatz.json' };
		const handle: FileSystemFileHandle = await showSaveFilePicker(options);
		const writable = await handle.createWritable();
		await writable.write( JSON.stringify(board) );
		await writable.close();
		setMenuExpanded(false);
	};

	const loadGame = () => {
		hiddenFileInput.current?.click();
		setMenuExpanded(false);
	};

	return (
		<>
			<button onClick={() => setMenuExpanded(x => !x)}>
				<CollatzLogo className="inline-logo" />
			</button>
			<input
				type="file"
				ref={hiddenFileInput}
				accept="application/json"
				onChange={e => { 
					const file = e.target.files?.[0];
					if (!file) {
						return;
					}
					const reader = new FileReader();
					reader.onloadend = () => {
						const board = JSON.parse(reader.result as string) as number[][];
						setBoard(board);
					};
					reader.readAsText(file);
				}}
				onClick={() => {
					if (hiddenFileInput.current) {
						hiddenFileInput.current.value = '';
					}
				}}
			/>
			{menuExpanded && (
				<menu className='hamburger'>
					{!board && (
						<>
							<li><button onClick={quickLoad}>Quick Load</button></li>
							<li><button onClick={loadGame}>Load Game</button></li>
						</>
					) || (
						<>
							<li><button onClick={quickSave}>Quick Save</button></li>
							<li><button onClick={saveGame}>Save Game</button></li>
							<li><button onClick={() => {
								setBoard(null);
								setMenuExpanded(false);
							}}>End Game</button></li>
						</>
					)}
				</menu>
			)}
		</>
	);
};

export default HamburgerMenu;
