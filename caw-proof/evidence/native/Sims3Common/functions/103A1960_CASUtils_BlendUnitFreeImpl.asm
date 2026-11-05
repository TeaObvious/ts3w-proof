# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1960 (CASUtils_BlendUnitFreeImpl)
Paired Ghidra pseudocode: 103A1960_CASUtils_BlendUnitFreeImpl.c
Window: [0x103a1960, 0x103a19a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a19a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1960: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a1970: 35 75 20 e8 a8 97 1b 00 8b 10 8b c8 8b 82 d8 00
103a1980: 00 00 56 ff d0 85 c0 74 0a 8b 10 8b c8 8b 42 04
103a1990: 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1960 <.text+0x3a0960>:
103a1960:	56                                              	push   esi
103a1961:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a1965:	8b c6                                           	mov    eax,esi
103a1967:	25 00 00 00 ff                                  	and    eax,0xff000000
103a196c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a1971:	75 20                                           	jne    0x103a1993
103a1973:	e8 a8 97 1b 00                                  	call   0x1055b120
103a1978:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a197a:	8b c8                                           	mov    ecx,eax
103a197c:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
103a1982:	56                                              	push   esi
103a1983:	ff d0                                           	call   eax
103a1985:	85 c0                                           	test   eax,eax
103a1987:	74 0a                                           	je     0x103a1993
103a1989:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a198b:	8b c8                                           	mov    ecx,eax
103a198d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
103a1990:	5e                                              	pop    esi
103a1991:	ff e0                                           	jmp    eax
103a1993:	5e                                              	pop    esi
103a1994:	c3                                              	ret
103a1995:	cc                                              	int3
103a1996:	cc                                              	int3
103a1997:	cc                                              	int3
103a1998:	cc                                              	int3
103a1999:	cc                                              	int3
103a199a:	cc                                              	int3
103a199b:	cc                                              	int3
103a199c:	cc                                              	int3
103a199d:	cc                                              	int3
103a199e:	cc                                              	int3
103a199f:	cc                                              	int3
