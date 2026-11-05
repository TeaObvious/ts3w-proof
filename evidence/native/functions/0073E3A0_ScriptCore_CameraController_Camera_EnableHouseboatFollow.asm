# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e3a0 (ScriptCore.CameraController::Camera_EnableHouseboatFollow)
Paired Ghidra pseudocode: 0073E3A0_ScriptCore_CameraController_Camera_EnableHouseboatFollow.c
Window: [0x0073e3a0, 0x0073e3f0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e3f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e3a0: e8 2b b8 22 00 85 c0 74 39 8b c8 e8 40 3c 7e 00
0073e3b0: 85 c0 74 2e 8b c8 e8 25 5a dd ff 85 c0 74 23 8b
0073e3c0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e3d0: 11 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 6e 38
0073e3e0: 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073e3a0 <.text+0x33d3a0>:
  73e3a0:	e8 2b b8 22 00                                  	call   0x969bd0
  73e3a5:	85 c0                                           	test   eax,eax
  73e3a7:	74 39                                           	je     0x73e3e2
  73e3a9:	8b c8                                           	mov    ecx,eax
  73e3ab:	e8 40 3c 7e 00                                  	call   0xf21ff0
  73e3b0:	85 c0                                           	test   eax,eax
  73e3b2:	74 2e                                           	je     0x73e3e2
  73e3b4:	8b c8                                           	mov    ecx,eax
  73e3b6:	e8 25 5a dd ff                                  	call   0x513de0
  73e3bb:	85 c0                                           	test   eax,eax
  73e3bd:	74 23                                           	je     0x73e3e2
  73e3bf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e3c1:	8b c8                                           	mov    ecx,eax
  73e3c3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e3c6:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e3cb:	ff d0                                           	call   eax
  73e3cd:	85 c0                                           	test   eax,eax
  73e3cf:	74 11                                           	je     0x73e3e2
  73e3d1:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  73e3d5:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73e3d9:	51                                              	push   ecx
  73e3da:	52                                              	push   edx
  73e3db:	8b c8                                           	mov    ecx,eax
  73e3dd:	e8 6e 38 23 00                                  	call   0x971c50
  73e3e2:	c3                                              	ret
  73e3e3:	cc                                              	int3
  73e3e4:	cc                                              	int3
  73e3e5:	cc                                              	int3
  73e3e6:	cc                                              	int3
  73e3e7:	cc                                              	int3
  73e3e8:	cc                                              	int3
  73e3e9:	cc                                              	int3
  73e3ea:	cc                                              	int3
  73e3eb:	cc                                              	int3
  73e3ec:	cc                                              	int3
  73e3ed:	cc                                              	int3
  73e3ee:	cc                                              	int3
  73e3ef:	cc                                              	int3
