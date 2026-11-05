# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e170 (ScriptCore.CameraController::Camera_EnableNHoodPlopMode)
Paired Ghidra pseudocode: 0073E170_ScriptCore_CameraController_Camera_EnableNHoodPlopMode.c
Window: [0x0073e170, 0x0073e1b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e1b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e170: e8 5b ba 22 00 85 c0 74 2f 8b c8 e8 70 3e 7e 00
0073e180: 85 c0 74 24 8b c8 e8 55 5c dd ff 85 c0 74 19 8b
0073e190: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e1a0: 07 8b c8 e9 08 1f 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073e170 <.text+0x33d170>:
  73e170:	e8 5b ba 22 00                                  	call   0x969bd0
  73e175:	85 c0                                           	test   eax,eax
  73e177:	74 2f                                           	je     0x73e1a8
  73e179:	8b c8                                           	mov    ecx,eax
  73e17b:	e8 70 3e 7e 00                                  	call   0xf21ff0
  73e180:	85 c0                                           	test   eax,eax
  73e182:	74 24                                           	je     0x73e1a8
  73e184:	8b c8                                           	mov    ecx,eax
  73e186:	e8 55 5c dd ff                                  	call   0x513de0
  73e18b:	85 c0                                           	test   eax,eax
  73e18d:	74 19                                           	je     0x73e1a8
  73e18f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e191:	8b c8                                           	mov    ecx,eax
  73e193:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e196:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e19b:	ff d0                                           	call   eax
  73e19d:	85 c0                                           	test   eax,eax
  73e19f:	74 07                                           	je     0x73e1a8
  73e1a1:	8b c8                                           	mov    ecx,eax
  73e1a3:	e9 08 1f 23 00                                  	jmp    0x9700b0
  73e1a8:	c3                                              	ret
  73e1a9:	cc                                              	int3
  73e1aa:	cc                                              	int3
  73e1ab:	cc                                              	int3
  73e1ac:	cc                                              	int3
  73e1ad:	cc                                              	int3
  73e1ae:	cc                                              	int3
  73e1af:	cc                                              	int3
