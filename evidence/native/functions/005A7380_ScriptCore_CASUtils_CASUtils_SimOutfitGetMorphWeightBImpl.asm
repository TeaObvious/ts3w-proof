# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7380 (ScriptCore.CASUtils::CASUtils_SimOutfitGetMorphWeightBImpl)
Paired Ghidra pseudocode: 005A7380_ScriptCore_CASUtils_CASUtils_SimOutfitGetMorphWeightBImpl.c
Window: [0x005a7380, 0x005a73c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a73c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7380: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7390: 35 74 04 d9 ee 5e c3 e8 f4 1f 1c 00 8b 10 8b c8
005a73a0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 40 6c
005a73b0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7380 <.text+0x1a6380>:
  5a7380:	56                                              	push   esi
  5a7381:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7385:	8b c6                                           	mov    eax,esi
  5a7387:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a738c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7391:	74 04                                           	je     0x5a7397
  5a7393:	d9 ee                                           	fldz
  5a7395:	5e                                              	pop    esi
  5a7396:	c3                                              	ret
  5a7397:	e8 f4 1f 1c 00                                  	call   0x769390
  5a739c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a739e:	8b c8                                           	mov    ecx,eax
  5a73a0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a73a6:	56                                              	push   esi
  5a73a7:	ff d0                                           	call   eax
  5a73a9:	85 c0                                           	test   eax,eax
  5a73ab:	74 e6                                           	je     0x5a7393
  5a73ad:	d9 40 6c                                        	fld    DWORD PTR [eax+0x6c]
  5a73b0:	5e                                              	pop    esi
  5a73b1:	c3                                              	ret
  5a73b2:	cc                                              	int3
  5a73b3:	cc                                              	int3
  5a73b4:	cc                                              	int3
  5a73b5:	cc                                              	int3
  5a73b6:	cc                                              	int3
  5a73b7:	cc                                              	int3
  5a73b8:	cc                                              	int3
  5a73b9:	cc                                              	int3
  5a73ba:	cc                                              	int3
  5a73bb:	cc                                              	int3
  5a73bc:	cc                                              	int3
  5a73bd:	cc                                              	int3
  5a73be:	cc                                              	int3
  5a73bf:	cc                                              	int3
