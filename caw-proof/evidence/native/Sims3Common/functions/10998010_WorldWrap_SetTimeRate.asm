# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998010 (WorldWrap_SetTimeRate)
Paired Ghidra pseudocode: 10998010_WorldWrap_SetTimeRate.c
Window: [0x10998010, 0x10998030) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998030
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998010: 8b 44 24 04 f3 0f 10 44 24 08 f3 0f 11 80 28 01
10998020: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998010 <.text+0x997010>:
10998010:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998014:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
1099801a:	f3 0f 11 80 28 01 00 00                         	movss  DWORD PTR [eax+0x128],xmm0
10998022:	c3                                              	ret
10998023:	cc                                              	int3
10998024:	cc                                              	int3
10998025:	cc                                              	int3
10998026:	cc                                              	int3
10998027:	cc                                              	int3
10998028:	cc                                              	int3
10998029:	cc                                              	int3
1099802a:	cc                                              	int3
1099802b:	cc                                              	int3
1099802c:	cc                                              	int3
1099802d:	cc                                              	int3
1099802e:	cc                                              	int3
1099802f:	cc                                              	int3
