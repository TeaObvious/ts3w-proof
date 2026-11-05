# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5620 (ScriptCore.CASUtils::CASUtils_SimOutfitGetCurlPixelRadiusImpl)
Paired Ghidra pseudocode: 005A5620_ScriptCore_CASUtils_CASUtils_SimOutfitGetCurlPixelRadiusImpl.c
Window: [0x005a5620, 0x005a5660) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5620: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5630: 35 74 04 d9 ee 5e c3 e8 54 3d 1c 00 8b 10 8b c8
005a5640: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 80 80
005a5650: 00 00 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5620 <.text+0x1a4620>:
  5a5620:	56                                              	push   esi
  5a5621:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5625:	8b c6                                           	mov    eax,esi
  5a5627:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a562c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5631:	74 04                                           	je     0x5a5637
  5a5633:	d9 ee                                           	fldz
  5a5635:	5e                                              	pop    esi
  5a5636:	c3                                              	ret
  5a5637:	e8 54 3d 1c 00                                  	call   0x769390
  5a563c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a563e:	8b c8                                           	mov    ecx,eax
  5a5640:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5646:	56                                              	push   esi
  5a5647:	ff d0                                           	call   eax
  5a5649:	85 c0                                           	test   eax,eax
  5a564b:	74 e6                                           	je     0x5a5633
  5a564d:	d9 80 80 00 00 00                               	fld    DWORD PTR [eax+0x80]
  5a5653:	5e                                              	pop    esi
  5a5654:	c3                                              	ret
  5a5655:	cc                                              	int3
  5a5656:	cc                                              	int3
  5a5657:	cc                                              	int3
  5a5658:	cc                                              	int3
  5a5659:	cc                                              	int3
  5a565a:	cc                                              	int3
  5a565b:	cc                                              	int3
  5a565c:	cc                                              	int3
  5a565d:	cc                                              	int3
  5a565e:	cc                                              	int3
  5a565f:	cc                                              	int3
