# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566fb0 (StopWatch_GetElapsedTimeFloatStopwatch)
Paired Ghidra pseudocode: 10566FB0_StopWatch_GetElapsedTimeFloatStopwatch.c
Window: [0x10566fb0, 0x10567020) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566fb0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10566fc0: 10 75 1e e8 58 41 ff ff 8b 10 8b c8 8b 82 cc 00
10566fd0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 cf fa 3b
10566fe0: 00 0f 57 c0 f3 0f 11 44 24 08 d9 44 24 08 5e c3
10566ff0: f6 44 24 04 01 56 8b f1 c7 05 a0 b0 c7 10 00 00
10567000: 00 00 c7 06 cc c8 ac 10 74 09 56 e8 80 1e 3b 00
10567010: 83 c4 04 8b c6 5e c2 04 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10566fb0 <.text+0x565fb0>:
10566fb0:	56                                              	push   esi
10566fb1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10566fb5:	8b c6                                           	mov    eax,esi
10566fb7:	25 00 00 00 ff                                  	and    eax,0xff000000
10566fbc:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10566fc1:	75 1e                                           	jne    0x10566fe1
10566fc3:	e8 58 41 ff ff                                  	call   0x1055b120
10566fc8:	8b 10                                           	mov    edx,DWORD PTR [eax]
10566fca:	8b c8                                           	mov    ecx,eax
10566fcc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10566fd2:	56                                              	push   esi
10566fd3:	ff d0                                           	call   eax
10566fd5:	85 c0                                           	test   eax,eax
10566fd7:	74 08                                           	je     0x10566fe1
10566fd9:	8b c8                                           	mov    ecx,eax
10566fdb:	5e                                              	pop    esi
10566fdc:	e9 cf fa 3b 00                                  	jmp    0x10926ab0
10566fe1:	0f 57 c0                                        	xorps  xmm0,xmm0
10566fe4:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10566fea:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10566fee:	5e                                              	pop    esi
10566fef:	c3                                              	ret
10566ff0:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
10566ff5:	56                                              	push   esi
10566ff6:	8b f1                                           	mov    esi,ecx
10566ff8:	c7 05 a0 b0 c7 10 00 00 00 00                   	mov    DWORD PTR ds:0x10c7b0a0,0x0
10567002:	c7 06 cc c8 ac 10                               	mov    DWORD PTR [esi],0x10acc8cc
10567008:	74 09                                           	je     0x10567013
1056700a:	56                                              	push   esi
1056700b:	e8 80 1e 3b 00                                  	call   0x10918e90
10567010:	83 c4 04                                        	add    esp,0x4
10567013:	8b c6                                           	mov    eax,esi
10567015:	5e                                              	pop    esi
10567016:	c2 04 00                                        	ret    0x4
10567019:	cc                                              	int3
1056701a:	cc                                              	int3
1056701b:	cc                                              	int3
1056701c:	cc                                              	int3
1056701d:	cc                                              	int3
1056701e:	cc                                              	int3
1056701f:	cc                                              	int3
