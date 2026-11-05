# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073dbd0 (ScriptCore.CameraController::Camera_FocusOnLot)
Paired Ghidra pseudocode: 0073DBD0_ScriptCore_CameraController_Camera_FocusOnLot.c
Window: [0x0073dbd0, 0x0073dc40) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073dc40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073dbd0: e8 fb bf 22 00 85 c0 74 5b 8b c8 e8 10 44 7e 00
0073dbe0: 85 c0 74 50 8b c8 e8 f5 61 dd ff 85 c0 74 45 8b
0073dbf0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073dc00: 33 d9 ee 8b 4c 24 08 8b 54 24 04 6a 00 83 ec 10
0073dc10: d9 5c 24 0c d9 44 24 28 d9 5c 24 08 d9 44 24 24
0073dc20: d9 5c 24 04 d9 44 24 20 d9 1c 24 51 52 8b c8 e8
0073dc30: ec 77 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073dbd0 <.text+0x33cbd0>:
  73dbd0:	e8 fb bf 22 00                                  	call   0x969bd0
  73dbd5:	85 c0                                           	test   eax,eax
  73dbd7:	74 5b                                           	je     0x73dc34
  73dbd9:	8b c8                                           	mov    ecx,eax
  73dbdb:	e8 10 44 7e 00                                  	call   0xf21ff0
  73dbe0:	85 c0                                           	test   eax,eax
  73dbe2:	74 50                                           	je     0x73dc34
  73dbe4:	8b c8                                           	mov    ecx,eax
  73dbe6:	e8 f5 61 dd ff                                  	call   0x513de0
  73dbeb:	85 c0                                           	test   eax,eax
  73dbed:	74 45                                           	je     0x73dc34
  73dbef:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73dbf1:	8b c8                                           	mov    ecx,eax
  73dbf3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73dbf6:	68 89 dd 0f 11                                  	push   0x110fdd89
  73dbfb:	ff d0                                           	call   eax
  73dbfd:	85 c0                                           	test   eax,eax
  73dbff:	74 33                                           	je     0x73dc34
  73dc01:	d9 ee                                           	fldz
  73dc03:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  73dc07:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73dc0b:	6a 00                                           	push   0x0
  73dc0d:	83 ec 10                                        	sub    esp,0x10
  73dc10:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  73dc14:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  73dc18:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  73dc1c:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  73dc20:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  73dc24:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  73dc28:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73dc2b:	51                                              	push   ecx
  73dc2c:	52                                              	push   edx
  73dc2d:	8b c8                                           	mov    ecx,eax
  73dc2f:	e8 ec 77 23 00                                  	call   0x975420
  73dc34:	c3                                              	ret
  73dc35:	cc                                              	int3
  73dc36:	cc                                              	int3
  73dc37:	cc                                              	int3
  73dc38:	cc                                              	int3
  73dc39:	cc                                              	int3
  73dc3a:	cc                                              	int3
  73dc3b:	cc                                              	int3
  73dc3c:	cc                                              	int3
  73dc3d:	cc                                              	int3
  73dc3e:	cc                                              	int3
  73dc3f:	cc                                              	int3
