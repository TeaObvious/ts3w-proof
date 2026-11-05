# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997a60 (WorldWrap_SaveHeightImage)
Paired Ghidra pseudocode: 10997A60_WorldWrap_SaveHeightImage.c
Window: [0x10997a60, 0x10997a80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997a60: 8b 44 24 08 8b 4c 24 04 50 e8 62 e8 89 ff 0f b6
10997a70: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997a60 <.text+0x996a60>:
10997a60:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997a64:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997a68:	50                                              	push   eax
10997a69:	e8 62 e8 89 ff                                  	call   0x102362d0
10997a6e:	0f b6 c0                                        	movzx  eax,al
10997a71:	c3                                              	ret
10997a72:	cc                                              	int3
10997a73:	cc                                              	int3
10997a74:	cc                                              	int3
10997a75:	cc                                              	int3
10997a76:	cc                                              	int3
10997a77:	cc                                              	int3
10997a78:	cc                                              	int3
10997a79:	cc                                              	int3
10997a7a:	cc                                              	int3
10997a7b:	cc                                              	int3
10997a7c:	cc                                              	int3
10997a7d:	cc                                              	int3
10997a7e:	cc                                              	int3
10997a7f:	cc                                              	int3
