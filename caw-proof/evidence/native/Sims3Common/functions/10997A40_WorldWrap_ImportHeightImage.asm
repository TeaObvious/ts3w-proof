# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997a40 (WorldWrap_ImportHeightImage)
Paired Ghidra pseudocode: 10997A40_WorldWrap_ImportHeightImage.c
Window: [0x10997a40, 0x10997a60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997a60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997a40: 8b 44 24 08 8b 4c 24 04 50 e8 12 c8 89 ff 0f b6
10997a50: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997a40 <.text+0x996a40>:
10997a40:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997a44:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997a48:	50                                              	push   eax
10997a49:	e8 12 c8 89 ff                                  	call   0x10234260
10997a4e:	0f b6 c0                                        	movzx  eax,al
10997a51:	c3                                              	ret
10997a52:	cc                                              	int3
10997a53:	cc                                              	int3
10997a54:	cc                                              	int3
10997a55:	cc                                              	int3
10997a56:	cc                                              	int3
10997a57:	cc                                              	int3
10997a58:	cc                                              	int3
10997a59:	cc                                              	int3
10997a5a:	cc                                              	int3
10997a5b:	cc                                              	int3
10997a5c:	cc                                              	int3
10997a5d:	cc                                              	int3
10997a5e:	cc                                              	int3
10997a5f:	cc                                              	int3
