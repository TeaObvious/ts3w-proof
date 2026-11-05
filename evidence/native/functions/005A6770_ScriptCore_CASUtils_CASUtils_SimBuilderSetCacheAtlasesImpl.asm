# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6770 (ScriptCore.CASUtils::CASUtils_SimBuilderSetCacheAtlasesImpl)
Paired Ghidra pseudocode: 005A6770_ScriptCore_CASUtils_CASUtils_SimBuilderSetCacheAtlasesImpl.c
Window: [0x005a6770, 0x005a67b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a67b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6770: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6780: 35 75 1d e8 08 2c 1c 00 8b 10 8b c8 8b 82 cc 00
005a6790: 00 00 56 ff d0 85 c0 74 07 8a 4c 24 0c 88 48 6b
005a67a0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6770 <.text+0x1a5770>:
  5a6770:	56                                              	push   esi
  5a6771:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6775:	8b c6                                           	mov    eax,esi
  5a6777:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a677c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6781:	75 1d                                           	jne    0x5a67a0
  5a6783:	e8 08 2c 1c 00                                  	call   0x769390
  5a6788:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a678a:	8b c8                                           	mov    ecx,eax
  5a678c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6792:	56                                              	push   esi
  5a6793:	ff d0                                           	call   eax
  5a6795:	85 c0                                           	test   eax,eax
  5a6797:	74 07                                           	je     0x5a67a0
  5a6799:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
  5a679d:	88 48 6b                                        	mov    BYTE PTR [eax+0x6b],cl
  5a67a0:	5e                                              	pop    esi
  5a67a1:	c3                                              	ret
  5a67a2:	cc                                              	int3
  5a67a3:	cc                                              	int3
  5a67a4:	cc                                              	int3
  5a67a5:	cc                                              	int3
  5a67a6:	cc                                              	int3
  5a67a7:	cc                                              	int3
  5a67a8:	cc                                              	int3
  5a67a9:	cc                                              	int3
  5a67aa:	cc                                              	int3
  5a67ab:	cc                                              	int3
  5a67ac:	cc                                              	int3
  5a67ad:	cc                                              	int3
  5a67ae:	cc                                              	int3
  5a67af:	cc                                              	int3
