# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995f10 (ObjectManagerWrap_Reload)
Paired Ghidra pseudocode: 10995F10_ObjectManagerWrap_Reload.c
Window: [0x10995f10, 0x10995f30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995f10: 8b 4c 24 04 85 c9 75 03 33 c0 c3 8b 01 8b 50 20
10995f20: ff d2 f6 d8 1b c0 f7 d8 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995f10 <.text+0x994f10>:
10995f10:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995f14:	85 c9                                           	test   ecx,ecx
10995f16:	75 03                                           	jne    0x10995f1b
10995f18:	33 c0                                           	xor    eax,eax
10995f1a:	c3                                              	ret
10995f1b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10995f1d:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
10995f20:	ff d2                                           	call   edx
10995f22:	f6 d8                                           	neg    al
10995f24:	1b c0                                           	sbb    eax,eax
10995f26:	f7 d8                                           	neg    eax
10995f28:	c3                                              	ret
10995f29:	cc                                              	int3
10995f2a:	cc                                              	int3
10995f2b:	cc                                              	int3
10995f2c:	cc                                              	int3
10995f2d:	cc                                              	int3
10995f2e:	cc                                              	int3
10995f2f:	cc                                              	int3
