# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993f30 (AnimationWrap_DisposeClipIkInfo)
Paired Ghidra pseudocode: 10993F30_AnimationWrap_DisposeClipIkInfo.c
Window: [0x10993f30, 0x10993f60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993f30: 8b 4c 24 04 85 c9 74 08 8b 01 8b 10 6a 01 ff d2
10993f40: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
10993f50: b8 00 77 b9 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993f30 <.text+0x992f30>:
10993f30:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993f34:	85 c9                                           	test   ecx,ecx
10993f36:	74 08                                           	je     0x10993f40
10993f38:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10993f3a:	8b 10                                           	mov    edx,DWORD PTR [eax]
10993f3c:	6a 01                                           	push   0x1
10993f3e:	ff d2                                           	call   edx
10993f40:	c3                                              	ret
10993f41:	cc                                              	int3
10993f42:	cc                                              	int3
10993f43:	cc                                              	int3
10993f44:	cc                                              	int3
10993f45:	cc                                              	int3
10993f46:	cc                                              	int3
10993f47:	cc                                              	int3
10993f48:	cc                                              	int3
10993f49:	cc                                              	int3
10993f4a:	cc                                              	int3
10993f4b:	cc                                              	int3
10993f4c:	cc                                              	int3
10993f4d:	cc                                              	int3
10993f4e:	cc                                              	int3
10993f4f:	cc                                              	int3
10993f50:	b8 00 77 b9 10                                  	mov    eax,0x10b97700
10993f55:	c3                                              	ret
10993f56:	cc                                              	int3
10993f57:	cc                                              	int3
10993f58:	cc                                              	int3
10993f59:	cc                                              	int3
10993f5a:	cc                                              	int3
10993f5b:	cc                                              	int3
10993f5c:	cc                                              	int3
10993f5d:	cc                                              	int3
10993f5e:	cc                                              	int3
10993f5f:	cc                                              	int3
