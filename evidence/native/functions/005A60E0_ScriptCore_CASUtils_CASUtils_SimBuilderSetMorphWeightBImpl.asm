# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a60e0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetMorphWeightBImpl)
Paired Ghidra pseudocode: 005A60E0_ScriptCore_CASUtils_CASUtils_SimBuilderSetMorphWeightBImpl.c
Window: [0x005a60e0, 0x005a6120) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a60e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a60f0: 35 75 25 e8 98 32 1c 00 8b 10 8b c8 8b 82 cc 00
005a6100: 00 00 56 ff d0 85 c0 74 0f f3 0f 10 44 24 0c 83
005a6110: 48 1c 20 f3 0f 11 40 54 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a60e0 <.text+0x1a50e0>:
  5a60e0:	56                                              	push   esi
  5a60e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a60e5:	8b c6                                           	mov    eax,esi
  5a60e7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a60ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a60f1:	75 25                                           	jne    0x5a6118
  5a60f3:	e8 98 32 1c 00                                  	call   0x769390
  5a60f8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a60fa:	8b c8                                           	mov    ecx,eax
  5a60fc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6102:	56                                              	push   esi
  5a6103:	ff d0                                           	call   eax
  5a6105:	85 c0                                           	test   eax,eax
  5a6107:	74 0f                                           	je     0x5a6118
  5a6109:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a610f:	83 48 1c 20                                     	or     DWORD PTR [eax+0x1c],0x20
  5a6113:	f3 0f 11 40 54                                  	movss  DWORD PTR [eax+0x54],xmm0
  5a6118:	5e                                              	pop    esi
  5a6119:	c3                                              	ret
  5a611a:	cc                                              	int3
  5a611b:	cc                                              	int3
  5a611c:	cc                                              	int3
  5a611d:	cc                                              	int3
  5a611e:	cc                                              	int3
  5a611f:	cc                                              	int3
