# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997d00 (WorldWrap_GetActiveObjectManager)
Paired Ghidra pseudocode: 10997D00_WorldWrap_GetActiveObjectManager.c
Window: [0x10997d00, 0x10997d40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997d00: 8b 44 24 04 85 c0 74 28 56 8b b0 ac 00 00 00 85
10997d10: f6 75 0a 8b 44 24 0c 89 30 33 c0 5e c3 8b 16 8b
10997d20: 42 40 8b ce ff d0 8b 4c 24 0c 89 01 8b c6 5e c3
10997d30: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997d00 <.text+0x996d00>:
10997d00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10997d04:	85 c0                                           	test   eax,eax
10997d06:	74 28                                           	je     0x10997d30
10997d08:	56                                              	push   esi
10997d09:	8b b0 ac 00 00 00                               	mov    esi,DWORD PTR [eax+0xac]
10997d0f:	85 f6                                           	test   esi,esi
10997d11:	75 0a                                           	jne    0x10997d1d
10997d13:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10997d17:	89 30                                           	mov    DWORD PTR [eax],esi
10997d19:	33 c0                                           	xor    eax,eax
10997d1b:	5e                                              	pop    esi
10997d1c:	c3                                              	ret
10997d1d:	8b 16                                           	mov    edx,DWORD PTR [esi]
10997d1f:	8b 42 40                                        	mov    eax,DWORD PTR [edx+0x40]
10997d22:	8b ce                                           	mov    ecx,esi
10997d24:	ff d0                                           	call   eax
10997d26:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10997d2a:	89 01                                           	mov    DWORD PTR [ecx],eax
10997d2c:	8b c6                                           	mov    eax,esi
10997d2e:	5e                                              	pop    esi
10997d2f:	c3                                              	ret
10997d30:	33 c0                                           	xor    eax,eax
10997d32:	c3                                              	ret
10997d33:	cc                                              	int3
10997d34:	cc                                              	int3
10997d35:	cc                                              	int3
10997d36:	cc                                              	int3
10997d37:	cc                                              	int3
10997d38:	cc                                              	int3
10997d39:	cc                                              	int3
10997d3a:	cc                                              	int3
10997d3b:	cc                                              	int3
10997d3c:	cc                                              	int3
10997d3d:	cc                                              	int3
10997d3e:	cc                                              	int3
10997d3f:	cc                                              	int3
