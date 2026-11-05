# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a71b0 (ScriptCore.CASUtils::CASUtils_SimOutfitGetSkinToneKeyImpl)
Paired Ghidra pseudocode: 005A71B0_ScriptCore_CASUtils_CASUtils_SimOutfitGetSkinToneKeyImpl.c
Window: [0x005a71b0, 0x005a7210) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a71b0: 56 8b 74 24 0c 8b c6 25 00 00 00 ff 3d 00 00 00
005a71c0: 35 74 13 8b 44 24 08 33 c9 89 08 89 48 04 89 48
005a71d0: 08 89 48 0c 5e c3 e8 b5 21 1c 00 8b 10 8b c8 8b
005a71e0: 82 cc 00 00 00 56 ff d0 85 c0 74 d7 8b 70 4c 8b
005a71f0: 48 40 8b 50 44 57 8b 78 48 8b 44 24 0c 89 38 89
005a7200: 70 04 5f 89 48 08 89 50 0c 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005a71b0 <.text+0x1a61b0>:
  5a71b0:	56                                              	push   esi
  5a71b1:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5a71b5:	8b c6                                           	mov    eax,esi
  5a71b7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a71bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a71c1:	74 13                                           	je     0x5a71d6
  5a71c3:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5a71c7:	33 c9                                           	xor    ecx,ecx
  5a71c9:	89 08                                           	mov    DWORD PTR [eax],ecx
  5a71cb:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  5a71ce:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5a71d1:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  5a71d4:	5e                                              	pop    esi
  5a71d5:	c3                                              	ret
  5a71d6:	e8 b5 21 1c 00                                  	call   0x769390
  5a71db:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a71dd:	8b c8                                           	mov    ecx,eax
  5a71df:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a71e5:	56                                              	push   esi
  5a71e6:	ff d0                                           	call   eax
  5a71e8:	85 c0                                           	test   eax,eax
  5a71ea:	74 d7                                           	je     0x5a71c3
  5a71ec:	8b 70 4c                                        	mov    esi,DWORD PTR [eax+0x4c]
  5a71ef:	8b 48 40                                        	mov    ecx,DWORD PTR [eax+0x40]
  5a71f2:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  5a71f5:	57                                              	push   edi
  5a71f6:	8b 78 48                                        	mov    edi,DWORD PTR [eax+0x48]
  5a71f9:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  5a71fd:	89 38                                           	mov    DWORD PTR [eax],edi
  5a71ff:	89 70 04                                        	mov    DWORD PTR [eax+0x4],esi
  5a7202:	5f                                              	pop    edi
  5a7203:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5a7206:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  5a7209:	5e                                              	pop    esi
  5a720a:	c3                                              	ret
  5a720b:	cc                                              	int3
  5a720c:	cc                                              	int3
  5a720d:	cc                                              	int3
  5a720e:	cc                                              	int3
  5a720f:	cc                                              	int3
