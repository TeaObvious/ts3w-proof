# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531ce0 (DataFactory_GetXMLStringFromPrototypeResourceImpl)
Paired Ghidra pseudocode: 10531CE0_DataFactory_GetXMLStringFromPrototypeResourceImpl.c
Window: [0x10531ce0, 0x10531d40) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531d40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531ce0: e8 3b 94 02 00 8b 10 8b c8 8b 82 7c 01 00 00 ff
10531cf0: d0 8b 4c 24 04 8b 10 8b 52 4c 51 8b c8 ff d2 c3
10531d00: 8b 44 24 04 c7 00 30 d1 c2 10 c2 04 00 cc cc cc
10531d10: b8 7c a0 b1 10 c3 cc cc cc cc cc cc cc cc cc cc
10531d20: f6 44 24 04 01 56 8b f1 c7 06 cc c8 ac 10 74 09
10531d30: 56 e8 5a 71 3e 00 83 c4 04 8b c6 5e c2 04 00 cc

LINEAR DISASSEMBLY
10531ce0 <.text+0x530ce0>:
10531ce0:	e8 3b 94 02 00                                  	call   0x1055b120
10531ce5:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531ce7:	8b c8                                           	mov    ecx,eax
10531ce9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
10531cef:	ff d0                                           	call   eax
10531cf1:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10531cf5:	8b 10                                           	mov    edx,DWORD PTR [eax]
10531cf7:	8b 52 4c                                        	mov    edx,DWORD PTR [edx+0x4c]
10531cfa:	51                                              	push   ecx
10531cfb:	8b c8                                           	mov    ecx,eax
10531cfd:	ff d2                                           	call   edx
10531cff:	c3                                              	ret
10531d00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10531d04:	c7 00 30 d1 c2 10                               	mov    DWORD PTR [eax],0x10c2d130
10531d0a:	c2 04 00                                        	ret    0x4
10531d0d:	cc                                              	int3
10531d0e:	cc                                              	int3
10531d0f:	cc                                              	int3
10531d10:	b8 7c a0 b1 10                                  	mov    eax,0x10b1a07c
10531d15:	c3                                              	ret
10531d16:	cc                                              	int3
10531d17:	cc                                              	int3
10531d18:	cc                                              	int3
10531d19:	cc                                              	int3
10531d1a:	cc                                              	int3
10531d1b:	cc                                              	int3
10531d1c:	cc                                              	int3
10531d1d:	cc                                              	int3
10531d1e:	cc                                              	int3
10531d1f:	cc                                              	int3
10531d20:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
10531d25:	56                                              	push   esi
10531d26:	8b f1                                           	mov    esi,ecx
10531d28:	c7 06 cc c8 ac 10                               	mov    DWORD PTR [esi],0x10acc8cc
10531d2e:	74 09                                           	je     0x10531d39
10531d30:	56                                              	push   esi
10531d31:	e8 5a 71 3e 00                                  	call   0x10918e90
10531d36:	83 c4 04                                        	add    esp,0x4
10531d39:	8b c6                                           	mov    eax,esi
10531d3b:	5e                                              	pop    esi
10531d3c:	c2 04 00                                        	ret    0x4
10531d3f:	cc                                              	int3
