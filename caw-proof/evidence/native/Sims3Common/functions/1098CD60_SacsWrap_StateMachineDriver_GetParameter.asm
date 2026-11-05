# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cd60 (SacsWrap_StateMachineDriver_GetParameter)
Paired Ghidra pseudocode: 1098CD60_SacsWrap_StateMachineDriver_GetParameter.c
Window: [0x1098cd60, 0x1098cd80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cd80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cd60: 8b 4c 24 04 85 c9 74 11 8b 44 24 08 85 c0 74 09
1098cd70: 6a 00 50 e8 88 53 c6 ff c3 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
1098cd60 <.text+0x98bd60>:
1098cd60:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cd64:	85 c9                                           	test   ecx,ecx
1098cd66:	74 11                                           	je     0x1098cd79
1098cd68:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098cd6c:	85 c0                                           	test   eax,eax
1098cd6e:	74 09                                           	je     0x1098cd79
1098cd70:	6a 00                                           	push   0x0
1098cd72:	50                                              	push   eax
1098cd73:	e8 88 53 c6 ff                                  	call   0x105f2100
1098cd78:	c3                                              	ret
1098cd79:	33 c0                                           	xor    eax,eax
1098cd7b:	c3                                              	ret
1098cd7c:	cc                                              	int3
1098cd7d:	cc                                              	int3
1098cd7e:	cc                                              	int3
1098cd7f:	cc                                              	int3
