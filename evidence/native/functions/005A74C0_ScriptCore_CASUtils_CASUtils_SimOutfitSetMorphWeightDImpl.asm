# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a74c0 (ScriptCore.CASUtils::CASUtils_SimOutfitSetMorphWeightDImpl)
Paired Ghidra pseudocode: 005A74C0_ScriptCore_CASUtils_CASUtils_SimOutfitSetMorphWeightDImpl.c
Window: [0x005a74c0, 0x005a7500) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a74c0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a74d0: 35 75 21 e8 b8 1e 1c 00 8b 10 8b c8 8b 82 cc 00
005a74e0: 00 00 56 ff d0 85 c0 74 0b f3 0f 10 44 24 0c f3
005a74f0: 0f 11 40 74 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a74c0 <.text+0x1a64c0>:
  5a74c0:	56                                              	push   esi
  5a74c1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a74c5:	8b c6                                           	mov    eax,esi
  5a74c7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a74cc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a74d1:	75 21                                           	jne    0x5a74f4
  5a74d3:	e8 b8 1e 1c 00                                  	call   0x769390
  5a74d8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a74da:	8b c8                                           	mov    ecx,eax
  5a74dc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a74e2:	56                                              	push   esi
  5a74e3:	ff d0                                           	call   eax
  5a74e5:	85 c0                                           	test   eax,eax
  5a74e7:	74 0b                                           	je     0x5a74f4
  5a74e9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a74ef:	f3 0f 11 40 74                                  	movss  DWORD PTR [eax+0x74],xmm0
  5a74f4:	5e                                              	pop    esi
  5a74f5:	c3                                              	ret
  5a74f6:	cc                                              	int3
  5a74f7:	cc                                              	int3
  5a74f8:	cc                                              	int3
  5a74f9:	cc                                              	int3
  5a74fa:	cc                                              	int3
  5a74fb:	cc                                              	int3
  5a74fc:	cc                                              	int3
  5a74fd:	cc                                              	int3
  5a74fe:	cc                                              	int3
  5a74ff:	cc                                              	int3
