# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d8f0 (SacsWrap_StateMachine_RemoveState)
Paired Ghidra pseudocode: 1098D8F0_SacsWrap_StateMachine_RemoveState.c
Window: [0x1098d8f0, 0x1098d930) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d8f0: 8b 44 24 04 85 c0 74 2a 56 8b 74 24 0c 85 f6 74
1098d900: 20 8d 4e 28 51 8d 88 80 00 00 00 e8 c0 02 75 ff
1098d910: 8b 16 8b 42 04 c7 46 34 00 00 00 00 8b ce 5e ff
1098d920: e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d8f0 <.text+0x98c8f0>:
1098d8f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d8f4:	85 c0                                           	test   eax,eax
1098d8f6:	74 2a                                           	je     0x1098d922
1098d8f8:	56                                              	push   esi
1098d8f9:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1098d8fd:	85 f6                                           	test   esi,esi
1098d8ff:	74 20                                           	je     0x1098d921
1098d901:	8d 4e 28                                        	lea    ecx,[esi+0x28]
1098d904:	51                                              	push   ecx
1098d905:	8d 88 80 00 00 00                               	lea    ecx,[eax+0x80]
1098d90b:	e8 c0 02 75 ff                                  	call   0x100ddbd0
1098d910:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098d912:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098d915:	c7 46 34 00 00 00 00                            	mov    DWORD PTR [esi+0x34],0x0
1098d91c:	8b ce                                           	mov    ecx,esi
1098d91e:	5e                                              	pop    esi
1098d91f:	ff e0                                           	jmp    eax
1098d921:	5e                                              	pop    esi
1098d922:	c3                                              	ret
1098d923:	cc                                              	int3
1098d924:	cc                                              	int3
1098d925:	cc                                              	int3
1098d926:	cc                                              	int3
1098d927:	cc                                              	int3
1098d928:	cc                                              	int3
1098d929:	cc                                              	int3
1098d92a:	cc                                              	int3
1098d92b:	cc                                              	int3
1098d92c:	cc                                              	int3
1098d92d:	cc                                              	int3
1098d92e:	cc                                              	int3
1098d92f:	cc                                              	int3
