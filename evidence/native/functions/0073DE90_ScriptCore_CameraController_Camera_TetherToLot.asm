# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073de90 (ScriptCore.CameraController::Camera_TetherToLot)
Paired Ghidra pseudocode: 0073DE90_ScriptCore_CameraController_Camera_TetherToLot.c
Window: [0x0073de90, 0x0073def0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073def0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073de90: e8 3b bd 22 00 85 c0 74 4c 8b c8 e8 50 41 7e 00
0073dea0: 85 c0 74 41 8b c8 e8 35 5f dd ff 85 c0 74 36 8b
0073deb0: 10 56 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 8b f0
0073dec0: 85 f6 74 20 8b 4c 24 0c 8b 54 24 08 51 52 8b ce
0073ded0: e8 eb 73 23 00 80 7c 24 10 00 74 08 8b ce 5e e9
0073dee0: 1c 21 23 00 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073de90 <.text+0x33ce90>:
  73de90:	e8 3b bd 22 00                                  	call   0x969bd0
  73de95:	85 c0                                           	test   eax,eax
  73de97:	74 4c                                           	je     0x73dee5
  73de99:	8b c8                                           	mov    ecx,eax
  73de9b:	e8 50 41 7e 00                                  	call   0xf21ff0
  73dea0:	85 c0                                           	test   eax,eax
  73dea2:	74 41                                           	je     0x73dee5
  73dea4:	8b c8                                           	mov    ecx,eax
  73dea6:	e8 35 5f dd ff                                  	call   0x513de0
  73deab:	85 c0                                           	test   eax,eax
  73dead:	74 36                                           	je     0x73dee5
  73deaf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73deb1:	56                                              	push   esi
  73deb2:	8b c8                                           	mov    ecx,eax
  73deb4:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73deb7:	68 89 dd 0f 11                                  	push   0x110fdd89
  73debc:	ff d0                                           	call   eax
  73debe:	8b f0                                           	mov    esi,eax
  73dec0:	85 f6                                           	test   esi,esi
  73dec2:	74 20                                           	je     0x73dee4
  73dec4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  73dec8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  73decc:	51                                              	push   ecx
  73decd:	52                                              	push   edx
  73dece:	8b ce                                           	mov    ecx,esi
  73ded0:	e8 eb 73 23 00                                  	call   0x9752c0
  73ded5:	80 7c 24 10 00                                  	cmp    BYTE PTR [esp+0x10],0x0
  73deda:	74 08                                           	je     0x73dee4
  73dedc:	8b ce                                           	mov    ecx,esi
  73dede:	5e                                              	pop    esi
  73dedf:	e9 1c 21 23 00                                  	jmp    0x970000
  73dee4:	5e                                              	pop    esi
  73dee5:	c3                                              	ret
  73dee6:	cc                                              	int3
  73dee7:	cc                                              	int3
  73dee8:	cc                                              	int3
  73dee9:	cc                                              	int3
  73deea:	cc                                              	int3
  73deeb:	cc                                              	int3
  73deec:	cc                                              	int3
  73deed:	cc                                              	int3
  73deee:	cc                                              	int3
  73deef:	cc                                              	int3
