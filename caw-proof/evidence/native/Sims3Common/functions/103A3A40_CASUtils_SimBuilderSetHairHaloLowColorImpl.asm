# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3a40 (CASUtils_SimBuilderSetHairHaloLowColorImpl)
Paired Ghidra pseudocode: 103A3A40_CASUtils_SimBuilderSetHairHaloLowColorImpl.c
Window: [0x103a3a40, 0x103a3a80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3a40: f3 0f 10 44 24 08 83 ec 0c 8b c4 f3 0f 11 00 f3
103a3a50: 0f 10 44 24 18 f3 0f 11 40 04 f3 0f 10 44 24 1c
103a3a60: f3 0f 11 40 08 8b 44 24 10 50 e8 11 ef ff ff 83
103a3a70: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3a40 <.text+0x3a2a40>:
103a3a40:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
103a3a46:	83 ec 0c                                        	sub    esp,0xc
103a3a49:	8b c4                                           	mov    eax,esp
103a3a4b:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
103a3a4f:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
103a3a55:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
103a3a5a:	f3 0f 10 44 24 1c                               	movss  xmm0,DWORD PTR [esp+0x1c]
103a3a60:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
103a3a65:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
103a3a69:	50                                              	push   eax
103a3a6a:	e8 11 ef ff ff                                  	call   0x103a2980
103a3a6f:	83 c4 10                                        	add    esp,0x10
103a3a72:	c3                                              	ret
103a3a73:	cc                                              	int3
103a3a74:	cc                                              	int3
103a3a75:	cc                                              	int3
103a3a76:	cc                                              	int3
103a3a77:	cc                                              	int3
103a3a78:	cc                                              	int3
103a3a79:	cc                                              	int3
103a3a7a:	cc                                              	int3
103a3a7b:	cc                                              	int3
103a3a7c:	cc                                              	int3
103a3a7d:	cc                                              	int3
103a3a7e:	cc                                              	int3
103a3a7f:	cc                                              	int3
