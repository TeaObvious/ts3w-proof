# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073d890 (ScriptCore.CameraController::Camera_GetPitchDegrees)
Paired Ghidra pseudocode: 0073D890_ScriptCore_CameraController_Camera_GetPitchDegrees.c
Window: [0x0073d890, 0x0073d8d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073d8d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073d890: e8 3b c3 22 00 85 c0 74 2f 8b c8 e8 50 47 7e 00
0073d8a0: 85 c0 74 24 8b c8 e8 35 65 dd ff 85 c0 74 19 8b
0073d8b0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073d8c0: 07 8b c8 e9 e8 35 23 00 d9 ee c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0073d890 <.text+0x33c890>:
  73d890:	e8 3b c3 22 00                                  	call   0x969bd0
  73d895:	85 c0                                           	test   eax,eax
  73d897:	74 2f                                           	je     0x73d8c8
  73d899:	8b c8                                           	mov    ecx,eax
  73d89b:	e8 50 47 7e 00                                  	call   0xf21ff0
  73d8a0:	85 c0                                           	test   eax,eax
  73d8a2:	74 24                                           	je     0x73d8c8
  73d8a4:	8b c8                                           	mov    ecx,eax
  73d8a6:	e8 35 65 dd ff                                  	call   0x513de0
  73d8ab:	85 c0                                           	test   eax,eax
  73d8ad:	74 19                                           	je     0x73d8c8
  73d8af:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73d8b1:	8b c8                                           	mov    ecx,eax
  73d8b3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73d8b6:	68 89 dd 0f 11                                  	push   0x110fdd89
  73d8bb:	ff d0                                           	call   eax
  73d8bd:	85 c0                                           	test   eax,eax
  73d8bf:	74 07                                           	je     0x73d8c8
  73d8c1:	8b c8                                           	mov    ecx,eax
  73d8c3:	e9 e8 35 23 00                                  	jmp    0x970eb0
  73d8c8:	d9 ee                                           	fldz
  73d8ca:	c3                                              	ret
  73d8cb:	cc                                              	int3
  73d8cc:	cc                                              	int3
  73d8cd:	cc                                              	int3
  73d8ce:	cc                                              	int3
  73d8cf:	cc                                              	int3
