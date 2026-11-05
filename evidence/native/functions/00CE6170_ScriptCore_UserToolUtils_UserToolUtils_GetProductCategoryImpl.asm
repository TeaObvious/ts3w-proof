# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6170 (ScriptCore.UserToolUtils::UserToolUtils_GetProductCategoryImpl)
Paired Ghidra pseudocode: 00CE6170_ScriptCore_UserToolUtils_UserToolUtils_GetProductCategoryImpl.c
Window: [0x00ce6170, 0x00ce61d0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce61d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6170: e8 1b 32 a8 ff 85 c0 74 4b 8b 4c 24 04 8b d1 81
00ce6180: e2 00 00 00 ff 81 fa 00 00 00 45 75 37 8b 10 51
00ce6190: 8b c8 8b 82 cc 00 00 00 ff d0 8b 4c 24 08 85 c9
00ce61a0: 76 22 83 f9 02 77 1d 85 c0 74 19 8b 10 8b c8 8b
00ce61b0: 42 0c 68 3c 3b 4a f1 ff d0 85 c0 74 07 8b 80 a0
00ce61c0: 00 00 00 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6170 <.text+0x8e5170>:
  ce6170:	e8 1b 32 a8 ff                                  	call   0x769390
  ce6175:	85 c0                                           	test   eax,eax
  ce6177:	74 4b                                           	je     0xce61c4
  ce6179:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  ce617d:	8b d1                                           	mov    edx,ecx
  ce617f:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  ce6185:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  ce618b:	75 37                                           	jne    0xce61c4
  ce618d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce618f:	51                                              	push   ecx
  ce6190:	8b c8                                           	mov    ecx,eax
  ce6192:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ce6198:	ff d0                                           	call   eax
  ce619a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ce619e:	85 c9                                           	test   ecx,ecx
  ce61a0:	76 22                                           	jbe    0xce61c4
  ce61a2:	83 f9 02                                        	cmp    ecx,0x2
  ce61a5:	77 1d                                           	ja     0xce61c4
  ce61a7:	85 c0                                           	test   eax,eax
  ce61a9:	74 19                                           	je     0xce61c4
  ce61ab:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce61ad:	8b c8                                           	mov    ecx,eax
  ce61af:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  ce61b2:	68 3c 3b 4a f1                                  	push   0xf14a3b3c
  ce61b7:	ff d0                                           	call   eax
  ce61b9:	85 c0                                           	test   eax,eax
  ce61bb:	74 07                                           	je     0xce61c4
  ce61bd:	8b 80 a0 00 00 00                               	mov    eax,DWORD PTR [eax+0xa0]
  ce61c3:	c3                                              	ret
  ce61c4:	33 c0                                           	xor    eax,eax
  ce61c6:	c3                                              	ret
  ce61c7:	cc                                              	int3
  ce61c8:	cc                                              	int3
  ce61c9:	cc                                              	int3
  ce61ca:	cc                                              	int3
  ce61cb:	cc                                              	int3
  ce61cc:	cc                                              	int3
  ce61cd:	cc                                              	int3
  ce61ce:	cc                                              	int3
  ce61cf:	cc                                              	int3
