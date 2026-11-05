# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e080 (ScriptCore.CameraController::Camera_EnableMapViewMode)
Paired Ghidra pseudocode: 0073E080_ScriptCore_CameraController_Camera_EnableMapViewMode.c
Window: [0x0073e080, 0x0073e0d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e0d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e080: e8 4b bb 22 00 85 c0 74 39 8b c8 e8 60 3f 7e 00
0073e090: 85 c0 74 2e 8b c8 e8 45 5d dd ff 85 c0 74 23 8b
0073e0a0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e0b0: 11 d9 44 24 04 6a 00 51 8b c8 d9 1c 24 e8 0e 59
0073e0c0: 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073e080 <.text+0x33d080>:
  73e080:	e8 4b bb 22 00                                  	call   0x969bd0
  73e085:	85 c0                                           	test   eax,eax
  73e087:	74 39                                           	je     0x73e0c2
  73e089:	8b c8                                           	mov    ecx,eax
  73e08b:	e8 60 3f 7e 00                                  	call   0xf21ff0
  73e090:	85 c0                                           	test   eax,eax
  73e092:	74 2e                                           	je     0x73e0c2
  73e094:	8b c8                                           	mov    ecx,eax
  73e096:	e8 45 5d dd ff                                  	call   0x513de0
  73e09b:	85 c0                                           	test   eax,eax
  73e09d:	74 23                                           	je     0x73e0c2
  73e09f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e0a1:	8b c8                                           	mov    ecx,eax
  73e0a3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e0a6:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e0ab:	ff d0                                           	call   eax
  73e0ad:	85 c0                                           	test   eax,eax
  73e0af:	74 11                                           	je     0x73e0c2
  73e0b1:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  73e0b5:	6a 00                                           	push   0x0
  73e0b7:	51                                              	push   ecx
  73e0b8:	8b c8                                           	mov    ecx,eax
  73e0ba:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73e0bd:	e8 0e 59 23 00                                  	call   0x9739d0
  73e0c2:	c3                                              	ret
  73e0c3:	cc                                              	int3
  73e0c4:	cc                                              	int3
  73e0c5:	cc                                              	int3
  73e0c6:	cc                                              	int3
  73e0c7:	cc                                              	int3
  73e0c8:	cc                                              	int3
  73e0c9:	cc                                              	int3
  73e0ca:	cc                                              	int3
  73e0cb:	cc                                              	int3
  73e0cc:	cc                                              	int3
  73e0cd:	cc                                              	int3
  73e0ce:	cc                                              	int3
  73e0cf:	cc                                              	int3
