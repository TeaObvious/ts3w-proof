# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576bd0 (World_RegenImposter)
Paired Ghidra pseudocode: 10576BD0_World_RegenImposter.c
Window: [0x10576bd0, 0x10576c10) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576bd0: 56 8b 35 c4 00 c7 10 85 f6 74 27 8b 44 24 0c 8b
10576be0: 4c 24 08 6a 00 50 51 8b ce e8 22 04 cc ff 85 c0
10576bf0: 74 07 8b c8 e8 c7 18 b1 ff 6a 01 8b ce e8 5e cb
10576c00: cb ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10576bd0 <.text+0x575bd0>:
10576bd0:	56                                              	push   esi
10576bd1:	8b 35 c4 00 c7 10                               	mov    esi,DWORD PTR ds:0x10c700c4
10576bd7:	85 f6                                           	test   esi,esi
10576bd9:	74 27                                           	je     0x10576c02
10576bdb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10576bdf:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10576be3:	6a 00                                           	push   0x0
10576be5:	50                                              	push   eax
10576be6:	51                                              	push   ecx
10576be7:	8b ce                                           	mov    ecx,esi
10576be9:	e8 22 04 cc ff                                  	call   0x10237010
10576bee:	85 c0                                           	test   eax,eax
10576bf0:	74 07                                           	je     0x10576bf9
10576bf2:	8b c8                                           	mov    ecx,eax
10576bf4:	e8 c7 18 b1 ff                                  	call   0x100884c0
10576bf9:	6a 01                                           	push   0x1
10576bfb:	8b ce                                           	mov    ecx,esi
10576bfd:	e8 5e cb cb ff                                  	call   0x10233760
10576c02:	5e                                              	pop    esi
10576c03:	c3                                              	ret
10576c04:	cc                                              	int3
10576c05:	cc                                              	int3
10576c06:	cc                                              	int3
10576c07:	cc                                              	int3
10576c08:	cc                                              	int3
10576c09:	cc                                              	int3
10576c0a:	cc                                              	int3
10576c0b:	cc                                              	int3
10576c0c:	cc                                              	int3
10576c0d:	cc                                              	int3
10576c0e:	cc                                              	int3
10576c0f:	cc                                              	int3
