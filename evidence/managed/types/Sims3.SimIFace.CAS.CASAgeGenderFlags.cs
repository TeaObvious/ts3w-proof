// Original PC 1.67 SimIFace.dll; complete type Sims3.SimIFace.CAS.CASAgeGenderFlags.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System;
using System.Runtime.InteropServices;

namespace Sims3.SimIFace.CAS;

[Flags]
[ComVisible(false)]
public enum CASAgeGenderFlags : uint
{
	None = 0u,
	Baby = 1u,
	Toddler = 2u,
	Child = 4u,
	Teen = 8u,
	YoungAdult = 0x10u,
	Adult = 0x20u,
	Elder = 0x40u,
	AgeMask = Baby | Toddler | Child | Teen | YoungAdult | Adult | Elder,
	Male = 0x1000u,
	Female = 0x2000u,
	GenderMask = Male | Female,
	Human = 0x100u,
	Horse = 0x200u,
	Cat = Human | Horse,
	Dog = 0x400u,
	LittleDog = Human | Dog,
	Deer = Horse | Dog,
	Raccoon = Cat | Dog,
	LargeBird = 0x800u,
	SimWalkingDog = Human | LargeBird,
	SimWalkingLittleDog = Horse | LargeBird,
	SimLeadingHorse = Cat | LargeBird,
	Paddleboat = Dog | LargeBird,
	WaterScooter = LittleDog | LargeBird,
	Speedboat = Deer | LargeBird,
	Rowboat = Raccoon | LargeBird,
	HouseboatSmall = 0x4100u,
	HouseboatMedium = 0x4200u,
	HouseboatLarge = 0x4300u,
	Shark = 0x4400u,
	Sailboat = 0x4500u,
	WindsurfBoard = 0x4600u,
	SpeciesMask = 0xCF00u,
	LeftHanded = 0x100000u,
	RightHanded = 0x200000u,
	HandednessMask = LeftHanded | RightHanded
}
