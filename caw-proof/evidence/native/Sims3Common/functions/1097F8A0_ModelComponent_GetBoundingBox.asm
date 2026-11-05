# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f8a0 (ModelComponent_GetBoundingBox)
Paired Ghidra pseudocode: 1097F8A0_ModelComponent_GetBoundingBox.c
Window: [0x1097f8a0, 0x1097f920) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f8a0: 8b 4c 24 08 83 ec 18 e8 54 b6 db ff 50 8d 44 24
1097f8b0: 04 50 e8 f9 71 00 00 8b 4c 24 24 8b 10 89 11 8b
1097f8c0: 50 04 89 51 04 8b 50 08 89 51 08 8b 50 0c 89 51
1097f8d0: 0c 8b 50 10 8b 40 14 89 51 10 89 41 14 8b c1 83
1097f8e0: c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc
1097f8f0: 8b c1 8b 4c 24 04 81 f9 74 f9 ce 04 74 10 33 d2
1097f900: 81 f9 6e 51 3f ee 0f 95 c2 83 ea 01 23 c2 c2 04
1097f910: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f8a0 <.text+0x97e8a0>:
1097f8a0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097f8a4:	83 ec 18                                        	sub    esp,0x18
1097f8a7:	e8 54 b6 db ff                                  	call   0x1073af00
1097f8ac:	50                                              	push   eax
1097f8ad:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1097f8b1:	50                                              	push   eax
1097f8b2:	e8 f9 71 00 00                                  	call   0x10986ab0
1097f8b7:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1097f8bb:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097f8bd:	89 11                                           	mov    DWORD PTR [ecx],edx
1097f8bf:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097f8c2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1097f8c5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1097f8c8:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1097f8cb:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1097f8ce:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
1097f8d1:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
1097f8d4:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
1097f8d7:	89 51 10                                        	mov    DWORD PTR [ecx+0x10],edx
1097f8da:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
1097f8dd:	8b c1                                           	mov    eax,ecx
1097f8df:	83 c4 20                                        	add    esp,0x20
1097f8e2:	c3                                              	ret
1097f8e3:	cc                                              	int3
1097f8e4:	cc                                              	int3
1097f8e5:	cc                                              	int3
1097f8e6:	cc                                              	int3
1097f8e7:	cc                                              	int3
1097f8e8:	cc                                              	int3
1097f8e9:	cc                                              	int3
1097f8ea:	cc                                              	int3
1097f8eb:	cc                                              	int3
1097f8ec:	cc                                              	int3
1097f8ed:	cc                                              	int3
1097f8ee:	cc                                              	int3
1097f8ef:	cc                                              	int3
1097f8f0:	8b c1                                           	mov    eax,ecx
1097f8f2:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f8f6:	81 f9 74 f9 ce 04                               	cmp    ecx,0x4cef974
1097f8fc:	74 10                                           	je     0x1097f90e
1097f8fe:	33 d2                                           	xor    edx,edx
1097f900:	81 f9 6e 51 3f ee                               	cmp    ecx,0xee3f516e
1097f906:	0f 95 c2                                        	setne  dl
1097f909:	83 ea 01                                        	sub    edx,0x1
1097f90c:	23 c2                                           	and    eax,edx
1097f90e:	c2 04 00                                        	ret    0x4
1097f911:	cc                                              	int3
1097f912:	cc                                              	int3
1097f913:	cc                                              	int3
1097f914:	cc                                              	int3
1097f915:	cc                                              	int3
1097f916:	cc                                              	int3
1097f917:	cc                                              	int3
1097f918:	cc                                              	int3
1097f919:	cc                                              	int3
1097f91a:	cc                                              	int3
1097f91b:	cc                                              	int3
1097f91c:	cc                                              	int3
1097f91d:	cc                                              	int3
1097f91e:	cc                                              	int3
1097f91f:	cc                                              	int3
