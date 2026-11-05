# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073df80 (ScriptCore.CameraController::Camera_Untether)
Paired Ghidra pseudocode: 0073DF80_ScriptCore_CameraController_Camera_Untether.c
Window: [0x0073df80, 0x0073dfc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073dfc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073df80: e8 4b bc 22 00 85 c0 74 2f 8b c8 e8 60 40 7e 00
0073df90: 85 c0 74 24 8b c8 e8 45 5e dd ff 85 c0 74 19 8b
0073dfa0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073dfb0: 07 8b c8 e9 68 5e 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073df80 <.text+0x33cf80>:
  73df80:	e8 4b bc 22 00                                  	call   0x969bd0
  73df85:	85 c0                                           	test   eax,eax
  73df87:	74 2f                                           	je     0x73dfb8
  73df89:	8b c8                                           	mov    ecx,eax
  73df8b:	e8 60 40 7e 00                                  	call   0xf21ff0
  73df90:	85 c0                                           	test   eax,eax
  73df92:	74 24                                           	je     0x73dfb8
  73df94:	8b c8                                           	mov    ecx,eax
  73df96:	e8 45 5e dd ff                                  	call   0x513de0
  73df9b:	85 c0                                           	test   eax,eax
  73df9d:	74 19                                           	je     0x73dfb8
  73df9f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73dfa1:	8b c8                                           	mov    ecx,eax
  73dfa3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73dfa6:	68 89 dd 0f 11                                  	push   0x110fdd89
  73dfab:	ff d0                                           	call   eax
  73dfad:	85 c0                                           	test   eax,eax
  73dfaf:	74 07                                           	je     0x73dfb8
  73dfb1:	8b c8                                           	mov    ecx,eax
  73dfb3:	e9 68 5e 23 00                                  	jmp    0x973e20
  73dfb8:	c3                                              	ret
  73dfb9:	cc                                              	int3
  73dfba:	cc                                              	int3
  73dfbb:	cc                                              	int3
  73dfbc:	cc                                              	int3
  73dfbd:	cc                                              	int3
  73dfbe:	cc                                              	int3
  73dfbf:	cc                                              	int3
