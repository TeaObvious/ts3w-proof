# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c100 (RoadIntersectionWrap_FlattenSlope)
Paired Ghidra pseudocode: 1098C100_RoadIntersectionWrap_FlattenSlope.c
Window: [0x1098c100, 0x1098c130) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c100: 8b 44 24 14 d9 44 24 08 8b 4c 24 10 8b 54 24 0c
1098c110: 6a 00 50 8b 44 24 0c 51 52 51 d9 1c 24 50 e8 ed
1098c120: a3 7c ff 83 c4 18 f6 d8 1b c0 f7 d8 c3 cc cc cc

LINEAR DISASSEMBLY
1098c100 <.text+0x98b100>:
1098c100:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098c104:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098c108:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098c10c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098c110:	6a 00                                           	push   0x0
1098c112:	50                                              	push   eax
1098c113:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098c117:	51                                              	push   ecx
1098c118:	52                                              	push   edx
1098c119:	51                                              	push   ecx
1098c11a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098c11d:	50                                              	push   eax
1098c11e:	e8 ed a3 7c ff                                  	call   0x10156510
1098c123:	83 c4 18                                        	add    esp,0x18
1098c126:	f6 d8                                           	neg    al
1098c128:	1b c0                                           	sbb    eax,eax
1098c12a:	f7 d8                                           	neg    eax
1098c12c:	c3                                              	ret
1098c12d:	cc                                              	int3
1098c12e:	cc                                              	int3
1098c12f:	cc                                              	int3
