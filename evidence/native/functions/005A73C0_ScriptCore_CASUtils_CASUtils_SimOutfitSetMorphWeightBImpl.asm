# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a73c0 (ScriptCore.CASUtils::CASUtils_SimOutfitSetMorphWeightBImpl)
Paired Ghidra pseudocode: 005A73C0_ScriptCore_CASUtils_CASUtils_SimOutfitSetMorphWeightBImpl.c
Window: [0x005a73c0, 0x005a7400) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a73c0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a73d0: 35 75 21 e8 b8 1f 1c 00 8b 10 8b c8 8b 82 cc 00
005a73e0: 00 00 56 ff d0 85 c0 74 0b f3 0f 10 44 24 0c f3
005a73f0: 0f 11 40 6c 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a73c0 <.text+0x1a63c0>:
  5a73c0:	56                                              	push   esi
  5a73c1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a73c5:	8b c6                                           	mov    eax,esi
  5a73c7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a73cc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a73d1:	75 21                                           	jne    0x5a73f4
  5a73d3:	e8 b8 1f 1c 00                                  	call   0x769390
  5a73d8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a73da:	8b c8                                           	mov    ecx,eax
  5a73dc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a73e2:	56                                              	push   esi
  5a73e3:	ff d0                                           	call   eax
  5a73e5:	85 c0                                           	test   eax,eax
  5a73e7:	74 0b                                           	je     0x5a73f4
  5a73e9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a73ef:	f3 0f 11 40 6c                                  	movss  DWORD PTR [eax+0x6c],xmm0
  5a73f4:	5e                                              	pop    esi
  5a73f5:	c3                                              	ret
  5a73f6:	cc                                              	int3
  5a73f7:	cc                                              	int3
  5a73f8:	cc                                              	int3
  5a73f9:	cc                                              	int3
  5a73fa:	cc                                              	int3
  5a73fb:	cc                                              	int3
  5a73fc:	cc                                              	int3
  5a73fd:	cc                                              	int3
  5a73fe:	cc                                              	int3
  5a73ff:	cc                                              	int3
