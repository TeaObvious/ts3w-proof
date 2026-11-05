# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997f50 (WorldWrap_AddPond)
Paired Ghidra pseudocode: 10997F50_WorldWrap_AddPond.c
Window: [0x10997f50, 0x10997f70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997f50: 8b 44 24 08 8b 4c 24 04 50 e8 92 2e 8a ff f6 d8
10997f60: 1b c0 f7 d8 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997f50 <.text+0x996f50>:
10997f50:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997f54:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997f58:	50                                              	push   eax
10997f59:	e8 92 2e 8a ff                                  	call   0x1023adf0
10997f5e:	f6 d8                                           	neg    al
10997f60:	1b c0                                           	sbb    eax,eax
10997f62:	f7 d8                                           	neg    eax
10997f64:	c3                                              	ret
10997f65:	cc                                              	int3
10997f66:	cc                                              	int3
10997f67:	cc                                              	int3
10997f68:	cc                                              	int3
10997f69:	cc                                              	int3
10997f6a:	cc                                              	int3
10997f6b:	cc                                              	int3
10997f6c:	cc                                              	int3
10997f6d:	cc                                              	int3
10997f6e:	cc                                              	int3
10997f6f:	cc                                              	int3
