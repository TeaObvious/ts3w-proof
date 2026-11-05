using System;
using System.Reflection;
using System.Runtime.InteropServices;

namespace ScriptCore;

internal class PersistImports
{
	[DllImport("Sims3Common.dll")]
	public static extern bool Serializer_ReadPrimitiveArray(Array dst, uint fastStreamHandle, byte ptc);

	[DllImport("Sims3Common.dll")]
	public static extern bool Serializer_WritePrimitiveArray(Array src, uint fastStreamHandle, byte ptc);

	[DllImport("Sims3Common.dll")]
	public static extern uint Serializer_LookupFieldOffsets(PersistFastField[] fastFields);

	[DllImport("Sims3Common.dll")]
	public static extern int Serializer_ReadFastFields(object obj, PersistFastField[] fastFields, uint fastStreamHandle);

	[DllImport("Sims3Common.dll")]
	public static extern uint Serializer_WriteFastFields(object obj, PersistFastField[] fastFields, uint fastStreamHandle);

	[DllImport("Sims3Common.dll")]
	public static extern object Serializer_GetAssemblyHashCode(Assembly assembly);
}
