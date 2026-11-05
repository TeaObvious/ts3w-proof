# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7480 (ScriptCore.CASUtils::CASUtils_SimOutfitGetMorphWeightDImpl)
Paired Ghidra pseudocode: 005A7480_ScriptCore_CASUtils_CASUtils_SimOutfitGetMorphWeightDImpl.c
Window: [0x005a7480, 0x005a74c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a74c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7480: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7490: 35 74 04 d9 ee 5e c3 e8 f4 1e 1c 00 8b 10 8b c8
005a74a0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 40 74
005a74b0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7480 <.text+0x1a6480>:
  5a7480:	56                                              	push   esi
  5a7481:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7485:	8b c6                                           	mov    eax,esi
  5a7487:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a748c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7491:	74 04                                           	je     0x5a7497
  5a7493:	d9 ee                                           	fldz
  5a7495:	5e                                              	pop    esi
  5a7496:	c3                                              	ret
  5a7497:	e8 f4 1e 1c 00                                  	call   0x769390
  5a749c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a749e:	8b c8                                           	mov    ecx,eax
  5a74a0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a74a6:	56                                              	push   esi
  5a74a7:	ff d0                                           	call   eax
  5a74a9:	85 c0                                           	test   eax,eax
  5a74ab:	74 e6                                           	je     0x5a7493
  5a74ad:	d9 40 74                                        	fld    DWORD PTR [eax+0x74]
  5a74b0:	5e                                              	pop    esi
  5a74b1:	c3                                              	ret
  5a74b2:	cc                                              	int3
  5a74b3:	cc                                              	int3
  5a74b4:	cc                                              	int3
  5a74b5:	cc                                              	int3
  5a74b6:	cc                                              	int3
  5a74b7:	cc                                              	int3
  5a74b8:	cc                                              	int3
  5a74b9:	cc                                              	int3
  5a74ba:	cc                                              	int3
  5a74bb:	cc                                              	int3
  5a74bc:	cc                                              	int3
  5a74bd:	cc                                              	int3
  5a74be:	cc                                              	int3
  5a74bf:	cc                                              	int3
