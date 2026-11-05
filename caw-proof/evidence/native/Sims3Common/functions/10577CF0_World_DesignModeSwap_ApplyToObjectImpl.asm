# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577cf0 (World_DesignModeSwap_ApplyToObjectImpl)
Paired Ghidra pseudocode: 10577CF0_World_DesignModeSwap_ApplyToObjectImpl.c
Window: [0x10577cf0, 0x10577d30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577cf0: e8 2b 34 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
10577d00: ff 81 fa 00 00 00 45 75 18 8b 10 51 8b c8 8b 82
10577d10: cc 00 00 00 ff d0 85 c0 74 07 8b c8 e9 9f 7d aa
10577d20: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577cf0 <.text+0x576cf0>:
10577cf0:	e8 2b 34 fe ff                                  	call   0x1055b120
10577cf5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10577cf9:	8b d1                                           	mov    edx,ecx
10577cfb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577d01:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
10577d07:	75 18                                           	jne    0x10577d21
10577d09:	8b 10                                           	mov    edx,DWORD PTR [eax]
10577d0b:	51                                              	push   ecx
10577d0c:	8b c8                                           	mov    ecx,eax
10577d0e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577d14:	ff d0                                           	call   eax
10577d16:	85 c0                                           	test   eax,eax
10577d18:	74 07                                           	je     0x10577d21
10577d1a:	8b c8                                           	mov    ecx,eax
10577d1c:	e9 9f 7d aa ff                                  	jmp    0x1001fac0
10577d21:	c3                                              	ret
10577d22:	cc                                              	int3
10577d23:	cc                                              	int3
10577d24:	cc                                              	int3
10577d25:	cc                                              	int3
10577d26:	cc                                              	int3
10577d27:	cc                                              	int3
10577d28:	cc                                              	int3
10577d29:	cc                                              	int3
10577d2a:	cc                                              	int3
10577d2b:	cc                                              	int3
10577d2c:	cc                                              	int3
10577d2d:	cc                                              	int3
10577d2e:	cc                                              	int3
10577d2f:	cc                                              	int3
