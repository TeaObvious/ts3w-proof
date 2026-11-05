// PC1.67 mscorlib; System.IO.BinaryReader; ReadBoolean
.method /* 0600136D */ public hidebysig newslot virtual 
	instance bool ReadBoolean () cil managed 
{
	// Method begins at RVA 0x2ce57
	// Header size: 1
	// Code size: 13 (0xd)
	.maxstack 8

	IL_0000: ldarg.0
	IL_0001: callvirt instance uint8 System.IO.BinaryReader::ReadByte() /* 0600136E */
	IL_0006: ldc.i4.0
	IL_0007: ceq
	IL_0009: ldc.i4.0
	IL_000a: ceq
	IL_000c: ret
} // end of method BinaryReader::ReadBoolean
