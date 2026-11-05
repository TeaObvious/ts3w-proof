# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e040 (ScriptCore.CameraController::Camera_Unlock)
Paired Ghidra pseudocode: 0073E040_ScriptCore_CameraController_Camera_Unlock.c
Window: [0x0073e040, 0x0073e080) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e040: e8 8b bb 22 00 85 c0 74 2f 8b c8 e8 a0 3f 7e 00
0073e050: 85 c0 74 24 8b c8 e8 85 5d dd ff 85 c0 74 19 8b
0073e060: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e070: 07 8b c8 e9 68 67 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073e040 <.text+0x33d040>:
  73e040:	e8 8b bb 22 00                                  	call   0x969bd0
  73e045:	85 c0                                           	test   eax,eax
  73e047:	74 2f                                           	je     0x73e078
  73e049:	8b c8                                           	mov    ecx,eax
  73e04b:	e8 a0 3f 7e 00                                  	call   0xf21ff0
  73e050:	85 c0                                           	test   eax,eax
  73e052:	74 24                                           	je     0x73e078
  73e054:	8b c8                                           	mov    ecx,eax
  73e056:	e8 85 5d dd ff                                  	call   0x513de0
  73e05b:	85 c0                                           	test   eax,eax
  73e05d:	74 19                                           	je     0x73e078
  73e05f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e061:	8b c8                                           	mov    ecx,eax
  73e063:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e066:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e06b:	ff d0                                           	call   eax
  73e06d:	85 c0                                           	test   eax,eax
  73e06f:	74 07                                           	je     0x73e078
  73e071:	8b c8                                           	mov    ecx,eax
  73e073:	e9 68 67 23 00                                  	jmp    0x9747e0
  73e078:	c3                                              	ret
  73e079:	cc                                              	int3
  73e07a:	cc                                              	int3
  73e07b:	cc                                              	int3
  73e07c:	cc                                              	int3
  73e07d:	cc                                              	int3
  73e07e:	cc                                              	int3
  73e07f:	cc                                              	int3
