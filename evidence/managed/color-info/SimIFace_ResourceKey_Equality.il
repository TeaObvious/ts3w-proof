// PC1.67 SimIFace; Sims3.SimIFace.ResourceKey; Equality
.method /* 06000EAC */ public hidebysig specialname static 
	bool op_Equality (
		valuetype Sims3.SimIFace.ResourceKey lhs,
		valuetype Sims3.SimIFace.ResourceKey rhs
	) cil managed 
{
	// Method begins at RVA 0x16e95
	// Header size: 1
	// Code size: 51 (0x33)
	.maxstack 8

	IL_0000: ldarga.s lhs
	IL_0002: ldfld uint32 Sims3.SimIFace.ResourceKey::TypeId /* 04000D73 */
	IL_0007: ldarga.s rhs
	IL_0009: ldfld uint32 Sims3.SimIFace.ResourceKey::TypeId /* 04000D73 */
	IL_000e: bne.un.s IL_0031

	IL_0010: ldarga.s lhs
	IL_0012: ldfld uint32 Sims3.SimIFace.ResourceKey::GroupId /* 04000D74 */
	IL_0017: ldarga.s rhs
	IL_0019: ldfld uint32 Sims3.SimIFace.ResourceKey::GroupId /* 04000D74 */
	IL_001e: bne.un.s IL_0031

	IL_0020: ldarga.s lhs
	IL_0022: ldfld uint64 Sims3.SimIFace.ResourceKey::InstanceId /* 04000D75 */
	IL_0027: ldarga.s rhs
	IL_0029: ldfld uint64 Sims3.SimIFace.ResourceKey::InstanceId /* 04000D75 */
	IL_002e: ceq
	IL_0030: ret

	IL_0031: ldc.i4.0
	IL_0032: ret
} // end of method ResourceKey::op_Equality
