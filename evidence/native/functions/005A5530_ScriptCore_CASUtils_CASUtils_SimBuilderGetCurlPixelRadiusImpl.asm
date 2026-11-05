# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5530 (ScriptCore.CASUtils::CASUtils_SimBuilderGetCurlPixelRadiusImpl)
Paired Ghidra pseudocode: 005A5530_ScriptCore_CASUtils_CASUtils_SimBuilderGetCurlPixelRadiusImpl.c
Window: [0x005a5530, 0x005a5570) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5530: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5540: 35 75 1e e8 48 3e 1c 00 8b 10 8b c8 8b 82 cc 00
005a5550: 00 00 56 ff d0 85 c0 74 08 d9 80 6c 02 00 00 5e
005a5560: c3 d9 ee 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5530 <.text+0x1a4530>:
  5a5530:	56                                              	push   esi
  5a5531:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5535:	8b c6                                           	mov    eax,esi
  5a5537:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a553c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5541:	75 1e                                           	jne    0x5a5561
  5a5543:	e8 48 3e 1c 00                                  	call   0x769390
  5a5548:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a554a:	8b c8                                           	mov    ecx,eax
  5a554c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5552:	56                                              	push   esi
  5a5553:	ff d0                                           	call   eax
  5a5555:	85 c0                                           	test   eax,eax
  5a5557:	74 08                                           	je     0x5a5561
  5a5559:	d9 80 6c 02 00 00                               	fld    DWORD PTR [eax+0x26c]
  5a555f:	5e                                              	pop    esi
  5a5560:	c3                                              	ret
  5a5561:	d9 ee                                           	fldz
  5a5563:	5e                                              	pop    esi
  5a5564:	c3                                              	ret
  5a5565:	cc                                              	int3
  5a5566:	cc                                              	int3
  5a5567:	cc                                              	int3
  5a5568:	cc                                              	int3
  5a5569:	cc                                              	int3
  5a556a:	cc                                              	int3
  5a556b:	cc                                              	int3
  5a556c:	cc                                              	int3
  5a556d:	cc                                              	int3
  5a556e:	cc                                              	int3
  5a556f:	cc                                              	int3
