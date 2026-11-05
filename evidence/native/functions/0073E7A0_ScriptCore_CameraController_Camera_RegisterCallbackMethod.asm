# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073e7a0 (ScriptCore.CameraController::Camera_RegisterCallbackMethod)
Paired Ghidra pseudocode: 0073E7A0_ScriptCore_CameraController_Camera_RegisterCallbackMethod.c
Window: [0x0073e7a0, 0x0073e800) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073e800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073e7a0: 57 8b 7c 24 08 83 ff 04 77 53 53 56 e8 df ab 02
0073e7b0: 00 8b 4c 24 18 8b f0 8b 06 8b 50 58 51 8b ce ff
0073e7c0: d2 8b 4c 24 14 8b d8 8b 06 8b 50 58 51 8b ce ff
0073e7d0: d2 50 c1 e7 05 8d 87 58 4e 1d 01 68 0c 0a 00 01
0073e7e0: 50 e8 7a 26 e5 ff 53 8d 8f 68 4e 1d 01 68 0c 0a
0073e7f0: 00 01 51 e8 68 26 e5 ff 83 c4 18 5e 5b 5f c3 cc

LINEAR DISASSEMBLY
0073e7a0 <.text+0x33d7a0>:
  73e7a0:	57                                              	push   edi
  73e7a1:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  73e7a5:	83 ff 04                                        	cmp    edi,0x4
  73e7a8:	77 53                                           	ja     0x73e7fd
  73e7aa:	53                                              	push   ebx
  73e7ab:	56                                              	push   esi
  73e7ac:	e8 df ab 02 00                                  	call   0x769390
  73e7b1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  73e7b5:	8b f0                                           	mov    esi,eax
  73e7b7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73e7b9:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  73e7bc:	51                                              	push   ecx
  73e7bd:	8b ce                                           	mov    ecx,esi
  73e7bf:	ff d2                                           	call   edx
  73e7c1:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  73e7c5:	8b d8                                           	mov    ebx,eax
  73e7c7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73e7c9:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  73e7cc:	51                                              	push   ecx
  73e7cd:	8b ce                                           	mov    ecx,esi
  73e7cf:	ff d2                                           	call   edx
  73e7d1:	50                                              	push   eax
  73e7d2:	c1 e7 05                                        	shl    edi,0x5
  73e7d5:	8d 87 58 4e 1d 01                               	lea    eax,[edi+0x11d4e58]
  73e7db:	68 0c 0a 00 01                                  	push   0x1000a0c
  73e7e0:	50                                              	push   eax
  73e7e1:	e8 7a 26 e5 ff                                  	call   0x590e60
  73e7e6:	53                                              	push   ebx
  73e7e7:	8d 8f 68 4e 1d 01                               	lea    ecx,[edi+0x11d4e68]
  73e7ed:	68 0c 0a 00 01                                  	push   0x1000a0c
  73e7f2:	51                                              	push   ecx
  73e7f3:	e8 68 26 e5 ff                                  	call   0x590e60
  73e7f8:	83 c4 18                                        	add    esp,0x18
  73e7fb:	5e                                              	pop    esi
  73e7fc:	5b                                              	pop    ebx
  73e7fd:	5f                                              	pop    edi
  73e7fe:	c3                                              	ret
  73e7ff:	cc                                              	int3
