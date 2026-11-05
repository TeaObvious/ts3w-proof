# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577130 (World_DeleteTravelDBResource)
Paired Ghidra pseudocode: 10577130_World_DeleteTravelDBResource.c
Window: [0x10577130, 0x10577180) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577130: 83 ec 10 53 32 db e8 85 d3 1f 00 8b 88 64 06 00
10577140: 00 85 c9 74 2f 8b 44 24 20 8b 54 24 24 89 44 24
10577150: 04 8b 44 24 18 89 44 24 0c 89 54 24 08 8b 54 24
10577160: 1c 8d 44 24 04 50 89 54 24 14 e8 51 38 24 00 5b
10577170: 83 c4 10 c3 8a c3 5b 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10577130 <.text+0x576130>:
10577130:	83 ec 10                                        	sub    esp,0x10
10577133:	53                                              	push   ebx
10577134:	32 db                                           	xor    bl,bl
10577136:	e8 85 d3 1f 00                                  	call   0x107744c0
1057713b:	8b 88 64 06 00 00                               	mov    ecx,DWORD PTR [eax+0x664]
10577141:	85 c9                                           	test   ecx,ecx
10577143:	74 2f                                           	je     0x10577174
10577145:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10577149:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1057714d:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10577151:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10577155:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10577159:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1057715d:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10577161:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10577165:	50                                              	push   eax
10577166:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1057716a:	e8 51 38 24 00                                  	call   0x107ba9c0
1057716f:	5b                                              	pop    ebx
10577170:	83 c4 10                                        	add    esp,0x10
10577173:	c3                                              	ret
10577174:	8a c3                                           	mov    al,bl
10577176:	5b                                              	pop    ebx
10577177:	83 c4 10                                        	add    esp,0x10
1057717a:	c3                                              	ret
1057717b:	cc                                              	int3
1057717c:	cc                                              	int3
1057717d:	cc                                              	int3
1057717e:	cc                                              	int3
1057717f:	cc                                              	int3
