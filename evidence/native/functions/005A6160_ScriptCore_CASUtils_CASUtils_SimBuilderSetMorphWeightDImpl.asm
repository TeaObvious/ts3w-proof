# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6160 (ScriptCore.CASUtils::CASUtils_SimBuilderSetMorphWeightDImpl)
Paired Ghidra pseudocode: 005A6160_ScriptCore_CASUtils_CASUtils_SimBuilderSetMorphWeightDImpl.c
Window: [0x005a6160, 0x005a61a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a61a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6160: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6170: 35 75 28 e8 18 32 1c 00 8b 10 8b c8 8b 82 cc 00
005a6180: 00 00 56 ff d0 85 c0 74 12 f3 0f 10 44 24 0c 81
005a6190: 48 1c 80 00 00 00 f3 0f 11 40 5c 5e c3 cc cc cc

LINEAR DISASSEMBLY
005a6160 <.text+0x1a5160>:
  5a6160:	56                                              	push   esi
  5a6161:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6165:	8b c6                                           	mov    eax,esi
  5a6167:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a616c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6171:	75 28                                           	jne    0x5a619b
  5a6173:	e8 18 32 1c 00                                  	call   0x769390
  5a6178:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a617a:	8b c8                                           	mov    ecx,eax
  5a617c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6182:	56                                              	push   esi
  5a6183:	ff d0                                           	call   eax
  5a6185:	85 c0                                           	test   eax,eax
  5a6187:	74 12                                           	je     0x5a619b
  5a6189:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  5a618f:	81 48 1c 80 00 00 00                            	or     DWORD PTR [eax+0x1c],0x80
  5a6196:	f3 0f 11 40 5c                                  	movss  DWORD PTR [eax+0x5c],xmm0
  5a619b:	5e                                              	pop    esi
  5a619c:	c3                                              	ret
  5a619d:	cc                                              	int3
  5a619e:	cc                                              	int3
  5a619f:	cc                                              	int3
