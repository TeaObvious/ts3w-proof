# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7400 (ScriptCore.CASUtils::CASUtils_SimOutfitGetMorphWeightCImpl)
Paired Ghidra pseudocode: 005A7400_ScriptCore_CASUtils_CASUtils_SimOutfitGetMorphWeightCImpl.c
Window: [0x005a7400, 0x005a7440) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7440
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7400: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7410: 35 74 04 d9 ee 5e c3 e8 74 1f 1c 00 8b 10 8b c8
005a7420: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 40 70
005a7430: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7400 <.text+0x1a6400>:
  5a7400:	56                                              	push   esi
  5a7401:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7405:	8b c6                                           	mov    eax,esi
  5a7407:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a740c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7411:	74 04                                           	je     0x5a7417
  5a7413:	d9 ee                                           	fldz
  5a7415:	5e                                              	pop    esi
  5a7416:	c3                                              	ret
  5a7417:	e8 74 1f 1c 00                                  	call   0x769390
  5a741c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a741e:	8b c8                                           	mov    ecx,eax
  5a7420:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7426:	56                                              	push   esi
  5a7427:	ff d0                                           	call   eax
  5a7429:	85 c0                                           	test   eax,eax
  5a742b:	74 e6                                           	je     0x5a7413
  5a742d:	d9 40 70                                        	fld    DWORD PTR [eax+0x70]
  5a7430:	5e                                              	pop    esi
  5a7431:	c3                                              	ret
  5a7432:	cc                                              	int3
  5a7433:	cc                                              	int3
  5a7434:	cc                                              	int3
  5a7435:	cc                                              	int3
  5a7436:	cc                                              	int3
  5a7437:	cc                                              	int3
  5a7438:	cc                                              	int3
  5a7439:	cc                                              	int3
  5a743a:	cc                                              	int3
  5a743b:	cc                                              	int3
  5a743c:	cc                                              	int3
  5a743d:	cc                                              	int3
  5a743e:	cc                                              	int3
  5a743f:	cc                                              	int3
