# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d620 (ScriptCore.CameraController::Camera_SetPositionAndTarget)
Paired Ghidra pseudocode: 0073D620_ScriptCore_CameraController_Camera_SetPositionAndTarget.c
Window: [0x0073d620, 0x0073d680) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d620: 55 8b ec 83 e4 f0 83 ec 28 56 57 e8 a0 c5 22 00
0073d630: 85 c0 74 3d 8b c8 e8 b5 49 7e 00 85 c0 74 32 8b
0073d640: c8 e8 9a 67 dd ff 8b f0 85 f6 74 25 8b 3e 8d 44
0073d650: 24 10 50 8d 4d 14 e8 f5 e9 02 00 50 8d 4c 24 24
0073d660: 51 8d 4d 08 e8 e7 e9 02 00 8b 57 2c 50 8b ce ff
0073d670: d2 5f 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073d620 <.text+0x33c620>:
  73d620:	55                                              	push   ebp
  73d621:	8b ec                                           	mov    ebp,esp
  73d623:	83 e4 f0                                        	and    esp,0xfffffff0
  73d626:	83 ec 28                                        	sub    esp,0x28
  73d629:	56                                              	push   esi
  73d62a:	57                                              	push   edi
  73d62b:	e8 a0 c5 22 00                                  	call   0x969bd0
  73d630:	85 c0                                           	test   eax,eax
  73d632:	74 3d                                           	je     0x73d671
  73d634:	8b c8                                           	mov    ecx,eax
  73d636:	e8 b5 49 7e 00                                  	call   0xf21ff0
  73d63b:	85 c0                                           	test   eax,eax
  73d63d:	74 32                                           	je     0x73d671
  73d63f:	8b c8                                           	mov    ecx,eax
  73d641:	e8 9a 67 dd ff                                  	call   0x513de0
  73d646:	8b f0                                           	mov    esi,eax
  73d648:	85 f6                                           	test   esi,esi
  73d64a:	74 25                                           	je     0x73d671
  73d64c:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  73d64e:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  73d652:	50                                              	push   eax
  73d653:	8d 4d 14                                        	lea    ecx,[ebp+0x14]
  73d656:	e8 f5 e9 02 00                                  	call   0x76c050
  73d65b:	50                                              	push   eax
  73d65c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  73d660:	51                                              	push   ecx
  73d661:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
  73d664:	e8 e7 e9 02 00                                  	call   0x76c050
  73d669:	8b 57 2c                                        	mov    edx,DWORD PTR [edi+0x2c]
  73d66c:	50                                              	push   eax
  73d66d:	8b ce                                           	mov    ecx,esi
  73d66f:	ff d2                                           	call   edx
  73d671:	5f                                              	pop    edi
  73d672:	5e                                              	pop    esi
  73d673:	8b e5                                           	mov    esp,ebp
  73d675:	5d                                              	pop    ebp
  73d676:	c3                                              	ret
  73d677:	cc                                              	int3
  73d678:	cc                                              	int3
  73d679:	cc                                              	int3
  73d67a:	cc                                              	int3
  73d67b:	cc                                              	int3
  73d67c:	cc                                              	int3
  73d67d:	cc                                              	int3
  73d67e:	cc                                              	int3
  73d67f:	cc                                              	int3
