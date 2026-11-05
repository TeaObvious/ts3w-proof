# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6990 (ScriptCore.CASUtils::CASUtils_SimBuilderGetNumBonesImpl)
Paired Ghidra pseudocode: 005A6990_ScriptCore_CASUtils_CASUtils_SimBuilderGetNumBonesImpl.c
Window: [0x005a6990, 0x005a69d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a69d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6990: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a69a0: 35 75 1e e8 e8 29 1c 00 8b 10 8b c8 8b 82 cc 00
005a69b0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 3f a1 03
005a69c0: 00 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6990 <.text+0x1a5990>:
  5a6990:	56                                              	push   esi
  5a6991:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6995:	8b c6                                           	mov    eax,esi
  5a6997:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a699c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a69a1:	75 1e                                           	jne    0x5a69c1
  5a69a3:	e8 e8 29 1c 00                                  	call   0x769390
  5a69a8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a69aa:	8b c8                                           	mov    ecx,eax
  5a69ac:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a69b2:	56                                              	push   esi
  5a69b3:	ff d0                                           	call   eax
  5a69b5:	85 c0                                           	test   eax,eax
  5a69b7:	74 08                                           	je     0x5a69c1
  5a69b9:	8b c8                                           	mov    ecx,eax
  5a69bb:	5e                                              	pop    esi
  5a69bc:	e9 3f a1 03 00                                  	jmp    0x5e0b00
  5a69c1:	33 c0                                           	xor    eax,eax
  5a69c3:	5e                                              	pop    esi
  5a69c4:	c3                                              	ret
  5a69c5:	cc                                              	int3
  5a69c6:	cc                                              	int3
  5a69c7:	cc                                              	int3
  5a69c8:	cc                                              	int3
  5a69c9:	cc                                              	int3
  5a69ca:	cc                                              	int3
  5a69cb:	cc                                              	int3
  5a69cc:	cc                                              	int3
  5a69cd:	cc                                              	int3
  5a69ce:	cc                                              	int3
  5a69cf:	cc                                              	int3
