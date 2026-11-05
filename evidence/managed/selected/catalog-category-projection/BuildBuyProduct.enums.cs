// Actual ILSpy11.1 original PC1.67 SimIFace C# excerpts, complete selected nested
// enum declarations from Sims3.SimIFace.BuildBuy.BuildBuyProduct. Other members
// are outside this selected reference. FieldDefs/constants/signatures in
// enum-fields.tsv establish numeric values and underlying signedness. Current
// Core enums are separate partial projections, including a different WallFlags
// underlying signedness; no original type duplication/removal is implied.

	public enum eRoomType : uint
	{
		kRoomTypeLivingRoom = 2u,
		kRoomTypeDiningRoom = 4u,
		kRoomTypeKitchen = 8u,
		kRoomTypeKidsRoom = 16u,
		kRoomTypeBathroom = 32u,
		kRoomTypeBedRoom = 64u,
		kRoomTypeStudy = 128u,
		kRoomTypeOutdoors = 256u,
		kRoomTypeCommunityLot = 512u,
		kRoomTypeResidentialLot = 1024u,
		kRoomTypePool = 2048u,
		kRoomTypeFountain = 4096u,
		kRoomTypeResortLobby = 8192u,
		kRoomTypeResortSpa = 16384u,
		kRoomTypeResortGym = 32768u,
		kRoomTypeResortRestaurant = 65536u,
		kRoomTypeResortTikiLounge = 131072u,
		kRoomTypeResortArcade = 262144u,
		kRoomTypeResortArtGallery = 524288u,
		kRoomTypeResortDanceHall = 1048576u,
		kRoomTypeResortOutdoorPartyArea = 2097152u,
		kRoomTypeResortPoolArea = 4194304u,
		kRoomTypeDefault = 2147483648u,
		kRoomTypeAll = uint.MaxValue
	}

	public enum eBuyCategory : uint
	{
		kBuyCategoryAppliances = 2u,
		kBuyCategoryElectronics = 4u,
		kBuyCategoryEntertainment = 8u,
		kBuyCategoryLighting = 32u,
		kBuyCategoryPlumbing = 64u,
		kBuyCategoryDecor = 128u,
		kBuyCategoryKids = 256u,
		kBuyCategoryStorage = 512u,
		kBuyCategoryComfort = 2048u,
		kBuyCategorySurfaces = 4096u,
		kBuyCategoryVehicles = 8192u,
		kBuyCategoryPets = 16384u,
		kBuyCategoryShowStage = 32768u,
		kBuyCategoryResort = 65536u,
		kBuyCategoryDebug = 1073741824u,
		kBuyCategoryDefault = 2147483648u,
		kBuyCategoryNormal = 1073741823u,
		kBuyCategoryAll = uint.MaxValue
	}

	public enum eBuildCategory : uint
	{
		kBuildCategoryDoor = 2u,
		kBuildCategoryWindow = 4u,
		kBuildCategoryGate = 8u,
		kBuildCategoryColumn = 16u,
		kBuildCategoryRabbitHole = 32u,
		kBuildCategoryFireplace = 64u,
		kBuildCategoryChimney = 128u,
		kBuildCategoryArch = 256u,
		kBuildCategoryFlower = 512u,
		kBuildCategoryShrub = 1024u,
		kBuildCategoryTree = 2048u,
		kBuildCategoryRug = 4096u,
		kBuildCategoryRock = 8192u,
		kBuildCategoryShell = 16384u,
		kBuildCategoryMiscObject = 32768u,
		kBuildCategoryElevator = 65536u,
		kBuildCategorySpiralStairscase = 131072u,
		kBuildCategoryTubeElevators = 262144u,
		kBuildCategoryBlueprint = 268435456u,
		kBuildCategoryResortObjects = 536870912u,
		kBuildCategoryModularArch = 1073741824u,
		kBuildCategoryDefault = 2147483648u,
		kBuildCategoryAllButBlueprints = 4026531839u,
		kBuildCategoryAllButBlueprintsAndResorts = 3489660927u,
		kBuildCategoryAllButBlueprintsAndBuildings = 4026531807u,
		kBuildCategoryAll = uint.MaxValue
	}

	[Flags]
	public enum eWallFlags
	{
		kWFAnywhere = 0,
		kWFMinX = 1,
		kWFMinZ = 2,
		kWFMaxX = 4,
		kWFMaxZ = 8,
		kWF01To10Diag = 0x10,
		kWF00To11Diag = 0x20,
		kWFRequiredMask = kWFMinX | kWFMinZ | kWFMaxX | kWFMaxZ | kWF01To10Diag | kWF00To11Diag,
		kWFNotMinX = 0x40,
		kWFNotMinZ = 0x80,
		kWFNotMaxX = 0x100,
		kWFNotMaxZ = 0x200,
		kWFNot01To10Diag = 0x400,
		kWFNot00To11Diag = 0x800,
		kWFNotRequiredMask = kWFNotMinX | kWFNotMinZ | kWFNotMaxX | kWFNotMaxZ | kWFNot01To10Diag | kWFNot00To11Diag,
		kWFFlagsApplyToFences = 0x1000,
		kWFProhibitsFenceArch = 0x2000,
		kWFOnWall = 0x4000,
		kWFIntersectsObjectsOffWall = 0x8000,
		kWFApplyCutoutDiagonalShift = 0x10000,
		kWFCanBeMovedUpDownOnWall = 0x20000,
		kWFCannotBeMovedUpDownOnWall = 0x40000
	}
