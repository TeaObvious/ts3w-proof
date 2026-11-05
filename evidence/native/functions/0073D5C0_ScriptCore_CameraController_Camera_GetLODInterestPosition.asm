# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d5c0 (ScriptCore.CameraController::Camera_GetLODInterestPosition)
Paired Ghidra pseudocode: 0073D5C0_ScriptCore_CameraController_Camera_GetLODInterestPosition.c
Window: [0x0073d5c0, 0x0073d620) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d5c0: 56 e8 0a c6 22 00 85 c0 74 30 8b c8 e8 1f 4a 7e
0073d5d0: 00 85 c0 74 25 8b c8 e8 04 68 dd ff 85 c0 74 1a
0073d5e0: 8b 48 0c e8 b8 27 22 00 8b 74 24 08 50 56 e8 5d
0073d5f0: eb 02 00 83 c4 08 8b c6 5e c3 d9 ee 8b 74 24 08
0073d600: 83 ec 0c d9 54 24 08 d9 54 24 04 8b ce d9 1c 24
0073d610: e8 5b e9 02 00 8b c6 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073d5c0 <.text+0x33c5c0>:
  73d5c0:	56                                              	push   esi
  73d5c1:	e8 0a c6 22 00                                  	call   0x969bd0
  73d5c6:	85 c0                                           	test   eax,eax
  73d5c8:	74 30                                           	je     0x73d5fa
  73d5ca:	8b c8                                           	mov    ecx,eax
  73d5cc:	e8 1f 4a 7e 00                                  	call   0xf21ff0
  73d5d1:	85 c0                                           	test   eax,eax
  73d5d3:	74 25                                           	je     0x73d5fa
  73d5d5:	8b c8                                           	mov    ecx,eax
  73d5d7:	e8 04 68 dd ff                                  	call   0x513de0
  73d5dc:	85 c0                                           	test   eax,eax
  73d5de:	74 1a                                           	je     0x73d5fa
  73d5e0:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  73d5e3:	e8 b8 27 22 00                                  	call   0x95fda0
  73d5e8:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  73d5ec:	50                                              	push   eax
  73d5ed:	56                                              	push   esi
  73d5ee:	e8 5d eb 02 00                                  	call   0x76c150
  73d5f3:	83 c4 08                                        	add    esp,0x8
  73d5f6:	8b c6                                           	mov    eax,esi
  73d5f8:	5e                                              	pop    esi
  73d5f9:	c3                                              	ret
  73d5fa:	d9 ee                                           	fldz
  73d5fc:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  73d600:	83 ec 0c                                        	sub    esp,0xc
  73d603:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  73d607:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  73d60b:	8b ce                                           	mov    ecx,esi
  73d60d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73d610:	e8 5b e9 02 00                                  	call   0x76bf70
  73d615:	8b c6                                           	mov    eax,esi
  73d617:	5e                                              	pop    esi
  73d618:	c3                                              	ret
  73d619:	cc                                              	int3
  73d61a:	cc                                              	int3
  73d61b:	cc                                              	int3
  73d61c:	cc                                              	int3
  73d61d:	cc                                              	int3
  73d61e:	cc                                              	int3
  73d61f:	cc                                              	int3
