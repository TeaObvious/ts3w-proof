# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c9b0 (SacsWrap_StateMachine_GetName)
Paired Ghidra pseudocode: 1098C9B0_SacsWrap_StateMachine_GetName.c
Window: [0x1098c9b0, 0x1098c9c0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c9c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c9b0: 8b 4c 24 04 85 c9 74 05 e9 03 21 c6 ff 33 c0 c3

LINEAR DISASSEMBLY
1098c9b0 <.text+0x98b9b0>:
1098c9b0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c9b4:	85 c9                                           	test   ecx,ecx
1098c9b6:	74 05                                           	je     0x1098c9bd
1098c9b8:	e9 03 21 c6 ff                                  	jmp    0x105eeac0
1098c9bd:	33 c0                                           	xor    eax,eax
1098c9bf:	c3                                              	ret
