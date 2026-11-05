# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6870 (ScriptCore.CASUtils::CASUtils_SimBuilderGetIsRigDirtyImpl)
Paired Ghidra pseudocode: 005A6870_ScriptCore_CASUtils_CASUtils_SimBuilderGetIsRigDirtyImpl.c
Window: [0x005a6870, 0x005a68b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a68b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6870: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6880: 35 75 1e e8 08 2b 1c 00 8b 10 8b c8 8b 82 cc 00
005a6890: 00 00 56 ff d0 85 c0 74 08 8a 80 04 02 00 00 5e
005a68a0: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6870 <.text+0x1a5870>:
  5a6870:	56                                              	push   esi
  5a6871:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6875:	8b c6                                           	mov    eax,esi
  5a6877:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a687c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6881:	75 1e                                           	jne    0x5a68a1
  5a6883:	e8 08 2b 1c 00                                  	call   0x769390
  5a6888:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a688a:	8b c8                                           	mov    ecx,eax
  5a688c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6892:	56                                              	push   esi
  5a6893:	ff d0                                           	call   eax
  5a6895:	85 c0                                           	test   eax,eax
  5a6897:	74 08                                           	je     0x5a68a1
  5a6899:	8a 80 04 02 00 00                               	mov    al,BYTE PTR [eax+0x204]
  5a689f:	5e                                              	pop    esi
  5a68a0:	c3                                              	ret
  5a68a1:	32 c0                                           	xor    al,al
  5a68a3:	5e                                              	pop    esi
  5a68a4:	c3                                              	ret
  5a68a5:	cc                                              	int3
  5a68a6:	cc                                              	int3
  5a68a7:	cc                                              	int3
  5a68a8:	cc                                              	int3
  5a68a9:	cc                                              	int3
  5a68aa:	cc                                              	int3
  5a68ab:	cc                                              	int3
  5a68ac:	cc                                              	int3
  5a68ad:	cc                                              	int3
  5a68ae:	cc                                              	int3
  5a68af:	cc                                              	int3
