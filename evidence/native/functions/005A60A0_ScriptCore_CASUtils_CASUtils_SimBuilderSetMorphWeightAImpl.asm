# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a60a0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetMorphWeightAImpl)
Paired Ghidra pseudocode: 005A60A0_ScriptCore_CASUtils_CASUtils_SimBuilderSetMorphWeightAImpl.c
Window: [0x005a60a0, 0x005a60e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a60e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a60a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a60b0: 35 75 25 e8 d8 32 1c 00 8b 10 8b c8 8b 82 cc 00
005a60c0: 00 00 56 ff d0 85 c0 74 0f f3 0f 10 44 24 0c 83
005a60d0: 48 1c 10 f3 0f 11 40 50 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a60a0 <.text+0x1a50a0>:
  5a60a0:	56                                              	push   esi
  5a60a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a60a5:	8b c6                                           	mov    eax,esi
  5a60a7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a60ac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a60b1:	75 25                                           	jne    0x5a60d8
  5a60b3:	e8 d8 32 1c 00                                  	call   0x769390
  5a60b8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a60ba:	8b c8                                           	mov    ecx,eax
  5a60bc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a60c2:	56                                              	push   esi
  5a60c3:	ff d0                                           	call   eax
  5a60c5:	85 c0                                           	test   eax,eax
  5a60c7:	74 0f                                           	je     0x5a60d8
  5a60c9:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a60cf:	83 48 1c 10                                     	or     DWORD PTR [eax+0x1c],0x10
  5a60d3:	f3 0f 11 40 50                                  	movss  DWORD PTR [eax+0x50],xmm0
  5a60d8:	5e                                              	pop    esi
  5a60d9:	c3                                              	ret
  5a60da:	cc                                              	int3
  5a60db:	cc                                              	int3
  5a60dc:	cc                                              	int3
  5a60dd:	cc                                              	int3
  5a60de:	cc                                              	int3
  5a60df:	cc                                              	int3
