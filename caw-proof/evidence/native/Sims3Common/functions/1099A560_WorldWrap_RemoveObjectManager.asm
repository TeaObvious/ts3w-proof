# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1099a560 (WorldWrap_RemoveObjectManager)
Paired Ghidra pseudocode: 1099A560_WorldWrap_RemoveObjectManager.c
Window: [0x1099a560, 0x1099a5c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1099a5c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1099a560: 83 ec 20 8b 44 24 28 c6 04 24 01 89 44 24 28 c7
1099a570: 44 24 04 e8 7b ab 10 33 c9 8d 54 24 08 87 0a 8b
1099a580: 44 24 24 8d 4c 24 28 6a 00 89 4c 24 1c 8d 54 24
1099a590: 04 6a 01 8d 4c 24 0c c7 44 24 0c 44 9a ac 10 89
1099a5a0: 44 24 18 c7 44 24 1c 90 9f 23 10 89 54 24 24 e8
1099a5b0: dc 27 c3 ff 83 c4 20 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1099a560 <.text+0x999560>:
1099a560:	83 ec 20                                        	sub    esp,0x20
1099a563:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1099a567:	c6 04 24 01                                     	mov    BYTE PTR [esp],0x1
1099a56b:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
1099a56f:	c7 44 24 04 e8 7b ab 10                         	mov    DWORD PTR [esp+0x4],0x10ab7be8
1099a577:	33 c9                                           	xor    ecx,ecx
1099a579:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1099a57d:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1099a57f:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1099a583:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1099a587:	6a 00                                           	push   0x0
1099a589:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
1099a58d:	8d 54 24 04                                     	lea    edx,[esp+0x4]
1099a591:	6a 01                                           	push   0x1
1099a593:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1099a597:	c7 44 24 0c 44 9a ac 10                         	mov    DWORD PTR [esp+0xc],0x10ac9a44
1099a59f:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1099a5a3:	c7 44 24 1c 90 9f 23 10                         	mov    DWORD PTR [esp+0x1c],0x10239f90
1099a5ab:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1099a5af:	e8 dc 27 c3 ff                                  	call   0x105ccd90
1099a5b4:	83 c4 20                                        	add    esp,0x20
1099a5b7:	c3                                              	ret
1099a5b8:	cc                                              	int3
1099a5b9:	cc                                              	int3
1099a5ba:	cc                                              	int3
1099a5bb:	cc                                              	int3
1099a5bc:	cc                                              	int3
1099a5bd:	cc                                              	int3
1099a5be:	cc                                              	int3
1099a5bf:	cc                                              	int3
