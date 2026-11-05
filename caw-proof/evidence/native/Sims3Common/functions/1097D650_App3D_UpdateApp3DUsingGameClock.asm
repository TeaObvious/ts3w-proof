# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d650 (App3D_UpdateApp3DUsingGameClock)
Paired Ghidra pseudocode: 1097D650_App3D_UpdateApp3DUsingGameClock.c
Window: [0x1097d650, 0x1097d6a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d6a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d650: 8b 44 24 04 f3 0f 10 05 8c 26 c7 10 8b 4c 24 08
1097d660: f3 0f 11 00 f3 0f 10 05 9c 26 c7 10 f3 0f 11 44
1097d670: 24 04 d9 44 24 04 83 ec 08 d9 5c 24 04 f3 0f 11
1097d680: 01 d9 00 d9 1c 24 e8 15 94 a0 ff 83 c4 08 b9 38
1097d690: 26 c7 10 e9 48 0d a1 ff cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d650 <.text+0x97c650>:
1097d650:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097d654:	f3 0f 10 05 8c 26 c7 10                         	movss  xmm0,DWORD PTR ds:0x10c7268c
1097d65c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1097d660:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
1097d664:	f3 0f 10 05 9c 26 c7 10                         	movss  xmm0,DWORD PTR ds:0x10c7269c
1097d66c:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1097d672:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1097d676:	83 ec 08                                        	sub    esp,0x8
1097d679:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1097d67d:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
1097d681:	d9 00                                           	fld    DWORD PTR [eax]
1097d683:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097d686:	e8 15 94 a0 ff                                  	call   0x10386aa0
1097d68b:	83 c4 08                                        	add    esp,0x8
1097d68e:	b9 38 26 c7 10                                  	mov    ecx,0x10c72638
1097d693:	e9 48 0d a1 ff                                  	jmp    0x1038e3e0
1097d698:	cc                                              	int3
1097d699:	cc                                              	int3
1097d69a:	cc                                              	int3
1097d69b:	cc                                              	int3
1097d69c:	cc                                              	int3
1097d69d:	cc                                              	int3
1097d69e:	cc                                              	int3
1097d69f:	cc                                              	int3
