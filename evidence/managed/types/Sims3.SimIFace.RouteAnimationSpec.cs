// Original PC 1.67 SimIFace.dll; complete type Sims3.SimIFace.RouteAnimationSpec.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Runtime.InteropServices;

namespace Sims3.SimIFace;

[ComVisible(false)]
public struct RouteAnimationSpec
{
	public uint mStyleNameHash;

	public uint mAge;

	public uint mGender;

	public uint mSpecies;

	public RouteAnimationSpec(string styleName)
	{
		mStyleNameHash = ResourceUtils.HashString32(styleName);
		mAge = 0u;
		mGender = 0u;
		mSpecies = 0u;
	}

	public RouteAnimationSpec(string styleName, uint age, uint gender, uint species)
	{
		mStyleNameHash = ResourceUtils.HashString32(styleName);
		mAge = age;
		mGender = gender;
		mSpecies = species;
	}
}
