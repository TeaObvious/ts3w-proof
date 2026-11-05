# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a67f0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetWaitForTexturesImpl)
Paired Ghidra pseudocode: 005A67F0_ScriptCore_CASUtils_CASUtils_SimBuilderSetWaitForTexturesImpl.c
Window: [0x005a67f0, 0x005a6830) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a67f0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6800: 35 75 1d e8 88 2b 1c 00 8b 10 8b c8 8b 82 cc 00
005a6810: 00 00 56 ff d0 85 c0 74 07 8a 4c 24 0c 88 48 6a
005a6820: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a67f0 <.text+0x1a57f0>:
  5a67f0:	56                                              	push   esi
  5a67f1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a67f5:	8b c6                                           	mov    eax,esi
  5a67f7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a67fc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6801:	75 1d                                           	jne    0x5a6820
  5a6803:	e8 88 2b 1c 00                                  	call   0x769390
  5a6808:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a680a:	8b c8                                           	mov    ecx,eax
  5a680c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6812:	56                                              	push   esi
  5a6813:	ff d0                                           	call   eax
  5a6815:	85 c0                                           	test   eax,eax
  5a6817:	74 07                                           	je     0x5a6820
  5a6819:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
  5a681d:	88 48 6a                                        	mov    BYTE PTR [eax+0x6a],cl
  5a6820:	5e                                              	pop    esi
  5a6821:	c3                                              	ret
  5a6822:	cc                                              	int3
  5a6823:	cc                                              	int3
  5a6824:	cc                                              	int3
  5a6825:	cc                                              	int3
  5a6826:	cc                                              	int3
  5a6827:	cc                                              	int3
  5a6828:	cc                                              	int3
  5a6829:	cc                                              	int3
  5a682a:	cc                                              	int3
  5a682b:	cc                                              	int3
  5a682c:	cc                                              	int3
  5a682d:	cc                                              	int3
  5a682e:	cc                                              	int3
  5a682f:	cc                                              	int3
