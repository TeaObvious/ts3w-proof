# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073dc40 (ScriptCore.CameraController::Camera_FocusOnLotForBuildBuy)
Paired Ghidra pseudocode: 0073DC40_ScriptCore_CameraController_Camera_FocusOnLotForBuildBuy.c
Window: [0x0073dc40, 0x0073dcb0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073dcb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073dc40: e8 8b bf 22 00 85 c0 74 5d 8b c8 e8 a0 43 7e 00
0073dc50: 85 c0 74 52 8b c8 e8 85 61 dd ff 85 c0 74 47 8b
0073dc60: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073dc70: 35 d9 44 24 18 8b 4c 24 08 8b 54 24 04 6a 01 83
0073dc80: ec 10 d9 5c 24 0c d9 44 24 28 d9 5c 24 08 d9 44
0073dc90: 24 24 d9 5c 24 04 d9 44 24 20 d9 1c 24 51 52 8b
0073dca0: c8 e8 7a 77 23 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073dc40 <.text+0x33cc40>:
  73dc40:	e8 8b bf 22 00                                  	call   0x969bd0
  73dc45:	85 c0                                           	test   eax,eax
  73dc47:	74 5d                                           	je     0x73dca6
  73dc49:	8b c8                                           	mov    ecx,eax
  73dc4b:	e8 a0 43 7e 00                                  	call   0xf21ff0
  73dc50:	85 c0                                           	test   eax,eax
  73dc52:	74 52                                           	je     0x73dca6
  73dc54:	8b c8                                           	mov    ecx,eax
  73dc56:	e8 85 61 dd ff                                  	call   0x513de0
  73dc5b:	85 c0                                           	test   eax,eax
  73dc5d:	74 47                                           	je     0x73dca6
  73dc5f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73dc61:	8b c8                                           	mov    ecx,eax
  73dc63:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73dc66:	68 89 dd 0f 11                                  	push   0x110fdd89
  73dc6b:	ff d0                                           	call   eax
  73dc6d:	85 c0                                           	test   eax,eax
  73dc6f:	74 35                                           	je     0x73dca6
  73dc71:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  73dc75:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  73dc79:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  73dc7d:	6a 01                                           	push   0x1
  73dc7f:	83 ec 10                                        	sub    esp,0x10
  73dc82:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  73dc86:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  73dc8a:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  73dc8e:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  73dc92:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  73dc96:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  73dc9a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73dc9d:	51                                              	push   ecx
  73dc9e:	52                                              	push   edx
  73dc9f:	8b c8                                           	mov    ecx,eax
  73dca1:	e8 7a 77 23 00                                  	call   0x975420
  73dca6:	c3                                              	ret
  73dca7:	cc                                              	int3
  73dca8:	cc                                              	int3
  73dca9:	cc                                              	int3
  73dcaa:	cc                                              	int3
  73dcab:	cc                                              	int3
  73dcac:	cc                                              	int3
  73dcad:	cc                                              	int3
  73dcae:	cc                                              	int3
  73dcaf:	cc                                              	int3
