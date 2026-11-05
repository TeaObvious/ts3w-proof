# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536930 (Objects_DoPreLeavingValidSpatialConfiguration)
Paired Ghidra pseudocode: 10536930_Objects_DoPreLeavingValidSpatialConfiguration.c
Window: [0x10536930, 0x10536970) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536930: e8 6b 38 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10536940: c8 e8 6a 42 1f 00 85 c0 74 19 8b 0d 08 04 c7 10
10536950: 51 8b c8 e8 48 04 1f 00 85 c0 74 07 8b c8 e9 ad
10536960: 96 d2 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536930 <.text+0x535930>:
10536930:	e8 6b 38 1f 00                                  	call   0x1072a1a0
10536935:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536939:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053693d:	51                                              	push   ecx
1053693e:	52                                              	push   edx
1053693f:	8b c8                                           	mov    ecx,eax
10536941:	e8 6a 42 1f 00                                  	call   0x1072abb0
10536946:	85 c0                                           	test   eax,eax
10536948:	74 19                                           	je     0x10536963
1053694a:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
10536950:	51                                              	push   ecx
10536951:	8b c8                                           	mov    ecx,eax
10536953:	e8 48 04 1f 00                                  	call   0x10726da0
10536958:	85 c0                                           	test   eax,eax
1053695a:	74 07                                           	je     0x10536963
1053695c:	8b c8                                           	mov    ecx,eax
1053695e:	e9 ad 96 d2 ff                                  	jmp    0x10260010
10536963:	c3                                              	ret
10536964:	cc                                              	int3
10536965:	cc                                              	int3
10536966:	cc                                              	int3
10536967:	cc                                              	int3
10536968:	cc                                              	int3
10536969:	cc                                              	int3
1053696a:	cc                                              	int3
1053696b:	cc                                              	int3
1053696c:	cc                                              	int3
1053696d:	cc                                              	int3
1053696e:	cc                                              	int3
1053696f:	cc                                              	int3
