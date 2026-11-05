# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c980 (SacsWrap_AddRef)
Paired Ghidra pseudocode: 1098C980_SacsWrap_AddRef.c
Window: [0x1098c980, 0x1098c9a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c9a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c980: 83 3d a0 d5 c7 10 00 74 0e 8b 4c 24 04 85 c9 74
1098c990: 06 8b 01 8b 10 ff e2 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c980 <.text+0x98b980>:
1098c980:	83 3d a0 d5 c7 10 00                            	cmp    DWORD PTR ds:0x10c7d5a0,0x0
1098c987:	74 0e                                           	je     0x1098c997
1098c989:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098c98d:	85 c9                                           	test   ecx,ecx
1098c98f:	74 06                                           	je     0x1098c997
1098c991:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098c993:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098c995:	ff e2                                           	jmp    edx
1098c997:	c3                                              	ret
1098c998:	cc                                              	int3
1098c999:	cc                                              	int3
1098c99a:	cc                                              	int3
1098c99b:	cc                                              	int3
1098c99c:	cc                                              	int3
1098c99d:	cc                                              	int3
1098c99e:	cc                                              	int3
1098c99f:	cc                                              	int3
