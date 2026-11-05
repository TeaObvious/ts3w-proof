# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ddd0 (SacsWrap_SelectOnDestinationNode_GetCaseValue)
Paired Ghidra pseudocode: 1098DDD0_SacsWrap_SelectOnDestinationNode_GetCaseValue.c
Window: [0x1098ddd0, 0x1098de40) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098de40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ddd0: 8b 54 24 04 85 d2 74 59 8b 4a 34 8b 01 85 c0 75
1098dde0: 11 83 c1 04 39 01 75 08 83 c1 04 83 39 00 74 f8
1098ddf0: 8b 01 56 8b 72 38 8b 52 34 8b 34 b2 3b c6 74 21
1098de00: 8b 54 24 0c 85 d2 76 1d 8b 40 24 85 c0 75 0b 90
1098de10: 8b 41 04 83 c1 04 85 c0 74 f6 83 ea 01 3b c6 75
1098de20: e3 33 c0 5e c3 3b c6 74 f8 85 d2 75 f4 8b 00 5e
1098de30: c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ddd0 <.text+0x98cdd0>:
1098ddd0:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098ddd4:	85 d2                                           	test   edx,edx
1098ddd6:	74 59                                           	je     0x1098de31
1098ddd8:	8b 4a 34                                        	mov    ecx,DWORD PTR [edx+0x34]
1098dddb:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098dddd:	85 c0                                           	test   eax,eax
1098dddf:	75 11                                           	jne    0x1098ddf2
1098dde1:	83 c1 04                                        	add    ecx,0x4
1098dde4:	39 01                                           	cmp    DWORD PTR [ecx],eax
1098dde6:	75 08                                           	jne    0x1098ddf0
1098dde8:	83 c1 04                                        	add    ecx,0x4
1098ddeb:	83 39 00                                        	cmp    DWORD PTR [ecx],0x0
1098ddee:	74 f8                                           	je     0x1098dde8
1098ddf0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098ddf2:	56                                              	push   esi
1098ddf3:	8b 72 38                                        	mov    esi,DWORD PTR [edx+0x38]
1098ddf6:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
1098ddf9:	8b 34 b2                                        	mov    esi,DWORD PTR [edx+esi*4]
1098ddfc:	3b c6                                           	cmp    eax,esi
1098ddfe:	74 21                                           	je     0x1098de21
1098de00:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098de04:	85 d2                                           	test   edx,edx
1098de06:	76 1d                                           	jbe    0x1098de25
1098de08:	8b 40 24                                        	mov    eax,DWORD PTR [eax+0x24]
1098de0b:	85 c0                                           	test   eax,eax
1098de0d:	75 0b                                           	jne    0x1098de1a
1098de0f:	90                                              	nop
1098de10:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
1098de13:	83 c1 04                                        	add    ecx,0x4
1098de16:	85 c0                                           	test   eax,eax
1098de18:	74 f6                                           	je     0x1098de10
1098de1a:	83 ea 01                                        	sub    edx,0x1
1098de1d:	3b c6                                           	cmp    eax,esi
1098de1f:	75 e3                                           	jne    0x1098de04
1098de21:	33 c0                                           	xor    eax,eax
1098de23:	5e                                              	pop    esi
1098de24:	c3                                              	ret
1098de25:	3b c6                                           	cmp    eax,esi
1098de27:	74 f8                                           	je     0x1098de21
1098de29:	85 d2                                           	test   edx,edx
1098de2b:	75 f4                                           	jne    0x1098de21
1098de2d:	8b 00                                           	mov    eax,DWORD PTR [eax]
1098de2f:	5e                                              	pop    esi
1098de30:	c3                                              	ret
1098de31:	33 c0                                           	xor    eax,eax
1098de33:	c3                                              	ret
1098de34:	cc                                              	int3
1098de35:	cc                                              	int3
1098de36:	cc                                              	int3
1098de37:	cc                                              	int3
1098de38:	cc                                              	int3
1098de39:	cc                                              	int3
1098de3a:	cc                                              	int3
1098de3b:	cc                                              	int3
1098de3c:	cc                                              	int3
1098de3d:	cc                                              	int3
1098de3e:	cc                                              	int3
1098de3f:	cc                                              	int3
