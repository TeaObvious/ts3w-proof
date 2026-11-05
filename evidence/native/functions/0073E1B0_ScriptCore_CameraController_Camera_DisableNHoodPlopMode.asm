# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e1b0 (ScriptCore.CameraController::Camera_DisableNHoodPlopMode)
Paired Ghidra pseudocode: 0073E1B0_ScriptCore_CameraController_Camera_DisableNHoodPlopMode.c
Window: [0x0073e1b0, 0x0073e1f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e1f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e1b0: e8 1b ba 22 00 85 c0 74 2f 8b c8 e8 30 3e 7e 00
0073e1c0: 85 c0 74 24 8b c8 e8 15 5c dd ff 85 c0 74 19 8b
0073e1d0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e1e0: 07 8b c8 e9 d8 1e 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073e1b0 <.text+0x33d1b0>:
  73e1b0:	e8 1b ba 22 00                                  	call   0x969bd0
  73e1b5:	85 c0                                           	test   eax,eax
  73e1b7:	74 2f                                           	je     0x73e1e8
  73e1b9:	8b c8                                           	mov    ecx,eax
  73e1bb:	e8 30 3e 7e 00                                  	call   0xf21ff0
  73e1c0:	85 c0                                           	test   eax,eax
  73e1c2:	74 24                                           	je     0x73e1e8
  73e1c4:	8b c8                                           	mov    ecx,eax
  73e1c6:	e8 15 5c dd ff                                  	call   0x513de0
  73e1cb:	85 c0                                           	test   eax,eax
  73e1cd:	74 19                                           	je     0x73e1e8
  73e1cf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e1d1:	8b c8                                           	mov    ecx,eax
  73e1d3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e1d6:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e1db:	ff d0                                           	call   eax
  73e1dd:	85 c0                                           	test   eax,eax
  73e1df:	74 07                                           	je     0x73e1e8
  73e1e1:	8b c8                                           	mov    ecx,eax
  73e1e3:	e9 d8 1e 23 00                                  	jmp    0x9700c0
  73e1e8:	c3                                              	ret
  73e1e9:	cc                                              	int3
  73e1ea:	cc                                              	int3
  73e1eb:	cc                                              	int3
  73e1ec:	cc                                              	int3
  73e1ed:	cc                                              	int3
  73e1ee:	cc                                              	int3
  73e1ef:	cc                                              	int3
