# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab060 (ScriptCore.CASUtils::CASUtils_PartSearchFreeSearchImpl)
Paired Ghidra pseudocode: 005AB060_ScriptCore_CASUtils_CASUtils_PartSearchFreeSearchImpl.c
Window: [0x005ab060, 0x005ab0c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab0c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab060: 57 8b 7c 24 08 8b c7 25 00 00 00 ff 3d 00 00 00
005ab070: 35 75 44 56 e8 17 e3 1b 00 8b 10 8b c8 8b 82 cc
005ab080: 00 00 00 57 ff d0 8b f0 85 f6 74 2a e8 ff e2 1b
005ab090: 00 8b 10 8b c8 8b 82 d8 00 00 00 57 ff d0 8b 06
005ab0a0: 85 c0 74 09 50 e8 36 94 f3 ff 83 c4 04 56 e8 2d
005ab0b0: 94 f3 ff 83 c4 04 5e 5f c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ab060 <.text+0x1aa060>:
  5ab060:	57                                              	push   edi
  5ab061:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  5ab065:	8b c7                                           	mov    eax,edi
  5ab067:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ab06c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ab071:	75 44                                           	jne    0x5ab0b7
  5ab073:	56                                              	push   esi
  5ab074:	e8 17 e3 1b 00                                  	call   0x769390
  5ab079:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab07b:	8b c8                                           	mov    ecx,eax
  5ab07d:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ab083:	57                                              	push   edi
  5ab084:	ff d0                                           	call   eax
  5ab086:	8b f0                                           	mov    esi,eax
  5ab088:	85 f6                                           	test   esi,esi
  5ab08a:	74 2a                                           	je     0x5ab0b6
  5ab08c:	e8 ff e2 1b 00                                  	call   0x769390
  5ab091:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab093:	8b c8                                           	mov    ecx,eax
  5ab095:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  5ab09b:	57                                              	push   edi
  5ab09c:	ff d0                                           	call   eax
  5ab09e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5ab0a0:	85 c0                                           	test   eax,eax
  5ab0a2:	74 09                                           	je     0x5ab0ad
  5ab0a4:	50                                              	push   eax
  5ab0a5:	e8 36 94 f3 ff                                  	call   0x4e44e0
  5ab0aa:	83 c4 04                                        	add    esp,0x4
  5ab0ad:	56                                              	push   esi
  5ab0ae:	e8 2d 94 f3 ff                                  	call   0x4e44e0
  5ab0b3:	83 c4 04                                        	add    esp,0x4
  5ab0b6:	5e                                              	pop    esi
  5ab0b7:	5f                                              	pop    edi
  5ab0b8:	c3                                              	ret
  5ab0b9:	cc                                              	int3
  5ab0ba:	cc                                              	int3
  5ab0bb:	cc                                              	int3
  5ab0bc:	cc                                              	int3
  5ab0bd:	cc                                              	int3
  5ab0be:	cc                                              	int3
  5ab0bf:	cc                                              	int3
