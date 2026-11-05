# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e230 (ScriptCore.CameraController::Camera_SetTutorialMode)
Paired Ghidra pseudocode: 0073E230_ScriptCore_CameraController_Camera_SetTutorialMode.c
Window: [0x0073e230, 0x0073e270) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e230: e8 9b b9 22 00 85 c0 74 34 8b c8 e8 b0 3d 7e 00
0073e240: 85 c0 74 29 8b c8 e8 95 5b dd ff 85 c0 74 1e 8b
0073e250: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e260: 0c 8b 4c 24 04 51 8b c8 e8 33 1e 23 00 c3 cc cc

LINEAR DISASSEMBLY
0073e230 <.text+0x33d230>:
  73e230:	e8 9b b9 22 00                                  	call   0x969bd0
  73e235:	85 c0                                           	test   eax,eax
  73e237:	74 34                                           	je     0x73e26d
  73e239:	8b c8                                           	mov    ecx,eax
  73e23b:	e8 b0 3d 7e 00                                  	call   0xf21ff0
  73e240:	85 c0                                           	test   eax,eax
  73e242:	74 29                                           	je     0x73e26d
  73e244:	8b c8                                           	mov    ecx,eax
  73e246:	e8 95 5b dd ff                                  	call   0x513de0
  73e24b:	85 c0                                           	test   eax,eax
  73e24d:	74 1e                                           	je     0x73e26d
  73e24f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e251:	8b c8                                           	mov    ecx,eax
  73e253:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e256:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e25b:	ff d0                                           	call   eax
  73e25d:	85 c0                                           	test   eax,eax
  73e25f:	74 0c                                           	je     0x73e26d
  73e261:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  73e265:	51                                              	push   ecx
  73e266:	8b c8                                           	mov    ecx,eax
  73e268:	e8 33 1e 23 00                                  	call   0x9700a0
  73e26d:	c3                                              	ret
  73e26e:	cc                                              	int3
  73e26f:	cc                                              	int3
