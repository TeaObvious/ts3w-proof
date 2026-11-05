// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.GlobalFunctions selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	public static bool IsInside(float posX, float posY, float posZ, float absAngle)
	{
		LotLocation location = LotLocation.Invalid;
		ulong lotLocation = World.GetLotLocation(new Vector3(posX, posY, posZ), ref location);
		return World.GetRoomId(lotLocation, location, eRoomDefinition.LightBlocking) > 0;
	}

	public static bool IsOutside(float posX, float posY, float posZ, float absAngle)
	{
		LotLocation location = LotLocation.Invalid;
		ulong lotLocation = World.GetLotLocation(new Vector3(posX, posY, posZ), ref location);
		return World.GetRoomId(lotLocation, location, eRoomDefinition.LightBlocking) == 0;
	}

	public static bool IsOutsideEvenOnWorldLot(float posX, float posY, float posZ, float absAngle)
	{
		LotLocation location = LotLocation.Invalid;
		World.GetLotLocation(new Vector3(posX, posY, posZ), ref location);
		return location.mRoom <= 0;
	}
