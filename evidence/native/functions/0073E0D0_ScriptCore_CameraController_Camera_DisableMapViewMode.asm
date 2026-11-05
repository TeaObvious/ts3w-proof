# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e0d0 (ScriptCore.CameraController::Camera_DisableMapViewMode)
Paired Ghidra pseudocode: 0073E0D0_ScriptCore_CameraController_Camera_DisableMapViewMode.c
Window: [0x0073e0d0, 0x0073e130) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e0d0: e8 fb ba 22 00 85 c0 74 4b 8b c8 e8 10 3f 7e 00
0073e0e0: 85 c0 74 40 8b c8 e8 f5 5c dd ff 85 c0 74 35 8b
0073e0f0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073e100: 23 d9 44 24 0c 6a 00 83 ec 0c d9 5c 24 08 8b c8
0073e110: d9 44 24 18 d9 5c 24 04 d9 44 24 14 d9 1c 24 e8
0073e120: 3c 5a 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073e0d0 <.text+0x33d0d0>:
  73e0d0:	e8 fb ba 22 00                                  	call   0x969bd0
  73e0d5:	85 c0                                           	test   eax,eax
  73e0d7:	74 4b                                           	je     0x73e124
  73e0d9:	8b c8                                           	mov    ecx,eax
  73e0db:	e8 10 3f 7e 00                                  	call   0xf21ff0
  73e0e0:	85 c0                                           	test   eax,eax
  73e0e2:	74 40                                           	je     0x73e124
  73e0e4:	8b c8                                           	mov    ecx,eax
  73e0e6:	e8 f5 5c dd ff                                  	call   0x513de0
  73e0eb:	85 c0                                           	test   eax,eax
  73e0ed:	74 35                                           	je     0x73e124
  73e0ef:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73e0f1:	8b c8                                           	mov    ecx,eax
  73e0f3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73e0f6:	68 89 dd 0f 11                                  	push   0x110fdd89
  73e0fb:	ff d0                                           	call   eax
  73e0fd:	85 c0                                           	test   eax,eax
  73e0ff:	74 23                                           	je     0x73e124
  73e101:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  73e105:	6a 00                                           	push   0x0
  73e107:	83 ec 0c                                        	sub    esp,0xc
  73e10a:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  73e10e:	8b c8                                           	mov    ecx,eax
  73e110:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  73e114:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  73e118:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  73e11c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73e11f:	e8 3c 5a 23 00                                  	call   0x973b60
  73e124:	c3                                              	ret
  73e125:	cc                                              	int3
  73e126:	cc                                              	int3
  73e127:	cc                                              	int3
  73e128:	cc                                              	int3
  73e129:	cc                                              	int3
  73e12a:	cc                                              	int3
  73e12b:	cc                                              	int3
  73e12c:	cc                                              	int3
  73e12d:	cc                                              	int3
  73e12e:	cc                                              	int3
  73e12f:	cc                                              	int3
