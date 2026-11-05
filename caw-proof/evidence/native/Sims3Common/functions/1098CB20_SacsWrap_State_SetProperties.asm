# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098cb20 (SacsWrap_State_SetProperties)
Paired Ghidra pseudocode: 1098CB20_SacsWrap_State_SetProperties.c
Window: [0x1098cb20, 0x1098cb50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098cb50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098cb20: 56 8b 74 24 08 85 f6 74 11 8b 44 24 10 8b 4c 24
1098cb30: 0c 50 51 8b ce e8 36 24 c6 ff 33 c0 85 f6 74 08
1098cb40: 8b ce 5e e9 68 1e c6 ff 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098cb20 <.text+0x98bb20>:
1098cb20:	56                                              	push   esi
1098cb21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1098cb25:	85 f6                                           	test   esi,esi
1098cb27:	74 11                                           	je     0x1098cb3a
1098cb29:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098cb2d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098cb31:	50                                              	push   eax
1098cb32:	51                                              	push   ecx
1098cb33:	8b ce                                           	mov    ecx,esi
1098cb35:	e8 36 24 c6 ff                                  	call   0x105eef70
1098cb3a:	33 c0                                           	xor    eax,eax
1098cb3c:	85 f6                                           	test   esi,esi
1098cb3e:	74 08                                           	je     0x1098cb48
1098cb40:	8b ce                                           	mov    ecx,esi
1098cb42:	5e                                              	pop    esi
1098cb43:	e9 68 1e c6 ff                                  	jmp    0x105ee9b0
1098cb48:	5e                                              	pop    esi
1098cb49:	c3                                              	ret
1098cb4a:	cc                                              	int3
1098cb4b:	cc                                              	int3
1098cb4c:	cc                                              	int3
1098cb4d:	cc                                              	int3
1098cb4e:	cc                                              	int3
1098cb4f:	cc                                              	int3
