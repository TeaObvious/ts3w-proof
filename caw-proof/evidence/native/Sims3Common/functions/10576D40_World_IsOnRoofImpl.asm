# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576d40 (World_IsOnRoofImpl)
Paired Ghidra pseudocode: 10576D40_World_IsOnRoofImpl.c
Window: [0x10576d40, 0x10576d70) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576d40: e8 5b 34 1b 00 85 c0 74 1f 8b 4c 24 08 8b 54 24
10576d50: 04 51 52 8b c8 e8 56 3e 1b 00 85 c0 74 0a 50 e8
10576d60: 4c 0b b5 ff 83 c4 04 c3 32 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10576d40 <.text+0x575d40>:
10576d40:	e8 5b 34 1b 00                                  	call   0x1072a1a0
10576d45:	85 c0                                           	test   eax,eax
10576d47:	74 1f                                           	je     0x10576d68
10576d49:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10576d4d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10576d51:	51                                              	push   ecx
10576d52:	52                                              	push   edx
10576d53:	8b c8                                           	mov    ecx,eax
10576d55:	e8 56 3e 1b 00                                  	call   0x1072abb0
10576d5a:	85 c0                                           	test   eax,eax
10576d5c:	74 0a                                           	je     0x10576d68
10576d5e:	50                                              	push   eax
10576d5f:	e8 4c 0b b5 ff                                  	call   0x100c78b0
10576d64:	83 c4 04                                        	add    esp,0x4
10576d67:	c3                                              	ret
10576d68:	32 c0                                           	xor    al,al
10576d6a:	c3                                              	ret
10576d6b:	cc                                              	int3
10576d6c:	cc                                              	int3
10576d6d:	cc                                              	int3
10576d6e:	cc                                              	int3
10576d6f:	cc                                              	int3
