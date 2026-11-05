# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3a80 (CASUtils_SimBuilderSetHairHaloHighColorImpl)
Paired Ghidra pseudocode: 103A3A80_CASUtils_SimBuilderSetHairHaloHighColorImpl.c
Window: [0x103a3a80, 0x103a3ac0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3ac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3a80: f3 0f 10 44 24 08 83 ec 0c 8b c4 f3 0f 11 00 f3
103a3a90: 0f 10 44 24 18 f3 0f 11 40 04 f3 0f 10 44 24 1c
103a3aa0: f3 0f 11 40 08 8b 44 24 10 50 e8 81 ef ff ff 83
103a3ab0: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3a80 <.text+0x3a2a80>:
103a3a80:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
103a3a86:	83 ec 0c                                        	sub    esp,0xc
103a3a89:	8b c4                                           	mov    eax,esp
103a3a8b:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
103a3a8f:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
103a3a95:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
103a3a9a:	f3 0f 10 44 24 1c                               	movss  xmm0,DWORD PTR [esp+0x1c]
103a3aa0:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
103a3aa5:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
103a3aa9:	50                                              	push   eax
103a3aaa:	e8 81 ef ff ff                                  	call   0x103a2a30
103a3aaf:	83 c4 10                                        	add    esp,0x10
103a3ab2:	c3                                              	ret
103a3ab3:	cc                                              	int3
103a3ab4:	cc                                              	int3
103a3ab5:	cc                                              	int3
103a3ab6:	cc                                              	int3
103a3ab7:	cc                                              	int3
103a3ab8:	cc                                              	int3
103a3ab9:	cc                                              	int3
103a3aba:	cc                                              	int3
103a3abb:	cc                                              	int3
103a3abc:	cc                                              	int3
103a3abd:	cc                                              	int3
103a3abe:	cc                                              	int3
103a3abf:	cc                                              	int3
