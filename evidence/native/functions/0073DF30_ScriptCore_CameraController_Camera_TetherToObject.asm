# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073df30 (ScriptCore.CameraController::Camera_TetherToObject)
Paired Ghidra pseudocode: 0073DF30_ScriptCore_CameraController_Camera_TetherToObject.c
Window: [0x0073df30, 0x0073df80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073df80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073df30: e8 9b bc 22 00 85 c0 74 39 8b c8 e8 b0 40 7e 00
0073df40: 85 c0 74 2e 8b c8 e8 95 5e dd ff 85 c0 74 23 8b
0073df50: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073df60: 11 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 1e 74
0073df70: 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073df30 <.text+0x33cf30>:
  73df30:	e8 9b bc 22 00                                  	call   0x969bd0
  73df35:	85 c0                                           	test   eax,eax
  73df37:	74 39                                           	je     0x73df72
  73df39:	8b c8                                           	mov    ecx,eax
  73df3b:	e8 b0 40 7e 00                                  	call   0xf21ff0
  73df40:	85 c0                                           	test   eax,eax
  73df42:	74 2e                                           	je     0x73df72
  73df44:	8b c8                                           	mov    ecx,eax
  73df46:	e8 95 5e dd ff                                  	call   0x513de0
  73df4b:	85 c0                                           	test   eax,eax
  73df4d:	74 23                                           	je     0x73df72
  73df4f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73df51:	8b c8                                           	mov    ecx,eax
  73df53:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73df56:	68 89 dd 0f 11                                  	push   0x110fdd89
  73df5b:	ff d0                                           	call   eax
  73df5d:	85 c0                                           	test   eax,eax
  73df5f:	74 11                                           	je     0x73df72
  73df61:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  73df65:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73df69:	51                                              	push   ecx
  73df6a:	52                                              	push   edx
  73df6b:	8b c8                                           	mov    ecx,eax
  73df6d:	e8 1e 74 23 00                                  	call   0x975390
  73df72:	c3                                              	ret
  73df73:	cc                                              	int3
  73df74:	cc                                              	int3
  73df75:	cc                                              	int3
  73df76:	cc                                              	int3
  73df77:	cc                                              	int3
  73df78:	cc                                              	int3
  73df79:	cc                                              	int3
  73df7a:	cc                                              	int3
  73df7b:	cc                                              	int3
  73df7c:	cc                                              	int3
  73df7d:	cc                                              	int3
  73df7e:	cc                                              	int3
  73df7f:	cc                                              	int3
