# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ca60 (SacsWrap_StateMachine_SetNamespaceMap)
Paired Ghidra pseudocode: 1098CA60_SacsWrap_StateMachine_SetNamespaceMap.c
Window: [0x1098ca60, 0x1098ca80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ca80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ca60: 8b 4c 24 04 85 c9 74 14 8b 44 24 10 8b 54 24 0c
1098ca70: 50 8b 44 24 0c 52 50 e8 44 43 c6 ff c3 cc cc cc

LINEAR DISASSEMBLY
1098ca60 <.text+0x98ba60>:
1098ca60:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ca64:	85 c9                                           	test   ecx,ecx
1098ca66:	74 14                                           	je     0x1098ca7c
1098ca68:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098ca6c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098ca70:	50                                              	push   eax
1098ca71:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098ca75:	52                                              	push   edx
1098ca76:	50                                              	push   eax
1098ca77:	e8 44 43 c6 ff                                  	call   0x105f0dc0
1098ca7c:	c3                                              	ret
1098ca7d:	cc                                              	int3
1098ca7e:	cc                                              	int3
1098ca7f:	cc                                              	int3
