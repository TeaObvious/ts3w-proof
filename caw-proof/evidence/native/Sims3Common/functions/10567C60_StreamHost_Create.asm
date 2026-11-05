# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567c60 (StreamHost_Create)
Paired Ghidra pseudocode: 10567C60_StreamHost_Create.c
Window: [0x10567c60, 0x10567ce0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567c60: 56 6a 00 6a 00 6a 00 6a 00 68 18 04 b2 10 6a 2c
10567c70: e8 3b 12 3b 00 83 c4 18 85 c0 74 5d 6a 00 6a 00
10567c80: 6a 00 8b c8 e8 07 c4 3a 00 8b f0 85 f6 74 4a 8b
10567c90: 06 8b 50 04 8b ce ff d2 d9 e8 57 51 d9 1c 24 6a
10567ca0: 01 8b ce e8 c8 bd 3a 00 e8 73 34 ff ff 8b 10 6a
10567cb0: 60 8b c8 8b 82 c8 00 00 00 56 ff d0 8b f8 85 ff
10567cc0: 74 09 8b 16 8b 42 04 8b ce ff d0 8b 16 8b 42 08
10567cd0: 8b ce ff d0 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
10567c60 <.text+0x566c60>:
10567c60:	56                                              	push   esi
10567c61:	6a 00                                           	push   0x0
10567c63:	6a 00                                           	push   0x0
10567c65:	6a 00                                           	push   0x0
10567c67:	6a 00                                           	push   0x0
10567c69:	68 18 04 b2 10                                  	push   0x10b20418
10567c6e:	6a 2c                                           	push   0x2c
10567c70:	e8 3b 12 3b 00                                  	call   0x10918eb0
10567c75:	83 c4 18                                        	add    esp,0x18
10567c78:	85 c0                                           	test   eax,eax
10567c7a:	74 5d                                           	je     0x10567cd9
10567c7c:	6a 00                                           	push   0x0
10567c7e:	6a 00                                           	push   0x0
10567c80:	6a 00                                           	push   0x0
10567c82:	8b c8                                           	mov    ecx,eax
10567c84:	e8 07 c4 3a 00                                  	call   0x10914090
10567c89:	8b f0                                           	mov    esi,eax
10567c8b:	85 f6                                           	test   esi,esi
10567c8d:	74 4a                                           	je     0x10567cd9
10567c8f:	8b 06                                           	mov    eax,DWORD PTR [esi]
10567c91:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10567c94:	8b ce                                           	mov    ecx,esi
10567c96:	ff d2                                           	call   edx
10567c98:	d9 e8                                           	fld1
10567c9a:	57                                              	push   edi
10567c9b:	51                                              	push   ecx
10567c9c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10567c9f:	6a 01                                           	push   0x1
10567ca1:	8b ce                                           	mov    ecx,esi
10567ca3:	e8 c8 bd 3a 00                                  	call   0x10913a70
10567ca8:	e8 73 34 ff ff                                  	call   0x1055b120
10567cad:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567caf:	6a 60                                           	push   0x60
10567cb1:	8b c8                                           	mov    ecx,eax
10567cb3:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
10567cb9:	56                                              	push   esi
10567cba:	ff d0                                           	call   eax
10567cbc:	8b f8                                           	mov    edi,eax
10567cbe:	85 ff                                           	test   edi,edi
10567cc0:	74 09                                           	je     0x10567ccb
10567cc2:	8b 16                                           	mov    edx,DWORD PTR [esi]
10567cc4:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10567cc7:	8b ce                                           	mov    ecx,esi
10567cc9:	ff d0                                           	call   eax
10567ccb:	8b 16                                           	mov    edx,DWORD PTR [esi]
10567ccd:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10567cd0:	8b ce                                           	mov    ecx,esi
10567cd2:	ff d0                                           	call   eax
10567cd4:	8b c7                                           	mov    eax,edi
10567cd6:	5f                                              	pop    edi
10567cd7:	5e                                              	pop    esi
10567cd8:	c3                                              	ret
10567cd9:	33 c0                                           	xor    eax,eax
10567cdb:	5e                                              	pop    esi
10567cdc:	c3                                              	ret
10567cdd:	cc                                              	int3
10567cde:	cc                                              	int3
10567cdf:	cc                                              	int3
