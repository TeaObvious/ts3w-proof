# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073def0 (ScriptCore.CameraController::Camera_FinishTimeLerp)
Paired Ghidra pseudocode: 0073DEF0_ScriptCore_CameraController_Camera_FinishTimeLerp.c
Window: [0x0073def0, 0x0073df30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073df30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073def0: e8 db bc 22 00 85 c0 74 2f 8b c8 e8 f0 40 7e 00
0073df00: 85 c0 74 24 8b c8 e8 d5 5e dd ff 85 c0 74 19 8b
0073df10: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
0073df20: 07 8b c8 e9 d8 20 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073def0 <.text+0x33cef0>:
  73def0:	e8 db bc 22 00                                  	call   0x969bd0
  73def5:	85 c0                                           	test   eax,eax
  73def7:	74 2f                                           	je     0x73df28
  73def9:	8b c8                                           	mov    ecx,eax
  73defb:	e8 f0 40 7e 00                                  	call   0xf21ff0
  73df00:	85 c0                                           	test   eax,eax
  73df02:	74 24                                           	je     0x73df28
  73df04:	8b c8                                           	mov    ecx,eax
  73df06:	e8 d5 5e dd ff                                  	call   0x513de0
  73df0b:	85 c0                                           	test   eax,eax
  73df0d:	74 19                                           	je     0x73df28
  73df0f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73df11:	8b c8                                           	mov    ecx,eax
  73df13:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  73df16:	68 89 dd 0f 11                                  	push   0x110fdd89
  73df1b:	ff d0                                           	call   eax
  73df1d:	85 c0                                           	test   eax,eax
  73df1f:	74 07                                           	je     0x73df28
  73df21:	8b c8                                           	mov    ecx,eax
  73df23:	e9 d8 20 23 00                                  	jmp    0x970000
  73df28:	c3                                              	ret
  73df29:	cc                                              	int3
  73df2a:	cc                                              	int3
  73df2b:	cc                                              	int3
  73df2c:	cc                                              	int3
  73df2d:	cc                                              	int3
  73df2e:	cc                                              	int3
  73df2f:	cc                                              	int3
