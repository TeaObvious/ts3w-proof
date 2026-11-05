# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567ce0 (StreamHost_CreateFromBuffer)
Paired Ghidra pseudocode: 10567CE0_StreamHost_CreateFromBuffer.c
Window: [0x10567ce0, 0x10567dc0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567ce0: 51 56 8b 74 24 0c 85 f6 74 7a e8 31 34 ff ff 8b
10567cf0: 10 8b 52 70 8d 4c 24 0c 51 8d 4c 24 08 51 56 8b
10567d00: c8 ff d2 6a 00 6a 00 6a 00 6a 00 68 18 04 b2 10
10567d10: 6a 2c e8 99 11 3b 00 83 c4 18 85 c0 74 46 6a 00
10567d20: 6a 00 6a 00 8b c8 e8 65 c3 3a 00 8b f0 85 f6 74
10567d30: 33 8b 06 8b 50 04 8b ce ff d2 d9 e8 51 d9 1c 24
10567d40: 6a 01 8b ce e8 27 bd 3a 00 8b 4c 24 0c 8b 06 8b
10567d50: 50 20 51 8b ce ff d2 84 c0 75 0e 8b 06 8b 50 08
10567d60: 8b ce ff d2 33 c0 5e 59 c3 8b 46 04 85 c0 74 05
10567d70: 8b 40 08 eb 02 33 c0 8b 4c 24 0c 8b 54 24 04 57
10567d80: 51 52 50 e8 9a 8b 52 00 d9 ee 83 c4 08 d9 1c 24
10567d90: 6a 01 8b ce e8 d7 bc 3a 00 56 e8 11 f5 ff ff 8b
10567da0: f8 8b 06 8b 50 08 83 c4 04 8b ce ff d2 8b c7 5f
10567db0: 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567ce0 <.text+0x566ce0>:
10567ce0:	51                                              	push   ecx
10567ce1:	56                                              	push   esi
10567ce2:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
10567ce6:	85 f6                                           	test   esi,esi
10567ce8:	74 7a                                           	je     0x10567d64
10567cea:	e8 31 34 ff ff                                  	call   0x1055b120
10567cef:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567cf1:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
10567cf4:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10567cf8:	51                                              	push   ecx
10567cf9:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10567cfd:	51                                              	push   ecx
10567cfe:	56                                              	push   esi
10567cff:	8b c8                                           	mov    ecx,eax
10567d01:	ff d2                                           	call   edx
10567d03:	6a 00                                           	push   0x0
10567d05:	6a 00                                           	push   0x0
10567d07:	6a 00                                           	push   0x0
10567d09:	6a 00                                           	push   0x0
10567d0b:	68 18 04 b2 10                                  	push   0x10b20418
10567d10:	6a 2c                                           	push   0x2c
10567d12:	e8 99 11 3b 00                                  	call   0x10918eb0
10567d17:	83 c4 18                                        	add    esp,0x18
10567d1a:	85 c0                                           	test   eax,eax
10567d1c:	74 46                                           	je     0x10567d64
10567d1e:	6a 00                                           	push   0x0
10567d20:	6a 00                                           	push   0x0
10567d22:	6a 00                                           	push   0x0
10567d24:	8b c8                                           	mov    ecx,eax
10567d26:	e8 65 c3 3a 00                                  	call   0x10914090
10567d2b:	8b f0                                           	mov    esi,eax
10567d2d:	85 f6                                           	test   esi,esi
10567d2f:	74 33                                           	je     0x10567d64
10567d31:	8b 06                                           	mov    eax,DWORD PTR [esi]
10567d33:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10567d36:	8b ce                                           	mov    ecx,esi
10567d38:	ff d2                                           	call   edx
10567d3a:	d9 e8                                           	fld1
10567d3c:	51                                              	push   ecx
10567d3d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10567d40:	6a 01                                           	push   0x1
10567d42:	8b ce                                           	mov    ecx,esi
10567d44:	e8 27 bd 3a 00                                  	call   0x10913a70
10567d49:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10567d4d:	8b 06                                           	mov    eax,DWORD PTR [esi]
10567d4f:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
10567d52:	51                                              	push   ecx
10567d53:	8b ce                                           	mov    ecx,esi
10567d55:	ff d2                                           	call   edx
10567d57:	84 c0                                           	test   al,al
10567d59:	75 0e                                           	jne    0x10567d69
10567d5b:	8b 06                                           	mov    eax,DWORD PTR [esi]
10567d5d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10567d60:	8b ce                                           	mov    ecx,esi
10567d62:	ff d2                                           	call   edx
10567d64:	33 c0                                           	xor    eax,eax
10567d66:	5e                                              	pop    esi
10567d67:	59                                              	pop    ecx
10567d68:	c3                                              	ret
10567d69:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
10567d6c:	85 c0                                           	test   eax,eax
10567d6e:	74 05                                           	je     0x10567d75
10567d70:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10567d73:	eb 02                                           	jmp    0x10567d77
10567d75:	33 c0                                           	xor    eax,eax
10567d77:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10567d7b:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10567d7f:	57                                              	push   edi
10567d80:	51                                              	push   ecx
10567d81:	52                                              	push   edx
10567d82:	50                                              	push   eax
10567d83:	e8 9a 8b 52 00                                  	call   0x10a90922
10567d88:	d9 ee                                           	fldz
10567d8a:	83 c4 08                                        	add    esp,0x8
10567d8d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10567d90:	6a 01                                           	push   0x1
10567d92:	8b ce                                           	mov    ecx,esi
10567d94:	e8 d7 bc 3a 00                                  	call   0x10913a70
10567d99:	56                                              	push   esi
10567d9a:	e8 11 f5 ff ff                                  	call   0x105672b0
10567d9f:	8b f8                                           	mov    edi,eax
10567da1:	8b 06                                           	mov    eax,DWORD PTR [esi]
10567da3:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10567da6:	83 c4 04                                        	add    esp,0x4
10567da9:	8b ce                                           	mov    ecx,esi
10567dab:	ff d2                                           	call   edx
10567dad:	8b c7                                           	mov    eax,edi
10567daf:	5f                                              	pop    edi
10567db0:	5e                                              	pop    esi
10567db1:	59                                              	pop    ecx
10567db2:	c3                                              	ret
10567db3:	cc                                              	int3
10567db4:	cc                                              	int3
10567db5:	cc                                              	int3
10567db6:	cc                                              	int3
10567db7:	cc                                              	int3
10567db8:	cc                                              	int3
10567db9:	cc                                              	int3
10567dba:	cc                                              	int3
10567dbb:	cc                                              	int3
10567dbc:	cc                                              	int3
10567dbd:	cc                                              	int3
10567dbe:	cc                                              	int3
10567dbf:	cc                                              	int3
