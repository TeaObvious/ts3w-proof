# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654b20 (Audio_SoundFinishedCallbackImpl)
Paired Ghidra pseudocode: 10654B20_Audio_SoundFinishedCallbackImpl.c
Window: [0x10654b20, 0x10654b50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654b20: a1 a0 d4 c7 10 85 c0 74 19 8d 88 30 84 fd ff 85
10654b30: c9 74 0f 8b 44 24 08 8b 54 24 04 50 52 e8 0e 2f
10654b40: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10654b20 <.text+0x653b20>:
10654b20:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
10654b25:	85 c0                                           	test   eax,eax
10654b27:	74 19                                           	je     0x10654b42
10654b29:	8d 88 30 84 fd ff                               	lea    ecx,[eax-0x27bd0]
10654b2f:	85 c9                                           	test   ecx,ecx
10654b31:	74 0f                                           	je     0x10654b42
10654b33:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10654b37:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10654b3b:	50                                              	push   eax
10654b3c:	52                                              	push   edx
10654b3d:	e8 0e 2f 00 00                                  	call   0x10657a50
10654b42:	c3                                              	ret
10654b43:	cc                                              	int3
10654b44:	cc                                              	int3
10654b45:	cc                                              	int3
10654b46:	cc                                              	int3
10654b47:	cc                                              	int3
10654b48:	cc                                              	int3
10654b49:	cc                                              	int3
10654b4a:	cc                                              	int3
10654b4b:	cc                                              	int3
10654b4c:	cc                                              	int3
10654b4d:	cc                                              	int3
10654b4e:	cc                                              	int3
10654b4f:	cc                                              	int3
