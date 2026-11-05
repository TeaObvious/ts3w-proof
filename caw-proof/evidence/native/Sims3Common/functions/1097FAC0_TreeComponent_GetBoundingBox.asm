# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fac0 (TreeComponent_GetBoundingBox)
Paired Ghidra pseudocode: 1097FAC0_TreeComponent_GetBoundingBox.c
Window: [0x1097fac0, 0x1097fb10) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fb10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fac0: 8b 4c 24 08 83 ec 18 e8 f4 d3 dc ff 50 8d 44 24
1097fad0: 04 50 e8 d9 6f 00 00 8b 4c 24 24 8b 10 89 11 8b
1097fae0: 50 04 89 51 04 8b 50 08 89 51 08 8b 50 0c 89 51
1097faf0: 0c 8b 50 10 8b 40 14 89 51 10 89 41 14 8b c1 83
1097fb00: c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fac0 <.text+0x97eac0>:
1097fac0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097fac4:	83 ec 18                                        	sub    esp,0x18
1097fac7:	e8 f4 d3 dc ff                                  	call   0x1074cec0
1097facc:	50                                              	push   eax
1097facd:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1097fad1:	50                                              	push   eax
1097fad2:	e8 d9 6f 00 00                                  	call   0x10986ab0
1097fad7:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1097fadb:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097fadd:	89 11                                           	mov    DWORD PTR [ecx],edx
1097fadf:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097fae2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1097fae5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1097fae8:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1097faeb:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1097faee:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
1097faf1:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
1097faf4:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
1097faf7:	89 51 10                                        	mov    DWORD PTR [ecx+0x10],edx
1097fafa:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
1097fafd:	8b c1                                           	mov    eax,ecx
1097faff:	83 c4 20                                        	add    esp,0x20
1097fb02:	c3                                              	ret
1097fb03:	cc                                              	int3
1097fb04:	cc                                              	int3
1097fb05:	cc                                              	int3
1097fb06:	cc                                              	int3
1097fb07:	cc                                              	int3
1097fb08:	cc                                              	int3
1097fb09:	cc                                              	int3
1097fb0a:	cc                                              	int3
1097fb0b:	cc                                              	int3
1097fb0c:	cc                                              	int3
1097fb0d:	cc                                              	int3
1097fb0e:	cc                                              	int3
1097fb0f:	cc                                              	int3
