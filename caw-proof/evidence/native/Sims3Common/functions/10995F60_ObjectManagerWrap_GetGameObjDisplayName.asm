# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995f60 (ObjectManagerWrap_GetGameObjDisplayName)
Paired Ghidra pseudocode: 10995F60_ObjectManagerWrap_GetGameObjDisplayName.c
Window: [0x10995f60, 0x10995f80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995f60: 8b 4c 24 04 85 c9 75 03 33 c0 c3 8b 44 24 08 50
10995f70: e8 db 05 8b ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995f60 <.text+0x994f60>:
10995f60:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995f64:	85 c9                                           	test   ecx,ecx
10995f66:	75 03                                           	jne    0x10995f6b
10995f68:	33 c0                                           	xor    eax,eax
10995f6a:	c3                                              	ret
10995f6b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10995f6f:	50                                              	push   eax
10995f70:	e8 db 05 8b ff                                  	call   0x10246550
10995f75:	c3                                              	ret
10995f76:	cc                                              	int3
10995f77:	cc                                              	int3
10995f78:	cc                                              	int3
10995f79:	cc                                              	int3
10995f7a:	cc                                              	int3
10995f7b:	cc                                              	int3
10995f7c:	cc                                              	int3
10995f7d:	cc                                              	int3
10995f7e:	cc                                              	int3
10995f7f:	cc                                              	int3
