# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3a00 (CASUtils_SimBuilderSetHairBaseColorImpl)
Paired Ghidra pseudocode: 103A3A00_CASUtils_SimBuilderSetHairBaseColorImpl.c
Window: [0x103a3a00, 0x103a3a40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3a00: f3 0f 10 44 24 08 83 ec 0c 8b c4 f3 0f 11 00 f3
103a3a10: 0f 10 44 24 18 f3 0f 11 40 04 f3 0f 10 44 24 1c
103a3a20: f3 0f 11 40 08 8b 44 24 10 50 e8 a1 ee ff ff 83
103a3a30: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3a00 <.text+0x3a2a00>:
103a3a00:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
103a3a06:	83 ec 0c                                        	sub    esp,0xc
103a3a09:	8b c4                                           	mov    eax,esp
103a3a0b:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
103a3a0f:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
103a3a15:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
103a3a1a:	f3 0f 10 44 24 1c                               	movss  xmm0,DWORD PTR [esp+0x1c]
103a3a20:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
103a3a25:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
103a3a29:	50                                              	push   eax
103a3a2a:	e8 a1 ee ff ff                                  	call   0x103a28d0
103a3a2f:	83 c4 10                                        	add    esp,0x10
103a3a32:	c3                                              	ret
103a3a33:	cc                                              	int3
103a3a34:	cc                                              	int3
103a3a35:	cc                                              	int3
103a3a36:	cc                                              	int3
103a3a37:	cc                                              	int3
103a3a38:	cc                                              	int3
103a3a39:	cc                                              	int3
103a3a3a:	cc                                              	int3
103a3a3b:	cc                                              	int3
103a3a3c:	cc                                              	int3
103a3a3d:	cc                                              	int3
103a3a3e:	cc                                              	int3
103a3a3f:	cc                                              	int3
