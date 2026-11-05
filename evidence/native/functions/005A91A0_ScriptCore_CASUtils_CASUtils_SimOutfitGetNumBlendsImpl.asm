# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a91a0 (ScriptCore.CASUtils::CASUtils_SimOutfitGetNumBlendsImpl)
Paired Ghidra pseudocode: 005A91A0_ScriptCore_CASUtils_CASUtils_SimOutfitGetNumBlendsImpl.c
Window: [0x005a91a0, 0x005a91f0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a91f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a91a0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a91b0: 35 74 04 33 c0 5e c3 e8 d4 01 1c 00 8b 10 8b c8
005a91c0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 88 bc
005a91d0: 02 00 00 2b 88 b8 02 00 00 b8 ab aa aa 2a f7 e9
005a91e0: c1 fa 02 8b c2 c1 e8 1f 03 c2 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
005a91a0 <.text+0x1a81a0>:
  5a91a0:	56                                              	push   esi
  5a91a1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a91a5:	8b c6                                           	mov    eax,esi
  5a91a7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a91ac:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a91b1:	74 04                                           	je     0x5a91b7
  5a91b3:	33 c0                                           	xor    eax,eax
  5a91b5:	5e                                              	pop    esi
  5a91b6:	c3                                              	ret
  5a91b7:	e8 d4 01 1c 00                                  	call   0x769390
  5a91bc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a91be:	8b c8                                           	mov    ecx,eax
  5a91c0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a91c6:	56                                              	push   esi
  5a91c7:	ff d0                                           	call   eax
  5a91c9:	85 c0                                           	test   eax,eax
  5a91cb:	74 e6                                           	je     0x5a91b3
  5a91cd:	8b 88 bc 02 00 00                               	mov    ecx,DWORD PTR [eax+0x2bc]
  5a91d3:	2b 88 b8 02 00 00                               	sub    ecx,DWORD PTR [eax+0x2b8]
  5a91d9:	b8 ab aa aa 2a                                  	mov    eax,0x2aaaaaab
  5a91de:	f7 e9                                           	imul   ecx
  5a91e0:	c1 fa 02                                        	sar    edx,0x2
  5a91e3:	8b c2                                           	mov    eax,edx
  5a91e5:	c1 e8 1f                                        	shr    eax,0x1f
  5a91e8:	03 c2                                           	add    eax,edx
  5a91ea:	5e                                              	pop    esi
  5a91eb:	c3                                              	ret
  5a91ec:	cc                                              	int3
  5a91ed:	cc                                              	int3
  5a91ee:	cc                                              	int3
  5a91ef:	cc                                              	int3
