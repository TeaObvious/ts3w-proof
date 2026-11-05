# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996e40 (WorldTerrainWrap_GetRoadBridge)
Paired Ghidra pseudocode: 10996E40_WorldTerrainWrap_GetRoadBridge.c
Window: [0x10996e40, 0x10996e90) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996e40: a1 c4 00 c7 10 8b 40 5c 8b 90 f4 00 00 00 8b 88
10996e50: f0 00 00 00 05 f0 00 00 00 3b ca 53 56 57 74 1f
10996e60: 8b 7c 24 14 8b 74 24 10 8b 01 8b 58 30 3b de 75
10996e70: 07 8b 58 34 3b df 74 09 83 c1 04 3b ca 75 e9 33
10996e80: c0 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996e40 <.text+0x995e40>:
10996e40:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10996e45:	8b 40 5c                                        	mov    eax,DWORD PTR [eax+0x5c]
10996e48:	8b 90 f4 00 00 00                               	mov    edx,DWORD PTR [eax+0xf4]
10996e4e:	8b 88 f0 00 00 00                               	mov    ecx,DWORD PTR [eax+0xf0]
10996e54:	05 f0 00 00 00                                  	add    eax,0xf0
10996e59:	3b ca                                           	cmp    ecx,edx
10996e5b:	53                                              	push   ebx
10996e5c:	56                                              	push   esi
10996e5d:	57                                              	push   edi
10996e5e:	74 1f                                           	je     0x10996e7f
10996e60:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10996e64:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
10996e68:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10996e6a:	8b 58 30                                        	mov    ebx,DWORD PTR [eax+0x30]
10996e6d:	3b de                                           	cmp    ebx,esi
10996e6f:	75 07                                           	jne    0x10996e78
10996e71:	8b 58 34                                        	mov    ebx,DWORD PTR [eax+0x34]
10996e74:	3b df                                           	cmp    ebx,edi
10996e76:	74 09                                           	je     0x10996e81
10996e78:	83 c1 04                                        	add    ecx,0x4
10996e7b:	3b ca                                           	cmp    ecx,edx
10996e7d:	75 e9                                           	jne    0x10996e68
10996e7f:	33 c0                                           	xor    eax,eax
10996e81:	5f                                              	pop    edi
10996e82:	5e                                              	pop    esi
10996e83:	5b                                              	pop    ebx
10996e84:	c3                                              	ret
10996e85:	cc                                              	int3
10996e86:	cc                                              	int3
10996e87:	cc                                              	int3
10996e88:	cc                                              	int3
10996e89:	cc                                              	int3
10996e8a:	cc                                              	int3
10996e8b:	cc                                              	int3
10996e8c:	cc                                              	int3
10996e8d:	cc                                              	int3
10996e8e:	cc                                              	int3
10996e8f:	cc                                              	int3
