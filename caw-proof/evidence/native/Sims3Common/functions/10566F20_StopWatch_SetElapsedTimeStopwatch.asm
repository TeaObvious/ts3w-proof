# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566f20 (StopWatch_SetElapsedTimeStopwatch)
Paired Ghidra pseudocode: 10566F20_StopWatch_SetElapsedTimeStopwatch.c
Window: [0x10566f20, 0x10566f60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566f20: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10566f30: 10 75 24 e8 e8 41 ff ff 8b 10 8b c8 8b 82 cc 00
10566f40: 00 00 56 ff d0 85 c0 74 0e 8b 4c 24 0c 6a 00 51
10566f50: 8b c8 e8 09 fb 3b 00 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566f20 <.text+0x565f20>:
10566f20:	56                                              	push   esi
10566f21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10566f25:	8b c6                                           	mov    eax,esi
10566f27:	25 00 00 00 ff                                  	and    eax,0xff000000
10566f2c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10566f31:	75 24                                           	jne    0x10566f57
10566f33:	e8 e8 41 ff ff                                  	call   0x1055b120
10566f38:	8b 10                                           	mov    edx,DWORD PTR [eax]
10566f3a:	8b c8                                           	mov    ecx,eax
10566f3c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10566f42:	56                                              	push   esi
10566f43:	ff d0                                           	call   eax
10566f45:	85 c0                                           	test   eax,eax
10566f47:	74 0e                                           	je     0x10566f57
10566f49:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10566f4d:	6a 00                                           	push   0x0
10566f4f:	51                                              	push   ecx
10566f50:	8b c8                                           	mov    ecx,eax
10566f52:	e8 09 fb 3b 00                                  	call   0x10926a60
10566f57:	5e                                              	pop    esi
10566f58:	c3                                              	ret
10566f59:	cc                                              	int3
10566f5a:	cc                                              	int3
10566f5b:	cc                                              	int3
10566f5c:	cc                                              	int3
10566f5d:	cc                                              	int3
10566f5e:	cc                                              	int3
10566f5f:	cc                                              	int3
