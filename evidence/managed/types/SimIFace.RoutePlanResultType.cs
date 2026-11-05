// Original PC 1.67 SimIFace.dll; actual ILSpy type decompilation.
// Analyst: use the paired original IL for exact arithmetic, option constants and method identity.
namespace Sims3.SimIFace;

public enum RoutePlanResultType
{
	Unknown,
	Succeeded,
	Failed,
	FailedBecausePlannerAborted,
	FailedBecauseNoStartSpecified,
	FailedBecauseStartObjectNotFound,
	FailedBecauseStartObjectHasNoSlots,
	FailedBecauseStartObjectHasNoMatchingSlots,
	FailedBecauseStartObjectHasNoUnobstructedSlots,
	FailedBecauseStartBlockedBySim,
	FailedBecauseNoDestinationSpecified,
	FailedBecauseDestinationObjectNotFound,
	FailedBecauseDestinationObjectHasNoSlots,
	FailedBecauseDestinationObjectHasNoMatchingSlots,
	FailedBecauseDestinationObjectHasNoUnobstructedSlots,
	FailedBecauseDestinationPointsAreAllObstructed,
	FailedBecauseNoPathToDestination,
	FailedDestinationBlockedBySim,
	FailedBecauseDestinationPortalLocked
}
