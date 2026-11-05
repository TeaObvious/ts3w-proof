# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d4e0 (ScriptCore.CameraController::Camera_GetPosition)
Paired Ghidra pseudocode: 0073D4E0_ScriptCore_CameraController_Camera_GetPosition.c
Window: [0x0073d4e0, 0x0073d550) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d4e0: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 e1 c6 22 00 85
0073d4f0: c0 74 38 8b c8 e8 f6 4a 7e 00 85 c0 74 2d 8b c8
0073d500: e8 db 68 dd ff 85 c0 74 22 8b 10 8b 52 34 8d 4c
0073d510: 24 10 51 8b c8 ff d2 8b 75 08 50 56 e8 2f ec 02
0073d520: 00 83 c4 08 8b c6 5e 8b e5 5d c3 d9 ee 8b 75 08
0073d530: 83 ec 0c d9 54 24 08 d9 54 24 04 8b ce d9 1c 24
0073d540: e8 2b ea 02 00 8b c6 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
0073d4e0 <.text+0x33c4e0>:
  73d4e0:	55                                              	push   ebp
  73d4e1:	8b ec                                           	mov    ebp,esp
  73d4e3:	83 e4 f0                                        	and    esp,0xfffffff0
  73d4e6:	83 ec 1c                                        	sub    esp,0x1c
  73d4e9:	56                                              	push   esi
  73d4ea:	e8 e1 c6 22 00                                  	call   0x969bd0
  73d4ef:	85 c0                                           	test   eax,eax
  73d4f1:	74 38                                           	je     0x73d52b
  73d4f3:	8b c8                                           	mov    ecx,eax
  73d4f5:	e8 f6 4a 7e 00                                  	call   0xf21ff0
  73d4fa:	85 c0                                           	test   eax,eax
  73d4fc:	74 2d                                           	je     0x73d52b
  73d4fe:	8b c8                                           	mov    ecx,eax
  73d500:	e8 db 68 dd ff                                  	call   0x513de0
  73d505:	85 c0                                           	test   eax,eax
  73d507:	74 22                                           	je     0x73d52b
  73d509:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73d50b:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  73d50e:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73d512:	51                                              	push   ecx
  73d513:	8b c8                                           	mov    ecx,eax
  73d515:	ff d2                                           	call   edx
  73d517:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  73d51a:	50                                              	push   eax
  73d51b:	56                                              	push   esi
  73d51c:	e8 2f ec 02 00                                  	call   0x76c150
  73d521:	83 c4 08                                        	add    esp,0x8
  73d524:	8b c6                                           	mov    eax,esi
  73d526:	5e                                              	pop    esi
  73d527:	8b e5                                           	mov    esp,ebp
  73d529:	5d                                              	pop    ebp
  73d52a:	c3                                              	ret
  73d52b:	d9 ee                                           	fldz
  73d52d:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  73d530:	83 ec 0c                                        	sub    esp,0xc
  73d533:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  73d537:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  73d53b:	8b ce                                           	mov    ecx,esi
  73d53d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73d540:	e8 2b ea 02 00                                  	call   0x76bf70
  73d545:	8b c6                                           	mov    eax,esi
  73d547:	5e                                              	pop    esi
  73d548:	8b e5                                           	mov    esp,ebp
  73d54a:	5d                                              	pop    ebp
  73d54b:	c3                                              	ret
  73d54c:	cc                                              	int3
  73d54d:	cc                                              	int3
  73d54e:	cc                                              	int3
  73d54f:	cc                                              	int3
