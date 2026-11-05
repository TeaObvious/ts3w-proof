# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c9c0 (SacsWrap_StateMachine_SetName)
Paired Ghidra pseudocode: 1098C9C0_SacsWrap_StateMachine_SetName.c
Window: [0x1098c9c0, 0x1098c9e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c9e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c9c0: 8b 4c 24 04 85 c9 74 0e 8b 44 24 08 85 c0 74 06
1098c9d0: 50 e8 0a 21 c6 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c9c0 <.text+0x98b9c0>:
1098c9c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c9c4:	85 c9                                           	test   ecx,ecx
1098c9c6:	74 0e                                           	je     0x1098c9d6
1098c9c8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098c9cc:	85 c0                                           	test   eax,eax
1098c9ce:	74 06                                           	je     0x1098c9d6
1098c9d0:	50                                              	push   eax
1098c9d1:	e8 0a 21 c6 ff                                  	call   0x105eeae0
1098c9d6:	c3                                              	ret
1098c9d7:	cc                                              	int3
1098c9d8:	cc                                              	int3
1098c9d9:	cc                                              	int3
1098c9da:	cc                                              	int3
1098c9db:	cc                                              	int3
1098c9dc:	cc                                              	int3
1098c9dd:	cc                                              	int3
1098c9de:	cc                                              	int3
1098c9df:	cc                                              	int3
