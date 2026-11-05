# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e1f0 (ScriptCore.CameraController::Camera_SetGameEntryMode)
Paired Ghidra pseudocode: 0073E1F0_ScriptCore_CameraController_Camera_SetGameEntryMode.c
Window: [0x0073e1f0, 0x0073e230) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e1f0: e8 db b9 22 00 85 c0 74 34 8b c8 e8 f0 3d 7e 00
0073e200: 85 c0 74 29 8b c8 e8 d5 5b dd ff 85 c0 74 1e 8b
0073e210: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e220: 0c 8b 4c 24 04 51 8b c8 e8 63 1e 23 00 c3 cc cc

LINEAR DISASSEMBLY
0073e1f0 <.text+0x33d1f0>:
  73e1f0:	e8 db b9 22 00                                  	call   0x969bd0
  73e1f5:	85 c0                                           	test   eax,eax
  73e1f7:	74 34                                           	je     0x73e22d
  73e1f9:	8b c8                                           	mov    ecx,eax
  73e1fb:	e8 f0 3d 7e 00                                  	call   0xf21ff0
  73e200:	85 c0                                           	test   eax,eax
  73e202:	74 29                                           	je     0x73e22d
  73e204:	8b c8                                           	mov    ecx,eax
  73e206:	e8 d5 5b dd ff                                  	call   0x513de0
  73e20b:	85 c0                                           	test   eax,eax
  73e20d:	74 1e                                           	je     0x73e22d
  73e20f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e211:	8b c8                                           	mov    ecx,eax
  73e213:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e216:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e21b:	ff d0                                           	call   eax
  73e21d:	85 c0                                           	test   eax,eax
  73e21f:	74 0c                                           	je     0x73e22d
  73e221:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  73e225:	51                                              	push   ecx
  73e226:	8b c8                                           	mov    ecx,eax
  73e228:	e8 63 1e 23 00                                  	call   0x970090
  73e22d:	c3                                              	ret
  73e22e:	cc                                              	int3
  73e22f:	cc                                              	int3
