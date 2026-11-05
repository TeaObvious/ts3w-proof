# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d6b0 (SacsWrap_StateMachine_SetHashToNameMap)
Paired Ghidra pseudocode: 1098D6B0_SacsWrap_StateMachine_SetHashToNameMap.c
Window: [0x1098d6b0, 0x1098d6d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d6d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d6b0: 8b 44 24 04 85 c0 74 10 8b 4c 24 08 51 8d 88 20
1098d6c0: 01 00 00 e8 58 80 a3 ff c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d6b0 <.text+0x98c6b0>:
1098d6b0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d6b4:	85 c0                                           	test   eax,eax
1098d6b6:	74 10                                           	je     0x1098d6c8
1098d6b8:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098d6bc:	51                                              	push   ecx
1098d6bd:	8d 88 20 01 00 00                               	lea    ecx,[eax+0x120]
1098d6c3:	e8 58 80 a3 ff                                  	call   0x103c5720
1098d6c8:	c3                                              	ret
1098d6c9:	cc                                              	int3
1098d6ca:	cc                                              	int3
1098d6cb:	cc                                              	int3
1098d6cc:	cc                                              	int3
1098d6cd:	cc                                              	int3
1098d6ce:	cc                                              	int3
1098d6cf:	cc                                              	int3
