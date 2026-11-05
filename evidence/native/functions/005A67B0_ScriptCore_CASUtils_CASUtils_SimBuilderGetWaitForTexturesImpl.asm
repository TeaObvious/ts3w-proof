# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a67b0 (ScriptCore.CASUtils::CASUtils_SimBuilderGetWaitForTexturesImpl)
Paired Ghidra pseudocode: 005A67B0_ScriptCore_CASUtils_CASUtils_SimBuilderGetWaitForTexturesImpl.c
Window: [0x005a67b0, 0x005a67f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a67f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a67b0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a67c0: 35 75 1b e8 c8 2b 1c 00 8b 10 8b c8 8b 82 cc 00
005a67d0: 00 00 56 ff d0 85 c0 74 05 8a 40 6a 5e c3 32 c0
005a67e0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a67b0 <.text+0x1a57b0>:
  5a67b0:	56                                              	push   esi
  5a67b1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a67b5:	8b c6                                           	mov    eax,esi
  5a67b7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a67bc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a67c1:	75 1b                                           	jne    0x5a67de
  5a67c3:	e8 c8 2b 1c 00                                  	call   0x769390
  5a67c8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a67ca:	8b c8                                           	mov    ecx,eax
  5a67cc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a67d2:	56                                              	push   esi
  5a67d3:	ff d0                                           	call   eax
  5a67d5:	85 c0                                           	test   eax,eax
  5a67d7:	74 05                                           	je     0x5a67de
  5a67d9:	8a 40 6a                                        	mov    al,BYTE PTR [eax+0x6a]
  5a67dc:	5e                                              	pop    esi
  5a67dd:	c3                                              	ret
  5a67de:	32 c0                                           	xor    al,al
  5a67e0:	5e                                              	pop    esi
  5a67e1:	c3                                              	ret
  5a67e2:	cc                                              	int3
  5a67e3:	cc                                              	int3
  5a67e4:	cc                                              	int3
  5a67e5:	cc                                              	int3
  5a67e6:	cc                                              	int3
  5a67e7:	cc                                              	int3
  5a67e8:	cc                                              	int3
  5a67e9:	cc                                              	int3
  5a67ea:	cc                                              	int3
  5a67eb:	cc                                              	int3
  5a67ec:	cc                                              	int3
  5a67ed:	cc                                              	int3
  5a67ee:	cc                                              	int3
  5a67ef:	cc                                              	int3
