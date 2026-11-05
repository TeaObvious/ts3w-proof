# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d550 (ScriptCore.CameraController::Camera_GetTarget)
Paired Ghidra pseudocode: 0073D550_ScriptCore_CameraController_Camera_GetTarget.c
Window: [0x0073d550, 0x0073d5c0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d5c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d550: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 71 c6 22 00 85
0073d560: c0 74 38 8b c8 e8 86 4a 7e 00 85 c0 74 2d 8b c8
0073d570: e8 6b 68 dd ff 85 c0 74 22 8b 10 8b 52 30 8d 4c
0073d580: 24 10 51 8b c8 ff d2 8b 75 08 50 56 e8 bf eb 02
0073d590: 00 83 c4 08 8b c6 5e 8b e5 5d c3 d9 ee 8b 75 08
0073d5a0: 83 ec 0c d9 54 24 08 d9 54 24 04 8b ce d9 1c 24
0073d5b0: e8 bb e9 02 00 8b c6 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
0073d550 <.text+0x33c550>:
  73d550:	55                                              	push   ebp
  73d551:	8b ec                                           	mov    ebp,esp
  73d553:	83 e4 f0                                        	and    esp,0xfffffff0
  73d556:	83 ec 1c                                        	sub    esp,0x1c
  73d559:	56                                              	push   esi
  73d55a:	e8 71 c6 22 00                                  	call   0x969bd0
  73d55f:	85 c0                                           	test   eax,eax
  73d561:	74 38                                           	je     0x73d59b
  73d563:	8b c8                                           	mov    ecx,eax
  73d565:	e8 86 4a 7e 00                                  	call   0xf21ff0
  73d56a:	85 c0                                           	test   eax,eax
  73d56c:	74 2d                                           	je     0x73d59b
  73d56e:	8b c8                                           	mov    ecx,eax
  73d570:	e8 6b 68 dd ff                                  	call   0x513de0
  73d575:	85 c0                                           	test   eax,eax
  73d577:	74 22                                           	je     0x73d59b
  73d579:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73d57b:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
  73d57e:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73d582:	51                                              	push   ecx
  73d583:	8b c8                                           	mov    ecx,eax
  73d585:	ff d2                                           	call   edx
  73d587:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  73d58a:	50                                              	push   eax
  73d58b:	56                                              	push   esi
  73d58c:	e8 bf eb 02 00                                  	call   0x76c150
  73d591:	83 c4 08                                        	add    esp,0x8
  73d594:	8b c6                                           	mov    eax,esi
  73d596:	5e                                              	pop    esi
  73d597:	8b e5                                           	mov    esp,ebp
  73d599:	5d                                              	pop    ebp
  73d59a:	c3                                              	ret
  73d59b:	d9 ee                                           	fldz
  73d59d:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  73d5a0:	83 ec 0c                                        	sub    esp,0xc
  73d5a3:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  73d5a7:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  73d5ab:	8b ce                                           	mov    ecx,esi
  73d5ad:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73d5b0:	e8 bb e9 02 00                                  	call   0x76bf70
  73d5b5:	8b c6                                           	mov    eax,esi
  73d5b7:	5e                                              	pop    esi
  73d5b8:	8b e5                                           	mov    esp,ebp
  73d5ba:	5d                                              	pop    ebp
  73d5bb:	c3                                              	ret
  73d5bc:	cc                                              	int3
  73d5bd:	cc                                              	int3
  73d5be:	cc                                              	int3
  73d5bf:	cc                                              	int3
