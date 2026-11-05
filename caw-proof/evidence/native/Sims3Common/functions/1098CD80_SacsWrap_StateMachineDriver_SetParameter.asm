# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cd80 (SacsWrap_StateMachineDriver_SetParameter)
Paired Ghidra pseudocode: 1098CD80_SacsWrap_StateMachineDriver_SetParameter.c
Window: [0x1098cd80, 0x1098cda0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cda0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cd80: 8b 4c 24 04 85 c9 74 0f 8b 44 24 0c 8b 54 24 08
1098cd90: 50 52 e8 09 70 c6 ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cd80 <.text+0x98bd80>:
1098cd80:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098cd84:	85 c9                                           	test   ecx,ecx
1098cd86:	74 0f                                           	je     0x1098cd97
1098cd88:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098cd8c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098cd90:	50                                              	push   eax
1098cd91:	52                                              	push   edx
1098cd92:	e8 09 70 c6 ff                                  	call   0x105f3da0
1098cd97:	c3                                              	ret
1098cd98:	cc                                              	int3
1098cd99:	cc                                              	int3
1098cd9a:	cc                                              	int3
1098cd9b:	cc                                              	int3
1098cd9c:	cc                                              	int3
1098cd9d:	cc                                              	int3
1098cd9e:	cc                                              	int3
1098cd9f:	cc                                              	int3
