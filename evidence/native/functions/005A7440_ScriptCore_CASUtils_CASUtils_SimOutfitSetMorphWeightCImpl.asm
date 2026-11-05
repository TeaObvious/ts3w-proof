# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7440 (ScriptCore.CASUtils::CASUtils_SimOutfitSetMorphWeightCImpl)
Paired Ghidra pseudocode: 005A7440_ScriptCore_CASUtils_CASUtils_SimOutfitSetMorphWeightCImpl.c
Window: [0x005a7440, 0x005a7480) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7440: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a7450: 35 75 21 e8 38 1f 1c 00 8b 10 8b c8 8b 82 cc 00
005a7460: 00 00 56 ff d0 85 c0 74 0b f3 0f 10 44 24 0c f3
005a7470: 0f 11 40 70 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7440 <.text+0x1a6440>:
  5a7440:	56                                              	push   esi
  5a7441:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a7445:	8b c6                                           	mov    eax,esi
  5a7447:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a744c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a7451:	75 21                                           	jne    0x5a7474
  5a7453:	e8 38 1f 1c 00                                  	call   0x769390
  5a7458:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a745a:	8b c8                                           	mov    ecx,eax
  5a745c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a7462:	56                                              	push   esi
  5a7463:	ff d0                                           	call   eax
  5a7465:	85 c0                                           	test   eax,eax
  5a7467:	74 0b                                           	je     0x5a7474
  5a7469:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a746f:	f3 0f 11 40 70                                  	movss  DWORD PTR [eax+0x70],xmm0
  5a7474:	5e                                              	pop    esi
  5a7475:	c3                                              	ret
  5a7476:	cc                                              	int3
  5a7477:	cc                                              	int3
  5a7478:	cc                                              	int3
  5a7479:	cc                                              	int3
  5a747a:	cc                                              	int3
  5a747b:	cc                                              	int3
  5a747c:	cc                                              	int3
  5a747d:	cc                                              	int3
  5a747e:	cc                                              	int3
  5a747f:	cc                                              	int3
