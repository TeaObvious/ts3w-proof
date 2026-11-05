# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10985ad0 (GfxDevice_BeginScene)
Paired Ghidra pseudocode: 10985AD0_GfxDevice_BeginScene.c
Window: [0x10985ad0, 0x10985af0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10985af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10985ad0: 8b 0d e8 35 c7 10 85 c9 74 0f e8 71 6d a8 ff 84
10985ae0: c0 74 06 b8 01 00 00 00 c3 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
10985ad0 <.text+0x984ad0>:
10985ad0:	8b 0d e8 35 c7 10                               	mov    ecx,DWORD PTR ds:0x10c735e8
10985ad6:	85 c9                                           	test   ecx,ecx
10985ad8:	74 0f                                           	je     0x10985ae9
10985ada:	e8 71 6d a8 ff                                  	call   0x1040c850
10985adf:	84 c0                                           	test   al,al
10985ae1:	74 06                                           	je     0x10985ae9
10985ae3:	b8 01 00 00 00                                  	mov    eax,0x1
10985ae8:	c3                                              	ret
10985ae9:	33 c0                                           	xor    eax,eax
10985aeb:	c3                                              	ret
10985aec:	cc                                              	int3
10985aed:	cc                                              	int3
10985aee:	cc                                              	int3
10985aef:	cc                                              	int3
