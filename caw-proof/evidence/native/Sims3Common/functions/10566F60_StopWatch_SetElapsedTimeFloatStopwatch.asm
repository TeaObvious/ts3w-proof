# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566f60 (StopWatch_SetElapsedTimeFloatStopwatch)
Paired Ghidra pseudocode: 10566F60_StopWatch_SetElapsedTimeFloatStopwatch.c
Window: [0x10566f60, 0x10566fa0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10566fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566f60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10566f70: 10 75 25 e8 a8 41 ff ff 8b 10 8b c8 8b 82 cc 00
10566f80: 00 00 56 ff d0 85 c0 74 0f d9 44 24 0c 51 8b c8
10566f90: d9 1c 24 e8 b8 fb 3b 00 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566f60 <.text+0x565f60>:
10566f60:	56                                              	push   esi
10566f61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10566f65:	8b c6                                           	mov    eax,esi
10566f67:	25 00 00 00 ff                                  	and    eax,0xff000000
10566f6c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10566f71:	75 25                                           	jne    0x10566f98
10566f73:	e8 a8 41 ff ff                                  	call   0x1055b120
10566f78:	8b 10                                           	mov    edx,DWORD PTR [eax]
10566f7a:	8b c8                                           	mov    ecx,eax
10566f7c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10566f82:	56                                              	push   esi
10566f83:	ff d0                                           	call   eax
10566f85:	85 c0                                           	test   eax,eax
10566f87:	74 0f                                           	je     0x10566f98
10566f89:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10566f8d:	51                                              	push   ecx
10566f8e:	8b c8                                           	mov    ecx,eax
10566f90:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10566f93:	e8 b8 fb 3b 00                                  	call   0x10926b50
10566f98:	5e                                              	pop    esi
10566f99:	c3                                              	ret
10566f9a:	cc                                              	int3
10566f9b:	cc                                              	int3
10566f9c:	cc                                              	int3
10566f9d:	cc                                              	int3
10566f9e:	cc                                              	int3
10566f9f:	cc                                              	int3
