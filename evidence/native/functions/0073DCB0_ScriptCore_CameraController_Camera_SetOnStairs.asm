# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073dcb0 (ScriptCore.CameraController::Camera_SetOnStairs)
Paired Ghidra pseudocode: 0073DCB0_ScriptCore_CameraController_Camera_SetOnStairs.c
Window: [0x0073dcb0, 0x0073dcf0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073dcf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073dcb0: e8 1b bf 22 00 85 c0 74 34 8b c8 e8 30 43 7e 00
0073dcc0: 85 c0 74 29 8b c8 e8 15 61 dd ff 85 c0 74 1e 8b
0073dcd0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073dce0: 0c 8b 4c 24 04 51 8b c8 e8 e3 27 23 00 c3 cc cc

LINEAR DISASSEMBLY
0073dcb0 <.text+0x33ccb0>:
  73dcb0:	e8 1b bf 22 00                                  	call   0x969bd0
  73dcb5:	85 c0                                           	test   eax,eax
  73dcb7:	74 34                                           	je     0x73dced
  73dcb9:	8b c8                                           	mov    ecx,eax
  73dcbb:	e8 30 43 7e 00                                  	call   0xf21ff0
  73dcc0:	85 c0                                           	test   eax,eax
  73dcc2:	74 29                                           	je     0x73dced
  73dcc4:	8b c8                                           	mov    ecx,eax
  73dcc6:	e8 15 61 dd ff                                  	call   0x513de0
  73dccb:	85 c0                                           	test   eax,eax
  73dccd:	74 1e                                           	je     0x73dced
  73dccf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73dcd1:	8b c8                                           	mov    ecx,eax
  73dcd3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73dcd6:	68 89 dd 0f 11                                  	push   0x110fdd89
  73dcdb:	ff d0                                           	call   eax
  73dcdd:	85 c0                                           	test   eax,eax
  73dcdf:	74 0c                                           	je     0x73dced
  73dce1:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  73dce5:	51                                              	push   ecx
  73dce6:	8b c8                                           	mov    ecx,eax
  73dce8:	e8 e3 27 23 00                                  	call   0x9704d0
  73dced:	c3                                              	ret
  73dcee:	cc                                              	int3
  73dcef:	cc                                              	int3
