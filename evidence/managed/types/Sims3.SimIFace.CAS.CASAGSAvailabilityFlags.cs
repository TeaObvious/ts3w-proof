// Original PC 1.67 SimIFace.dll; complete type Sims3.SimIFace.CAS.CASAGSAvailabilityFlags.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System;
using System.Runtime.InteropServices;

namespace Sims3.SimIFace.CAS;

[ComVisible(false)]
[Flags]
public enum CASAGSAvailabilityFlags : ulong
{
	None = 0uL,
	HumanBaby = 1uL,
	HumanToddler = 2uL,
	HumanChild = 4uL,
	HumanTeen = 8uL,
	HumanYoungAdult = 0x10uL,
	HumanAdult = 0x20uL,
	HumanElder = 0x40uL,
	HumanAgeMask = HumanBaby | HumanToddler | HumanChild | HumanTeen | HumanYoungAdult | HumanAdult | HumanElder,
	Male = 0x80uL,
	Female = 0x100uL,
	GenderMask = Male | Female,
	LeftHanded = 0x200uL,
	RightHanded = 0x400uL,
	HandednessMask = LeftHanded | RightHanded,
	HorseChild = 0x1000uL,
	HorseAdult = 0x2000uL,
	HorseElder = 0x4000uL,
	CatChild = 0x8000uL,
	CatAdult = 0x10000uL,
	CatElder = 0x20000uL,
	DogChild = 0x40000uL,
	DogAdult = 0x80000uL,
	DogElder = 0x100000uL,
	LittleDogChild = 0x200000uL,
	LittleDogAdult = 0x400000uL,
	LittleDogElder = 0x800000uL,
	Deer = 0x1000000uL,
	Raccoon = 0x2000000uL,
	LargeBird = 0x4000000uL,
	SimWalkingDog = 0x8000000uL,
	SimWalkingLittleDog = 0x10000000uL,
	SimLeadingHorse = 0x20000000uL,
	Paddleboat = 0x40000000uL,
	WaterScooter = 0x80000000uL,
	Speedboat = 0x100000000uL,
	Rowboat = 0x200000000uL,
	HouseboatSmall = 0x400000000uL,
	HouseboatMedium = 0x800000000uL,
	HouseboatLarge = 0x1000000000uL,
	Shark = 0x2000000000uL,
	Sailboat = 0x4000000000uL,
	WindsurfBoardChild = 0x8000000000uL,
	WindsurfBoatAdult = 0x10000000000uL,
	Houseboat6x20 = 0x20000000000uL,
	Houseboat6x20Curved = 0x40000000000uL,
	Houseboat8x18Curved = 0x80000000000uL,
	AllHorsesMask = HorseChild | HorseAdult | HorseElder,
	AllCatsMask = CatChild | CatAdult | CatElder,
	AllDogsMask = DogChild | DogAdult | DogElder,
	AllLittleDogsMask = LittleDogChild | LittleDogAdult | LittleDogElder,
	AllDomesticAnimalsMask = AllHorsesMask | AllCatsMask | AllDogsMask | AllLittleDogsMask | LargeBird,
	AllWildAnimalsMask = Deer | Raccoon,
	AllAnimalsMask = AllDomesticAnimalsMask | AllWildAnimalsMask,
	AllBoatsMask = Paddleboat | WaterScooter | Speedboat | Rowboat | HouseboatSmall | HouseboatMedium | HouseboatLarge | Sailboat | WindsurfBoardChild | WindsurfBoatAdult,
	AllHouseboatsMask = 0x1C00000000uL,
	All = ulong.MaxValue
}
