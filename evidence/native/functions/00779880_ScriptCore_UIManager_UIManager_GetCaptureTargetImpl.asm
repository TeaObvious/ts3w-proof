# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779880 (ScriptCore.UIManager::UIManager_GetCaptureTargetImpl)
Paired Ghidra pseudocode: 00779880_ScriptCore_UIManager_UIManager_GetCaptureTargetImpl.c
Window: [0x00779880, 0x007798d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007798d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779880: 56 57 e8 09 fb fe ff 8b f8 e8 02 17 d9 ff 8b 4c
00779890: 24 0c 8b 10 8b 52 60 51 8b c8 ff d2 8b f0 85 f6
007798a0: 74 1a 8b 06 8b 10 8b ce ff d2 8b 07 8b 90 c8 00
007798b0: 00 00 6a 30 56 8b cf ff d2 5f 5e c3 5f 33 c0 5e
007798c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779880 <.text+0x378880>:
  779880:	56                                              	push   esi
  779881:	57                                              	push   edi
  779882:	e8 09 fb fe ff                                  	call   0x769390
  779887:	8b f8                                           	mov    edi,eax
  779889:	e8 02 17 d9 ff                                  	call   0x50af90
  77988e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  779892:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779894:	8b 52 60                                        	mov    edx,DWORD PTR [edx+0x60]
  779897:	51                                              	push   ecx
  779898:	8b c8                                           	mov    ecx,eax
  77989a:	ff d2                                           	call   edx
  77989c:	8b f0                                           	mov    esi,eax
  77989e:	85 f6                                           	test   esi,esi
  7798a0:	74 1a                                           	je     0x7798bc
  7798a2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7798a4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7798a6:	8b ce                                           	mov    ecx,esi
  7798a8:	ff d2                                           	call   edx
  7798aa:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7798ac:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
  7798b2:	6a 30                                           	push   0x30
  7798b4:	56                                              	push   esi
  7798b5:	8b cf                                           	mov    ecx,edi
  7798b7:	ff d2                                           	call   edx
  7798b9:	5f                                              	pop    edi
  7798ba:	5e                                              	pop    esi
  7798bb:	c3                                              	ret
  7798bc:	5f                                              	pop    edi
  7798bd:	33 c0                                           	xor    eax,eax
  7798bf:	5e                                              	pop    esi
  7798c0:	c3                                              	ret
  7798c1:	cc                                              	int3
  7798c2:	cc                                              	int3
  7798c3:	cc                                              	int3
  7798c4:	cc                                              	int3
  7798c5:	cc                                              	int3
  7798c6:	cc                                              	int3
  7798c7:	cc                                              	int3
  7798c8:	cc                                              	int3
  7798c9:	cc                                              	int3
  7798ca:	cc                                              	int3
  7798cb:	cc                                              	int3
  7798cc:	cc                                              	int3
  7798cd:	cc                                              	int3
  7798ce:	cc                                              	int3
  7798cf:	cc                                              	int3
