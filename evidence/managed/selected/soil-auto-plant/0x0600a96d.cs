/* Analyst: selected complete original PC1.67 Sims3.Gameplay.Objects.Gardening.SoilAutoPlant::GetInitGrowthState 0x0600a96d.
 * Actual ILSpy11.1 selected-member rendering; paired original CIL governs operand types and branches.
 * Original virtual default: CoinFlip true returns enum literal4 (Mature), false5 (Harvest). Caller may dispatch an override. RNG probability/implementation is outside this member.
 */

using Sims3.Gameplay.Core;

public virtual PlantGrowthState GetInitGrowthState()
{
	if (!RandomUtil.CoinFlip())
	{
		return PlantGrowthState.Harvest;
	}
	return PlantGrowthState.Mature;
}
