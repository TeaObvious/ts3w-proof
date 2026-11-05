# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a70d0 (ScriptCore.CASUtils::CASUtils_SimOutfitFreeImpl)
Paired Ghidra pseudocode: 005A70D0_ScriptCore_CASUtils_CASUtils_SimOutfitFreeImpl.c
Window: [0x005a70d0, 0x005a7130) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a70d0: 53 8b 5c 24 08 8b c3 25 00 00 00 ff 3d 00 00 00
005a70e0: 35 75 44 56 57 e8 a6 22 1c 00 8b f0 8b 16 8b 82
005a70f0: cc 00 00 00 53 8b ce ff d0 8b 16 8b f8 8b 82 d8
005a7100: 00 00 00 53 8b ce ff d0 85 ff 74 19 e8 af 49 04
005a7110: 00 57 8b c8 e8 b7 6c 04 00 8b 17 8b 42 04 8b cf
005a7120: 5f 5e 5b ff e0 5f 5e 5b c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a70d0 <.text+0x1a60d0>:
  5a70d0:	53                                              	push   ebx
  5a70d1:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
  5a70d5:	8b c3                                           	mov    eax,ebx
  5a70d7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a70dc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a70e1:	75 44                                           	jne    0x5a7127
  5a70e3:	56                                              	push   esi
  5a70e4:	57                                              	push   edi
  5a70e5:	e8 a6 22 1c 00                                  	call   0x769390
  5a70ea:	8b f0                                           	mov    esi,eax
  5a70ec:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a70ee:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a70f4:	53                                              	push   ebx
  5a70f5:	8b ce                                           	mov    ecx,esi
  5a70f7:	ff d0                                           	call   eax
  5a70f9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a70fb:	8b f8                                           	mov    edi,eax
  5a70fd:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  5a7103:	53                                              	push   ebx
  5a7104:	8b ce                                           	mov    ecx,esi
  5a7106:	ff d0                                           	call   eax
  5a7108:	85 ff                                           	test   edi,edi
  5a710a:	74 19                                           	je     0x5a7125
  5a710c:	e8 af 49 04 00                                  	call   0x5ebac0
  5a7111:	57                                              	push   edi
  5a7112:	8b c8                                           	mov    ecx,eax
  5a7114:	e8 b7 6c 04 00                                  	call   0x5eddd0
  5a7119:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a711b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a711e:	8b cf                                           	mov    ecx,edi
  5a7120:	5f                                              	pop    edi
  5a7121:	5e                                              	pop    esi
  5a7122:	5b                                              	pop    ebx
  5a7123:	ff e0                                           	jmp    eax
  5a7125:	5f                                              	pop    edi
  5a7126:	5e                                              	pop    esi
  5a7127:	5b                                              	pop    ebx
  5a7128:	c3                                              	ret
  5a7129:	cc                                              	int3
  5a712a:	cc                                              	int3
  5a712b:	cc                                              	int3
  5a712c:	cc                                              	int3
  5a712d:	cc                                              	int3
  5a712e:	cc                                              	int3
  5a712f:	cc                                              	int3
