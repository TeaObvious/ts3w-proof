# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fc00 (ShaderLibrary_GetShaderSet)
Paired Ghidra pseudocode: 1098FC00_ShaderLibrary_GetShaderSet.c
Window: [0x1098fc00, 0x1098fc50) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fc50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fc00: 51 8b 54 24 08 8b 0d 94 bd c7 10 6a 00 8d 44 24
1098fc10: 04 50 52 c7 44 24 0c 00 00 00 00 e8 30 e8 bf ff
1098fc20: 84 c0 74 21 8b 0c 24 85 c9 74 13 8b 01 8b 50 0c
1098fc30: 68 84 2e 21 03 ff d2 85 c0 75 0c 8b 0c 24 8b 01
1098fc40: 8b 50 04 ff d2 33 c0 59 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fc00 <.text+0x98ec00>:
1098fc00:	51                                              	push   ecx
1098fc01:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098fc05:	8b 0d 94 bd c7 10                               	mov    ecx,DWORD PTR ds:0x10c7bd94
1098fc0b:	6a 00                                           	push   0x0
1098fc0d:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1098fc11:	50                                              	push   eax
1098fc12:	52                                              	push   edx
1098fc13:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1098fc1b:	e8 30 e8 bf ff                                  	call   0x1058e450
1098fc20:	84 c0                                           	test   al,al
1098fc22:	74 21                                           	je     0x1098fc45
1098fc24:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098fc27:	85 c9                                           	test   ecx,ecx
1098fc29:	74 13                                           	je     0x1098fc3e
1098fc2b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098fc2d:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098fc30:	68 84 2e 21 03                                  	push   0x3212e84
1098fc35:	ff d2                                           	call   edx
1098fc37:	85 c0                                           	test   eax,eax
1098fc39:	75 0c                                           	jne    0x1098fc47
1098fc3b:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098fc3e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098fc40:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098fc43:	ff d2                                           	call   edx
1098fc45:	33 c0                                           	xor    eax,eax
1098fc47:	59                                              	pop    ecx
1098fc48:	c3                                              	ret
1098fc49:	cc                                              	int3
1098fc4a:	cc                                              	int3
1098fc4b:	cc                                              	int3
1098fc4c:	cc                                              	int3
1098fc4d:	cc                                              	int3
1098fc4e:	cc                                              	int3
1098fc4f:	cc                                              	int3
