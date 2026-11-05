# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995bb0 (TrackMask_Create)
Paired Ghidra pseudocode: 10995BB0_TrackMask_Create.c
Window: [0x10995bb0, 0x10995c20) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995bb0: 6a 00 6a 00 6a 00 6a 00 68 a0 79 b9 10 6a 40 e8
10995bc0: ec 32 f8 ff 83 c4 18 85 c0 74 51 d9 44 24 08 56
10995bd0: 51 8b 4c 24 0c d9 1c 24 51 8b c8 e8 00 37 9e ff
10995be0: 8b f0 85 f6 74 34 99 89 46 08 57 b9 e3 60 32 03
10995bf0: 89 56 0c bf fa ff ff ff 89 4e 10 89 7e 14 e8 cd
10995c00: f4 f4 ff 8b 10 6a 01 8b c8 8b 42 5c 56 ff d0 8b
10995c10: 16 8b 02 8b ce ff d0 8b c6 5f 5e c3 33 c0 c3 cc

LINEAR DISASSEMBLY
10995bb0 <.text+0x994bb0>:
10995bb0:	6a 00                                           	push   0x0
10995bb2:	6a 00                                           	push   0x0
10995bb4:	6a 00                                           	push   0x0
10995bb6:	6a 00                                           	push   0x0
10995bb8:	68 a0 79 b9 10                                  	push   0x10b979a0
10995bbd:	6a 40                                           	push   0x40
10995bbf:	e8 ec 32 f8 ff                                  	call   0x10918eb0
10995bc4:	83 c4 18                                        	add    esp,0x18
10995bc7:	85 c0                                           	test   eax,eax
10995bc9:	74 51                                           	je     0x10995c1c
10995bcb:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
10995bcf:	56                                              	push   esi
10995bd0:	51                                              	push   ecx
10995bd1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10995bd5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10995bd8:	51                                              	push   ecx
10995bd9:	8b c8                                           	mov    ecx,eax
10995bdb:	e8 00 37 9e ff                                  	call   0x103792e0
10995be0:	8b f0                                           	mov    esi,eax
10995be2:	85 f6                                           	test   esi,esi
10995be4:	74 34                                           	je     0x10995c1a
10995be6:	99                                              	cdq
10995be7:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
10995bea:	57                                              	push   edi
10995beb:	b9 e3 60 32 03                                  	mov    ecx,0x33260e3
10995bf0:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
10995bf3:	bf fa ff ff ff                                  	mov    edi,0xfffffffa
10995bf8:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
10995bfb:	89 7e 14                                        	mov    DWORD PTR [esi+0x14],edi
10995bfe:	e8 cd f4 f4 ff                                  	call   0x108e50d0
10995c03:	8b 10                                           	mov    edx,DWORD PTR [eax]
10995c05:	6a 01                                           	push   0x1
10995c07:	8b c8                                           	mov    ecx,eax
10995c09:	8b 42 5c                                        	mov    eax,DWORD PTR [edx+0x5c]
10995c0c:	56                                              	push   esi
10995c0d:	ff d0                                           	call   eax
10995c0f:	8b 16                                           	mov    edx,DWORD PTR [esi]
10995c11:	8b 02                                           	mov    eax,DWORD PTR [edx]
10995c13:	8b ce                                           	mov    ecx,esi
10995c15:	ff d0                                           	call   eax
10995c17:	8b c6                                           	mov    eax,esi
10995c19:	5f                                              	pop    edi
10995c1a:	5e                                              	pop    esi
10995c1b:	c3                                              	ret
10995c1c:	33 c0                                           	xor    eax,eax
10995c1e:	c3                                              	ret
10995c1f:	cc                                              	int3
