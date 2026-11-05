# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a7950 (CASUtils_TextSearchSearchImpl)
Paired Ghidra pseudocode: 103A7950_CASUtils_TextSearchSearchImpl.c
Window: [0x103a7950, 0x103a79a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a79a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a7950: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a7960: 35 74 04 b0 01 5e c3 e8 b4 37 1b 00 8b 10 8b c8
103a7970: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 d9 44 24
103a7980: 10 51 8b 4c 24 10 d9 1c 24 51 8b c8 e8 df fb ff
103a7990: ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a7950 <.text+0x3a6950>:
103a7950:	56                                              	push   esi
103a7951:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a7955:	8b c6                                           	mov    eax,esi
103a7957:	25 00 00 00 ff                                  	and    eax,0xff000000
103a795c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a7961:	74 04                                           	je     0x103a7967
103a7963:	b0 01                                           	mov    al,0x1
103a7965:	5e                                              	pop    esi
103a7966:	c3                                              	ret
103a7967:	e8 b4 37 1b 00                                  	call   0x1055b120
103a796c:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a796e:	8b c8                                           	mov    ecx,eax
103a7970:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a7976:	56                                              	push   esi
103a7977:	ff d0                                           	call   eax
103a7979:	85 c0                                           	test   eax,eax
103a797b:	74 e6                                           	je     0x103a7963
103a797d:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
103a7981:	51                                              	push   ecx
103a7982:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
103a7986:	d9 1c 24                                        	fstp   DWORD PTR [esp]
103a7989:	51                                              	push   ecx
103a798a:	8b c8                                           	mov    ecx,eax
103a798c:	e8 df fb ff ff                                  	call   0x103a7570
103a7991:	5e                                              	pop    esi
103a7992:	c3                                              	ret
103a7993:	cc                                              	int3
103a7994:	cc                                              	int3
103a7995:	cc                                              	int3
103a7996:	cc                                              	int3
103a7997:	cc                                              	int3
103a7998:	cc                                              	int3
103a7999:	cc                                              	int3
103a799a:	cc                                              	int3
103a799b:	cc                                              	int3
103a799c:	cc                                              	int3
103a799d:	cc                                              	int3
103a799e:	cc                                              	int3
103a799f:	cc                                              	int3
