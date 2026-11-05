# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10531bd0 (Console_GetCursorPositionImpl)
Paired Ghidra pseudocode: 10531BD0_Console_GetCursorPositionImpl.c
Window: [0x10531bd0, 0x10531c10) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10531c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10531bd0: 83 ec 0c 0f 57 c0 8b 44 24 10 f3 0f 11 04 24 8b
10531be0: 0c 24 89 08 f3 0f 11 44 24 04 8b 54 24 04 f3 0f
10531bf0: 11 44 24 08 8b 4c 24 08 89 50 04 89 48 08 83 c4
10531c00: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10531bd0 <.text+0x530bd0>:
10531bd0:	83 ec 0c                                        	sub    esp,0xc
10531bd3:	0f 57 c0                                        	xorps  xmm0,xmm0
10531bd6:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10531bda:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10531bdf:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
10531be2:	89 08                                           	mov    DWORD PTR [eax],ecx
10531be4:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10531bea:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10531bee:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10531bf4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10531bf8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10531bfb:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10531bfe:	83 c4 0c                                        	add    esp,0xc
10531c01:	c3                                              	ret
10531c02:	cc                                              	int3
10531c03:	cc                                              	int3
10531c04:	cc                                              	int3
10531c05:	cc                                              	int3
10531c06:	cc                                              	int3
10531c07:	cc                                              	int3
10531c08:	cc                                              	int3
10531c09:	cc                                              	int3
10531c0a:	cc                                              	int3
10531c0b:	cc                                              	int3
10531c0c:	cc                                              	int3
10531c0d:	cc                                              	int3
10531c0e:	cc                                              	int3
10531c0f:	cc                                              	int3
