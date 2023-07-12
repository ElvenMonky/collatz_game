import { colorMap } from './ToolbarData';
import './ScoreBarIcon.css';

interface IScoreBarIconProps {
	change: string,
}

const ScoreBarIcon = ({ change }: IScoreBarIconProps) => {
	return (
		<svg viewBox='0 0 20 20' xmlns="http://www.w3.org/2000/svg">
			{change === "/" && (
				<>
					<path key="red" fill={colorMap["+"]} d="M2,2H18L2,18V2" />
					<path key="blue" fill={colorMap["-"]} d="M18,18H2L18,2V18" />
				</>
			) || (
				<rect key={change} {...{
					fill: colorMap[change],
					x: 2,
					y: 2,
					width: 16,
					height: 16,
				}} />
			)}
		</svg>
	);
};

export default ScoreBarIcon;
