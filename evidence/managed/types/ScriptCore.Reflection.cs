using System;
using System.Runtime.CompilerServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class Reflection : IReflection
{
	[MethodImpl(MethodImplOptions.InternalCall)]
	internal static extern uint Reflection_GetTypeClassification(Type type);

	[MethodImpl(MethodImplOptions.InternalCall)]
	internal static extern bool Reflection_IsTypeAssignableFrom(Type type, Type otherType);

	public Reflection()
	{
		AppDomain.CurrentDomain.SetData("Reflection", this);
	}

	public ReflectionTypeFlags GetTypeClassification(Type type)
	{
		return (ReflectionTypeFlags)ReflectionShared.Reflection_GetTypeClassification(type);
	}

	public bool IsTypeAssignableFrom(Type type, Type otherType)
	{
		return ReflectionShared.Reflection_IsTypeAssignableFrom(type, otherType);
	}
}
