# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a66e0 (ScriptCore.CASUtils::CASUtils_SimBuilderGetUseCompressionImpl)
Paired Ghidra pseudocode: 005A66E0_ScriptCore_CASUtils_CASUtils_SimBuilderGetUseCompressionImpl.c
Window: [0x005a66e0, 0x005a6720) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a66e0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a66f0: 35 75 1b e8 98 2c 1c 00 8b 10 8b c8 8b 82 cc 00
005a6700: 00 00 56 ff d0 85 c0 74 05 8a 40 69 5e c3 32 c0
005a6710: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a66e0 <.text+0x1a56e0>:
  5a66e0:	56                                              	push   esi
  5a66e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a66e5:	8b c6                                           	mov    eax,esi
  5a66e7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a66ec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a66f1:	75 1b                                           	jne    0x5a670e
  5a66f3:	e8 98 2c 1c 00                                  	call   0x769390
  5a66f8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a66fa:	8b c8                                           	mov    ecx,eax
  5a66fc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6702:	56                                              	push   esi
  5a6703:	ff d0                                           	call   eax
  5a6705:	85 c0                                           	test   eax,eax
  5a6707:	74 05                                           	je     0x5a670e
  5a6709:	8a 40 69                                        	mov    al,BYTE PTR [eax+0x69]
  5a670c:	5e                                              	pop    esi
  5a670d:	c3                                              	ret
  5a670e:	32 c0                                           	xor    al,al
  5a6710:	5e                                              	pop    esi
  5a6711:	c3                                              	ret
  5a6712:	cc                                              	int3
  5a6713:	cc                                              	int3
  5a6714:	cc                                              	int3
  5a6715:	cc                                              	int3
  5a6716:	cc                                              	int3
  5a6717:	cc                                              	int3
  5a6718:	cc                                              	int3
  5a6719:	cc                                              	int3
  5a671a:	cc                                              	int3
  5a671b:	cc                                              	int3
  5a671c:	cc                                              	int3
  5a671d:	cc                                              	int3
  5a671e:	cc                                              	int3
  5a671f:	cc                                              	int3
