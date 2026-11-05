# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993a00 (TextureCompositorResourceWrap_RenderBitmap)
Paired Ghidra pseudocode: 10993A00_TextureCompositorResourceWrap_RenderBitmap.c
Window: [0x10993a00, 0x10993a30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993a00: 8b 4c 24 04 85 c9 74 19 8b 44 24 14 8b 54 24 10
10993a10: 50 8b 44 24 10 52 8b 54 24 10 50 52 e8 5f d1 a6
10993a20: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993a00 <.text+0x992a00>:
10993a00:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993a04:	85 c9                                           	test   ecx,ecx
10993a06:	74 19                                           	je     0x10993a21
10993a08:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10993a0c:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10993a10:	50                                              	push   eax
10993a11:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10993a15:	52                                              	push   edx
10993a16:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10993a1a:	50                                              	push   eax
10993a1b:	52                                              	push   edx
10993a1c:	e8 5f d1 a6 ff                                  	call   0x10400b80
10993a21:	c3                                              	ret
10993a22:	cc                                              	int3
10993a23:	cc                                              	int3
10993a24:	cc                                              	int3
10993a25:	cc                                              	int3
10993a26:	cc                                              	int3
10993a27:	cc                                              	int3
10993a28:	cc                                              	int3
10993a29:	cc                                              	int3
10993a2a:	cc                                              	int3
10993a2b:	cc                                              	int3
10993a2c:	cc                                              	int3
10993a2d:	cc                                              	int3
10993a2e:	cc                                              	int3
10993a2f:	cc                                              	int3
