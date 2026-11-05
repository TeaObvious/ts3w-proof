# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993810 (TextureBuilderWrap_BeginLoading)
Paired Ghidra pseudocode: 10993810_TextureBuilderWrap_BeginLoading.c
Window: [0x10993810, 0x10993840) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993810: 56 8b 74 24 08 8b ce e8 64 e5 a5 ff 84 c0 75 18
10993820: 8b ce e8 69 e5 a5 ff 84 c0 75 0d 6a 01 6a 01 6a
10993830: 01 8b ce e8 b8 2a a6 ff 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993810 <.text+0x992810>:
10993810:	56                                              	push   esi
10993811:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10993815:	8b ce                                           	mov    ecx,esi
10993817:	e8 64 e5 a5 ff                                  	call   0x103f1d80
1099381c:	84 c0                                           	test   al,al
1099381e:	75 18                                           	jne    0x10993838
10993820:	8b ce                                           	mov    ecx,esi
10993822:	e8 69 e5 a5 ff                                  	call   0x103f1d90
10993827:	84 c0                                           	test   al,al
10993829:	75 0d                                           	jne    0x10993838
1099382b:	6a 01                                           	push   0x1
1099382d:	6a 01                                           	push   0x1
1099382f:	6a 01                                           	push   0x1
10993831:	8b ce                                           	mov    ecx,esi
10993833:	e8 b8 2a a6 ff                                  	call   0x103f62f0
10993838:	5e                                              	pop    esi
10993839:	c3                                              	ret
1099383a:	cc                                              	int3
1099383b:	cc                                              	int3
1099383c:	cc                                              	int3
1099383d:	cc                                              	int3
1099383e:	cc                                              	int3
1099383f:	cc                                              	int3
