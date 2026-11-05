# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e130 (ScriptCore.CameraController::Camera_IsMapViewModeEnabled)
Paired Ghidra pseudocode: 0073E130_ScriptCore_CameraController_Camera_IsMapViewModeEnabled.c
Window: [0x0073e130, 0x0073e170) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e130: e8 9b ba 22 00 85 c0 74 2f 8b c8 e8 b0 3e 7e 00
0073e140: 85 c0 74 24 8b c8 e8 95 5c dd ff 85 c0 74 19 8b
0073e150: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e160: 07 8a 80 b9 08 00 00 c3 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0073e130 <.text+0x33d130>:
  73e130:	e8 9b ba 22 00                                  	call   0x969bd0
  73e135:	85 c0                                           	test   eax,eax
  73e137:	74 2f                                           	je     0x73e168
  73e139:	8b c8                                           	mov    ecx,eax
  73e13b:	e8 b0 3e 7e 00                                  	call   0xf21ff0
  73e140:	85 c0                                           	test   eax,eax
  73e142:	74 24                                           	je     0x73e168
  73e144:	8b c8                                           	mov    ecx,eax
  73e146:	e8 95 5c dd ff                                  	call   0x513de0
  73e14b:	85 c0                                           	test   eax,eax
  73e14d:	74 19                                           	je     0x73e168
  73e14f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e151:	8b c8                                           	mov    ecx,eax
  73e153:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e156:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e15b:	ff d0                                           	call   eax
  73e15d:	85 c0                                           	test   eax,eax
  73e15f:	74 07                                           	je     0x73e168
  73e161:	8a 80 b9 08 00 00                               	mov    al,BYTE PTR [eax+0x8b9]
  73e167:	c3                                              	ret
  73e168:	32 c0                                           	xor    al,al
  73e16a:	c3                                              	ret
  73e16b:	cc                                              	int3
  73e16c:	cc                                              	int3
  73e16d:	cc                                              	int3
  73e16e:	cc                                              	int3
  73e16f:	cc                                              	int3
