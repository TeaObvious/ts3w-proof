# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548220 (Route_IsPointRoutable)
Paired Ghidra pseudocode: 10548220_Route_IsPointRoutable.c
Window: [0x10548220, 0x10548250) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548220: 8b 4c 24 08 8b 54 24 0c 83 ec 0c 8b c4 89 08 8b
10548230: 4c 24 1c 89 50 04 8b 54 24 10 52 89 48 08 e8 ed
10548240: ca ff ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548220 <.text+0x547220>:
10548220:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10548224:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10548228:	83 ec 0c                                        	sub    esp,0xc
1054822b:	8b c4                                           	mov    eax,esp
1054822d:	89 08                                           	mov    DWORD PTR [eax],ecx
1054822f:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10548233:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10548236:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1054823a:	52                                              	push   edx
1054823b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1054823e:	e8 ed ca ff ff                                  	call   0x10544d30
10548243:	83 c4 10                                        	add    esp,0x10
10548246:	c3                                              	ret
10548247:	cc                                              	int3
10548248:	cc                                              	int3
10548249:	cc                                              	int3
1054824a:	cc                                              	int3
1054824b:	cc                                              	int3
1054824c:	cc                                              	int3
1054824d:	cc                                              	int3
1054824e:	cc                                              	int3
1054824f:	cc                                              	int3
