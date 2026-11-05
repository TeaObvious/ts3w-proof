# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098dc30 (SacsWrap_StateMachine_AddState)
Paired Ghidra pseudocode: 1098DC30_SacsWrap_StateMachine_AddState.c
Window: [0x1098dc30, 0x1098dc60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098dc60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098dc30: 8b 4c 24 04 85 c9 74 18 8b 44 24 08 85 c0 74 10
1098dc40: 50 e8 ea 15 c6 ff f6 d8 1b c0 f7 d8 83 e8 01 c3
1098dc50: 83 c8 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098dc30 <.text+0x98cc30>:
1098dc30:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098dc34:	85 c9                                           	test   ecx,ecx
1098dc36:	74 18                                           	je     0x1098dc50
1098dc38:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098dc3c:	85 c0                                           	test   eax,eax
1098dc3e:	74 10                                           	je     0x1098dc50
1098dc40:	50                                              	push   eax
1098dc41:	e8 ea 15 c6 ff                                  	call   0x105ef230
1098dc46:	f6 d8                                           	neg    al
1098dc48:	1b c0                                           	sbb    eax,eax
1098dc4a:	f7 d8                                           	neg    eax
1098dc4c:	83 e8 01                                        	sub    eax,0x1
1098dc4f:	c3                                              	ret
1098dc50:	83 c8 ff                                        	or     eax,0xffffffff
1098dc53:	c3                                              	ret
1098dc54:	cc                                              	int3
1098dc55:	cc                                              	int3
1098dc56:	cc                                              	int3
1098dc57:	cc                                              	int3
1098dc58:	cc                                              	int3
1098dc59:	cc                                              	int3
1098dc5a:	cc                                              	int3
1098dc5b:	cc                                              	int3
1098dc5c:	cc                                              	int3
1098dc5d:	cc                                              	int3
1098dc5e:	cc                                              	int3
1098dc5f:	cc                                              	int3
