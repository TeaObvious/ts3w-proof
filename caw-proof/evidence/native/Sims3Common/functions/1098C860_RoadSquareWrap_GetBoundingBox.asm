# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c860 (RoadSquareWrap_GetBoundingBox)
Paired Ghidra pseudocode: 1098C860_RoadSquareWrap_GetBoundingBox.c
Window: [0x1098c860, 0x1098c8b0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c8b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c860: 55 8b ec 83 e4 f0 83 ec 40 8d 4c 24 20 e8 ee 63
1098c870: af ff 8d 44 24 20 50 8d 4c 24 0c 51 e8 2f a2 ff
1098c880: ff 8b 4d 08 8b 10 89 11 8b 50 04 89 51 04 8b 50
1098c890: 08 89 51 08 8b 50 0c 89 51 0c 8b 50 10 8b 40 14
1098c8a0: 89 51 10 89 41 14 83 c4 08 8b c1 8b e5 5d c3 cc

LINEAR DISASSEMBLY
1098c860 <.text+0x98b860>:
1098c860:	55                                              	push   ebp
1098c861:	8b ec                                           	mov    ebp,esp
1098c863:	83 e4 f0                                        	and    esp,0xfffffff0
1098c866:	83 ec 40                                        	sub    esp,0x40
1098c869:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098c86d:	e8 ee 63 af ff                                  	call   0x10482c60
1098c872:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1098c876:	50                                              	push   eax
1098c877:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098c87b:	51                                              	push   ecx
1098c87c:	e8 2f a2 ff ff                                  	call   0x10986ab0
1098c881:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098c884:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098c886:	89 11                                           	mov    DWORD PTR [ecx],edx
1098c888:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098c88b:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1098c88e:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098c891:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1098c894:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098c897:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
1098c89a:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
1098c89d:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
1098c8a0:	89 51 10                                        	mov    DWORD PTR [ecx+0x10],edx
1098c8a3:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
1098c8a6:	83 c4 08                                        	add    esp,0x8
1098c8a9:	8b c1                                           	mov    eax,ecx
1098c8ab:	8b e5                                           	mov    esp,ebp
1098c8ad:	5d                                              	pop    ebp
1098c8ae:	c3                                              	ret
1098c8af:	cc                                              	int3
