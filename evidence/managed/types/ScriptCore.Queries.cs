using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class Queries : IQueries
{
	[DllImport("Sims3Common")]
	private static extern uint Query_CountObjects(Type type);

	[DllImport("Sims3Common")]
	private static extern uint Query_CountObjectsOnLot(Type type, ulong lotId, int roomId);

	[DllImport("Sims3Common")]
	private static extern uint Query_CountObjectsInRange(Type type, Vector3 center, float radius);

	[DllImport("Sims3Common")]
	private static extern uint Query_CountGlobalObjects(Type type);

	[DllImport("Sims3Common")]
	private static extern Array Query_GetObjects(Type type);

	[DllImport("Sims3Common")]
	private static extern Array Query_GetObjectsOnLot(Type type, ulong lotId, int roomId);

	[DllImport("Sims3Common")]
	private static extern Array Query_GetObjectsInRange(Type type, Vector3 center, float radius);

	[DllImport("Sims3Common")]
	private static extern Array Query_GetGlobalObjects(Type type);

	[DllImport("Sims3Common")]
	private static extern Array Query_GetSimsOverlappingFootprint(Type type, ulong lotId, uint footprintNameHash, float simRadius);

	[DllImport("Sims3Common")]
	private static extern Array Query_GetObjectsOverlappingObject(Type type, ulong lotId);

	public Queries()
	{
		AppDomain.CurrentDomain.SetData("Queries", this);
	}

	public uint CountObjects(Type type)
	{
		return Query_CountObjects(type);
	}

	public uint CountObjects(Type type, ulong lotId, int roomId)
	{
		return Query_CountObjectsOnLot(type, lotId, roomId);
	}

	public uint CountObjects(Type type, Vector3 center, float radius)
	{
		return Query_CountObjectsInRange(type, center, radius);
	}

	public uint CountGlobalObjects(Type type)
	{
		return Query_CountGlobalObjects(type);
	}

	public Array GetObjects(Type type)
	{
		return Query_GetObjects(type);
	}

	public Array GetObjects(Type type, ulong lotId, int roomId)
	{
		return Query_GetObjectsOnLot(type, lotId, roomId);
	}

	public Array GetObjects(Type type, Vector3 center, float radius)
	{
		return Query_GetObjectsInRange(type, center, radius);
	}

	public Array GetGlobalObjects(Type type)
	{
		return Query_GetGlobalObjects(type);
	}

	public Array GetSimsIntersectingFootprint(Type type, ObjectGuid objId, uint footprintNameHash, float simRadius)
	{
		return Query_GetSimsOverlappingFootprint(type, objId.Value, footprintNameHash, simRadius);
	}

	public Array GetObjectsIntersectingObject(Type type, ObjectGuid objId)
	{
		return Query_GetObjectsOverlappingObject(type, objId.Value);
	}
}
