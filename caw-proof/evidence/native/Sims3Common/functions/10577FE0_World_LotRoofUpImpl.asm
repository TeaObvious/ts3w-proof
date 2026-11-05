# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577fe0 (World_LotRoofUpImpl)
Paired Ghidra pseudocode: 10577FE0_World_LotRoofUpImpl.c
Window: [0x10577fe0, 0x10578010) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10578010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577fe0: 8b 0d c4 00 c7 10 85 c9 74 1c 8b 44 24 08 8b 54
10577ff0: 24 04 6a 00 50 52 e8 15 f0 cb ff 85 c0 74 07 8b
10578000: c8 e9 aa ee b0 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577fe0 <.text+0x576fe0>:
10577fe0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577fe6:	85 c9                                           	test   ecx,ecx
10577fe8:	74 1c                                           	je     0x10578006
10577fea:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10577fee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10577ff2:	6a 00                                           	push   0x0
10577ff4:	50                                              	push   eax
10577ff5:	52                                              	push   edx
10577ff6:	e8 15 f0 cb ff                                  	call   0x10237010
10577ffb:	85 c0                                           	test   eax,eax
10577ffd:	74 07                                           	je     0x10578006
10577fff:	8b c8                                           	mov    ecx,eax
10578001:	e9 aa ee b0 ff                                  	jmp    0x10086eb0
10578006:	c3                                              	ret
10578007:	cc                                              	int3
10578008:	cc                                              	int3
10578009:	cc                                              	int3
1057800a:	cc                                              	int3
1057800b:	cc                                              	int3
1057800c:	cc                                              	int3
1057800d:	cc                                              	int3
1057800e:	cc                                              	int3
1057800f:	cc                                              	int3
