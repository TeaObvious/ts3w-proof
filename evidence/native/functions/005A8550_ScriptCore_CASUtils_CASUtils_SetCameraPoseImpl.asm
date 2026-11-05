# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8550 (ScriptCore.CASUtils::CASUtils_SetCameraPoseImpl)
Paired Ghidra pseudocode: 005A8550_ScriptCore_CASUtils_CASUtils_SetCameraPoseImpl.c
Window: [0x005a8550, 0x005a85b0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a85b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8550: e8 7b 16 3c 00 8b c8 e8 94 9a 97 00 8b c8 e8 7d
005a8560: b8 f6 ff 85 c0 74 3d 8b 10 8b c8 8b 42 0c 68 53
005a8570: 5c b5 e5 ff d0 85 c0 74 2b 8b 4c 24 14 d9 44 24
005a8580: 10 8b 10 8b 52 64 51 8b 4c 24 0c 83 ec 08 d9 5c
005a8590: 24 04 d9 44 24 18 d9 1c 24 51 8b 4c 24 14 51 8b
005a85a0: c8 ff d2 c3 d9 05 18 b2 fa 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005a8550 <.text+0x1a7550>:
  5a8550:	e8 7b 16 3c 00                                  	call   0x969bd0
  5a8555:	8b c8                                           	mov    ecx,eax
  5a8557:	e8 94 9a 97 00                                  	call   0xf21ff0
  5a855c:	8b c8                                           	mov    ecx,eax
  5a855e:	e8 7d b8 f6 ff                                  	call   0x513de0
  5a8563:	85 c0                                           	test   eax,eax
  5a8565:	74 3d                                           	je     0x5a85a4
  5a8567:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8569:	8b c8                                           	mov    ecx,eax
  5a856b:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5a856e:	68 53 5c b5 e5                                  	push   0xe5b55c53
  5a8573:	ff d0                                           	call   eax
  5a8575:	85 c0                                           	test   eax,eax
  5a8577:	74 2b                                           	je     0x5a85a4
  5a8579:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a857d:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
  5a8581:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8583:	8b 52 64                                        	mov    edx,DWORD PTR [edx+0x64]
  5a8586:	51                                              	push   ecx
  5a8587:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a858b:	83 ec 08                                        	sub    esp,0x8
  5a858e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5a8592:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  5a8596:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5a8599:	51                                              	push   ecx
  5a859a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a859e:	51                                              	push   ecx
  5a859f:	8b c8                                           	mov    ecx,eax
  5a85a1:	ff d2                                           	call   edx
  5a85a3:	c3                                              	ret
  5a85a4:	d9 05 18 b2 fa 00                               	fld    DWORD PTR ds:0xfab218
  5a85aa:	c3                                              	ret
  5a85ab:	cc                                              	int3
  5a85ac:	cc                                              	int3
  5a85ad:	cc                                              	int3
  5a85ae:	cc                                              	int3
  5a85af:	cc                                              	int3
