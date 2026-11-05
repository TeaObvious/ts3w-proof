# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5570 (ScriptCore.CASUtils::CASUtils_SimOutfitGetNumCurlsImpl)
Paired Ghidra pseudocode: 005A5570_ScriptCore_CASUtils_CASUtils_SimOutfitGetNumCurlsImpl.c
Window: [0x005a5570, 0x005a55b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a55b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5570: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5580: 35 74 04 d9 ee 5e c3 e8 04 3e 1c 00 8b 10 8b c8
005a5590: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 40 7c
005a55a0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5570 <.text+0x1a4570>:
  5a5570:	56                                              	push   esi
  5a5571:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5575:	8b c6                                           	mov    eax,esi
  5a5577:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a557c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5581:	74 04                                           	je     0x5a5587
  5a5583:	d9 ee                                           	fldz
  5a5585:	5e                                              	pop    esi
  5a5586:	c3                                              	ret
  5a5587:	e8 04 3e 1c 00                                  	call   0x769390
  5a558c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a558e:	8b c8                                           	mov    ecx,eax
  5a5590:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5596:	56                                              	push   esi
  5a5597:	ff d0                                           	call   eax
  5a5599:	85 c0                                           	test   eax,eax
  5a559b:	74 e6                                           	je     0x5a5583
  5a559d:	d9 40 7c                                        	fld    DWORD PTR [eax+0x7c]
  5a55a0:	5e                                              	pop    esi
  5a55a1:	c3                                              	ret
  5a55a2:	cc                                              	int3
  5a55a3:	cc                                              	int3
  5a55a4:	cc                                              	int3
  5a55a5:	cc                                              	int3
  5a55a6:	cc                                              	int3
  5a55a7:	cc                                              	int3
  5a55a8:	cc                                              	int3
  5a55a9:	cc                                              	int3
  5a55aa:	cc                                              	int3
  5a55ab:	cc                                              	int3
  5a55ac:	cc                                              	int3
  5a55ad:	cc                                              	int3
  5a55ae:	cc                                              	int3
  5a55af:	cc                                              	int3
