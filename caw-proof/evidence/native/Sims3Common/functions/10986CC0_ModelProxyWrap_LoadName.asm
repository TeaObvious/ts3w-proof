# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986cc0 (ModelProxyWrap_LoadName)
Paired Ghidra pseudocode: 10986CC0_ModelProxyWrap_LoadName.c
Window: [0x10986cc0, 0x10986ce0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986cc0: 8b 44 24 0c 8b 4c 24 08 50 51 8b 4c 24 0c e8 6d
10986cd0: c8 b4 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986cc0 <.text+0x985cc0>:
10986cc0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10986cc4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10986cc8:	50                                              	push   eax
10986cc9:	51                                              	push   ecx
10986cca:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10986cce:	e8 6d c8 b4 ff                                  	call   0x104d3540
10986cd3:	c3                                              	ret
10986cd4:	cc                                              	int3
10986cd5:	cc                                              	int3
10986cd6:	cc                                              	int3
10986cd7:	cc                                              	int3
10986cd8:	cc                                              	int3
10986cd9:	cc                                              	int3
10986cda:	cc                                              	int3
10986cdb:	cc                                              	int3
10986cdc:	cc                                              	int3
10986cdd:	cc                                              	int3
10986cde:	cc                                              	int3
10986cdf:	cc                                              	int3
