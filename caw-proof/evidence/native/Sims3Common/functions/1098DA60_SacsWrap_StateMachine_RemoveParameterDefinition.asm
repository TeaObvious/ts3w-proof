# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098da60 (SacsWrap_StateMachine_RemoveParameterDefinition)
Paired Ghidra pseudocode: 1098DA60_SacsWrap_StateMachine_RemoveParameterDefinition.c
Window: [0x1098da60, 0x1098da90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098da90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098da60: 8b 44 24 04 85 c0 74 27 56 8b 74 24 0c 85 f6 74
1098da70: 1d 8d 4e 2c 51 8d 48 60 c7 46 28 00 00 00 00 e8
1098da80: 4c 01 75 ff 8b 16 8b 42 04 8b ce 5e ff e0 5e c3

LINEAR DISASSEMBLY
1098da60 <.text+0x98ca60>:
1098da60:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098da64:	85 c0                                           	test   eax,eax
1098da66:	74 27                                           	je     0x1098da8f
1098da68:	56                                              	push   esi
1098da69:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1098da6d:	85 f6                                           	test   esi,esi
1098da6f:	74 1d                                           	je     0x1098da8e
1098da71:	8d 4e 2c                                        	lea    ecx,[esi+0x2c]
1098da74:	51                                              	push   ecx
1098da75:	8d 48 60                                        	lea    ecx,[eax+0x60]
1098da78:	c7 46 28 00 00 00 00                            	mov    DWORD PTR [esi+0x28],0x0
1098da7f:	e8 4c 01 75 ff                                  	call   0x100ddbd0
1098da84:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098da86:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098da89:	8b ce                                           	mov    ecx,esi
1098da8b:	5e                                              	pop    esi
1098da8c:	ff e0                                           	jmp    eax
1098da8e:	5e                                              	pop    esi
1098da8f:	c3                                              	ret
