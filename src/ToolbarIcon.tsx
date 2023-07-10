import { colorMap, jMap, kMap } from './ToolbarData';
import './ToolbarIcon.css';

interface IToolbarIconProps {
	changes: string,
}

const ToolbarIcon = ({ changes }: IToolbarIconProps) => {
	return (
		<svg viewBox='0 0 100 100' xmlns="http://www.w3.org/2000/svg">
			<path fill="none" stroke="grey" d="M10,40H90M10,60H90M30,20V80M50,20V80M70,20V80" />
			{changes.split(' ').map(change => (
				<rect {...{
					fill: colorMap[change[0]],
					x: jMap[+change[1]]*20+12,
					y: kMap[+change[1]]*20+22,
					width: 16,
					height: 16,
				}} />
			))};
		</svg>
	);
};

export default ToolbarIcon;
