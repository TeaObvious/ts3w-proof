# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c0c0 (RoadIntersectionWrap_Flatten)
Paired Ghidra pseudocode: 1098C0C0_RoadIntersectionWrap_Flatten.c
Window: [0x1098c0c0, 0x1098c100) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c0c0: 8b 44 24 18 d9 44 24 0c 8b 4c 24 14 8b 54 24 10
1098c0d0: 6a 00 50 8b 44 24 0c 51 52 83 ec 08 d9 5c 24 04
1098c0e0: d9 44 24 20 d9 1c 24 50 e8 33 94 7c ff 83 c4 1c
1098c0f0: f6 d8 1b c0 f7 d8 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c0c0 <.text+0x98b0c0>:
1098c0c0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098c0c4:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1098c0c8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098c0cc:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1098c0d0:	6a 00                                           	push   0x0
1098c0d2:	50                                              	push   eax
1098c0d3:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098c0d7:	51                                              	push   ecx
1098c0d8:	52                                              	push   edx
1098c0d9:	83 ec 08                                        	sub    esp,0x8
1098c0dc:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1098c0e0:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
1098c0e4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098c0e7:	50                                              	push   eax
1098c0e8:	e8 33 94 7c ff                                  	call   0x10155520
1098c0ed:	83 c4 1c                                        	add    esp,0x1c
1098c0f0:	f6 d8                                           	neg    al
1098c0f2:	1b c0                                           	sbb    eax,eax
1098c0f4:	f7 d8                                           	neg    eax
1098c0f6:	c3                                              	ret
1098c0f7:	cc                                              	int3
1098c0f8:	cc                                              	int3
1098c0f9:	cc                                              	int3
1098c0fa:	cc                                              	int3
1098c0fb:	cc                                              	int3
1098c0fc:	cc                                              	int3
1098c0fd:	cc                                              	int3
1098c0fe:	cc                                              	int3
1098c0ff:	cc                                              	int3
