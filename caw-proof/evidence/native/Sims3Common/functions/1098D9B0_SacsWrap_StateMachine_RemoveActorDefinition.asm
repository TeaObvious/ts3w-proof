# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d9b0 (SacsWrap_StateMachine_RemoveActorDefinition)
Paired Ghidra pseudocode: 1098D9B0_SacsWrap_StateMachine_RemoveActorDefinition.c
Window: [0x1098d9b0, 0x1098d9e0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d9e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d9b0: 8b 44 24 04 85 c0 74 27 56 8b 74 24 0c 85 f6 74
1098d9c0: 1d 8d 4e 2c 51 8d 48 40 c7 46 28 00 00 00 00 e8
1098d9d0: fc 01 75 ff 8b 16 8b 42 04 8b ce 5e ff e0 5e c3

LINEAR DISASSEMBLY
1098d9b0 <.text+0x98c9b0>:
1098d9b0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098d9b4:	85 c0                                           	test   eax,eax
1098d9b6:	74 27                                           	je     0x1098d9df
1098d9b8:	56                                              	push   esi
1098d9b9:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1098d9bd:	85 f6                                           	test   esi,esi
1098d9bf:	74 1d                                           	je     0x1098d9de
1098d9c1:	8d 4e 2c                                        	lea    ecx,[esi+0x2c]
1098d9c4:	51                                              	push   ecx
1098d9c5:	8d 48 40                                        	lea    ecx,[eax+0x40]
1098d9c8:	c7 46 28 00 00 00 00                            	mov    DWORD PTR [esi+0x28],0x0
1098d9cf:	e8 fc 01 75 ff                                  	call   0x100ddbd0
1098d9d4:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098d9d6:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098d9d9:	8b ce                                           	mov    ecx,esi
1098d9db:	5e                                              	pop    esi
1098d9dc:	ff e0                                           	jmp    eax
1098d9de:	5e                                              	pop    esi
1098d9df:	c3                                              	ret
