# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576f60 (World_ObjectStopVideo)
Paired Ghidra pseudocode: 10576F60_World_ObjectStopVideo.c
Window: [0x10576f60, 0x10576fb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576f60: 55 8b ec 83 e4 f0 83 ec 50 8b 45 08 8b 4d 0c 8d
10576f70: 14 24 52 c7 44 24 04 9e 33 5a 63 c7 44 24 08 00
10576f80: 00 00 00 89 44 24 0c 89 4c 24 10 e8 50 2f f1 ff
10576f90: 8b 4c 24 08 83 c4 04 85 c9 74 0b 8b 01 8b 00 8d
10576fa0: 54 24 10 52 ff d0 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576f60 <.text+0x575f60>:
10576f60:	55                                              	push   ebp
10576f61:	8b ec                                           	mov    ebp,esp
10576f63:	83 e4 f0                                        	and    esp,0xfffffff0
10576f66:	83 ec 50                                        	sub    esp,0x50
10576f69:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10576f6c:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10576f6f:	8d 14 24                                        	lea    edx,[esp]
10576f72:	52                                              	push   edx
10576f73:	c7 44 24 04 9e 33 5a 63                         	mov    DWORD PTR [esp+0x4],0x635a339e
10576f7b:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
10576f83:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10576f87:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10576f8b:	e8 50 2f f1 ff                                  	call   0x10489ee0
10576f90:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10576f94:	83 c4 04                                        	add    esp,0x4
10576f97:	85 c9                                           	test   ecx,ecx
10576f99:	74 0b                                           	je     0x10576fa6
10576f9b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10576f9d:	8b 00                                           	mov    eax,DWORD PTR [eax]
10576f9f:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10576fa3:	52                                              	push   edx
10576fa4:	ff d0                                           	call   eax
10576fa6:	8b e5                                           	mov    esp,ebp
10576fa8:	5d                                              	pop    ebp
10576fa9:	c3                                              	ret
10576faa:	cc                                              	int3
10576fab:	cc                                              	int3
10576fac:	cc                                              	int3
10576fad:	cc                                              	int3
10576fae:	cc                                              	int3
10576faf:	cc                                              	int3
