# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073db70 (ScriptCore.CameraController::Camera_RequestLerpToZoomAndRotation)
Paired Ghidra pseudocode: 0073DB70_ScriptCore_CameraController_Camera_RequestLerpToZoomAndRotation.c
Window: [0x0073db70, 0x0073dbd0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073dbd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073db70: e8 5b c0 22 00 85 c0 74 51 8b c8 e8 70 44 7e 00
0073db80: 85 c0 74 46 8b c8 e8 55 62 dd ff 85 c0 74 3b 8b
0073db90: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073dba0: 29 d9 44 24 10 83 ec 10 d9 5c 24 0c 8b c8 d9 44
0073dbb0: 24 1c d9 5c 24 08 d9 44 24 18 d9 5c 24 04 d9 44
0073dbc0: 24 14 d9 1c 24 e8 06 57 23 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0073db70 <.text+0x33cb70>:
  73db70:	e8 5b c0 22 00                                  	call   0x969bd0
  73db75:	85 c0                                           	test   eax,eax
  73db77:	74 51                                           	je     0x73dbca
  73db79:	8b c8                                           	mov    ecx,eax
  73db7b:	e8 70 44 7e 00                                  	call   0xf21ff0
  73db80:	85 c0                                           	test   eax,eax
  73db82:	74 46                                           	je     0x73dbca
  73db84:	8b c8                                           	mov    ecx,eax
  73db86:	e8 55 62 dd ff                                  	call   0x513de0
  73db8b:	85 c0                                           	test   eax,eax
  73db8d:	74 3b                                           	je     0x73dbca
  73db8f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73db91:	8b c8                                           	mov    ecx,eax
  73db93:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73db96:	68 89 dd 0f 11                                  	push   0x110fdd89
  73db9b:	ff d0                                           	call   eax
  73db9d:	85 c0                                           	test   eax,eax
  73db9f:	74 29                                           	je     0x73dbca
  73dba1:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  73dba5:	83 ec 10                                        	sub    esp,0x10
  73dba8:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  73dbac:	8b c8                                           	mov    ecx,eax
  73dbae:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  73dbb2:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  73dbb6:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  73dbba:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  73dbbe:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  73dbc2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73dbc5:	e8 06 57 23 00                                  	call   0x9732d0
  73dbca:	c3                                              	ret
  73dbcb:	cc                                              	int3
  73dbcc:	cc                                              	int3
  73dbcd:	cc                                              	int3
  73dbce:	cc                                              	int3
  73dbcf:	cc                                              	int3
