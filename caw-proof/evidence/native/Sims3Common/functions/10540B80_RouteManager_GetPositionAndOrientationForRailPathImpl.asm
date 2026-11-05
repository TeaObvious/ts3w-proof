# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540b80 (RouteManager_GetPositionAndOrientationForRailPathImpl)
Paired Ghidra pseudocode: 10540B80_RouteManager_GetPositionAndOrientationForRailPathImpl.c
Window: [0x10540b80, 0x10540bb0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540b80: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10540b90: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 1d
10540ba0: e6 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540b80 <.text+0x53fb80>:
10540b80:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10540b84:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10540b88:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10540b8c:	50                                              	push   eax
10540b8d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10540b91:	51                                              	push   ecx
10540b92:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10540b96:	52                                              	push   edx
10540b97:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10540b9b:	50                                              	push   eax
10540b9c:	51                                              	push   ecx
10540b9d:	52                                              	push   edx
10540b9e:	e8 1d e6 ff ff                                  	call   0x1053f1c0
10540ba3:	83 c4 18                                        	add    esp,0x18
10540ba6:	c3                                              	ret
10540ba7:	cc                                              	int3
10540ba8:	cc                                              	int3
10540ba9:	cc                                              	int3
10540baa:	cc                                              	int3
10540bab:	cc                                              	int3
10540bac:	cc                                              	int3
10540bad:	cc                                              	int3
10540bae:	cc                                              	int3
10540baf:	cc                                              	int3
