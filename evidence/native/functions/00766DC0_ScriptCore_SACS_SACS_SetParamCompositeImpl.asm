# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00766dc0 (ScriptCore.SACS::SACS_SetParamCompositeImpl)
Paired Ghidra pseudocode: 00766DC0_ScriptCore_SACS_SACS_SetParamCompositeImpl.c
Window: [0x00766dc0, 0x00766e90) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00766e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00766dc0: 51 56 e8 c9 25 00 00 8b 4c 24 0c 8b f0 8b 06 8b
00766dd0: 90 cc 00 00 00 51 8b ce ff d2 85 c0 89 44 24 04
00766de0: 0f 84 9f 00 00 00 8b 4c 24 10 8b 06 8b 50 58 53
00766df0: 55 57 51 8b ce ff d2 8b 4c 24 20 8b f8 8b 06 8b
00766e00: 50 58 51 8b ce ff d2 85 ff 8b 2d 68 67 f9 00 8b
00766e10: d8 be c5 9d 1c 81 74 30 0f b7 07 66 85 c0 74 1f
00766e20: 0f b7 c0 50 ff d5 69 f6 93 01 00 01 0f b7 c0 83
00766e30: c7 02 33 f0 0f b7 07 83 c4 04 66 85 c0 75 e1 69
00766e40: f6 93 01 00 01 83 f6 3a 85 db 74 27 0f b7 03 66
00766e50: 85 c0 74 1f 0f b7 c0 50 ff d5 69 f6 93 01 00 01
00766e60: 83 c3 02 0f b7 c8 0f b7 03 83 c4 04 33 f1 66 85
00766e70: c0 75 e1 8b 54 24 24 8b 4c 24 10 52 56 e8 fe ac
00766e80: 09 00 5f 5d 5b 5e 59 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00766dc0 <.text+0x365dc0>:
  766dc0:	51                                              	push   ecx
  766dc1:	56                                              	push   esi
  766dc2:	e8 c9 25 00 00                                  	call   0x769390
  766dc7:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  766dcb:	8b f0                                           	mov    esi,eax
  766dcd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  766dcf:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
  766dd5:	51                                              	push   ecx
  766dd6:	8b ce                                           	mov    ecx,esi
  766dd8:	ff d2                                           	call   edx
  766dda:	85 c0                                           	test   eax,eax
  766ddc:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  766de0:	0f 84 9f 00 00 00                               	je     0x766e85
  766de6:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  766dea:	8b 06                                           	mov    eax,DWORD PTR [esi]
  766dec:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  766def:	53                                              	push   ebx
  766df0:	55                                              	push   ebp
  766df1:	57                                              	push   edi
  766df2:	51                                              	push   ecx
  766df3:	8b ce                                           	mov    ecx,esi
  766df5:	ff d2                                           	call   edx
  766df7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  766dfb:	8b f8                                           	mov    edi,eax
  766dfd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  766dff:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  766e02:	51                                              	push   ecx
  766e03:	8b ce                                           	mov    ecx,esi
  766e05:	ff d2                                           	call   edx
  766e07:	85 ff                                           	test   edi,edi
  766e09:	8b 2d 68 67 f9 00                               	mov    ebp,DWORD PTR ds:0xf96768
  766e0f:	8b d8                                           	mov    ebx,eax
  766e11:	be c5 9d 1c 81                                  	mov    esi,0x811c9dc5
  766e16:	74 30                                           	je     0x766e48
  766e18:	0f b7 07                                        	movzx  eax,WORD PTR [edi]
  766e1b:	66 85 c0                                        	test   ax,ax
  766e1e:	74 1f                                           	je     0x766e3f
  766e20:	0f b7 c0                                        	movzx  eax,ax
  766e23:	50                                              	push   eax
  766e24:	ff d5                                           	call   ebp
  766e26:	69 f6 93 01 00 01                               	imul   esi,esi,0x1000193
  766e2c:	0f b7 c0                                        	movzx  eax,ax
  766e2f:	83 c7 02                                        	add    edi,0x2
  766e32:	33 f0                                           	xor    esi,eax
  766e34:	0f b7 07                                        	movzx  eax,WORD PTR [edi]
  766e37:	83 c4 04                                        	add    esp,0x4
  766e3a:	66 85 c0                                        	test   ax,ax
  766e3d:	75 e1                                           	jne    0x766e20
  766e3f:	69 f6 93 01 00 01                               	imul   esi,esi,0x1000193
  766e45:	83 f6 3a                                        	xor    esi,0x3a
  766e48:	85 db                                           	test   ebx,ebx
  766e4a:	74 27                                           	je     0x766e73
  766e4c:	0f b7 03                                        	movzx  eax,WORD PTR [ebx]
  766e4f:	66 85 c0                                        	test   ax,ax
  766e52:	74 1f                                           	je     0x766e73
  766e54:	0f b7 c0                                        	movzx  eax,ax
  766e57:	50                                              	push   eax
  766e58:	ff d5                                           	call   ebp
  766e5a:	69 f6 93 01 00 01                               	imul   esi,esi,0x1000193
  766e60:	83 c3 02                                        	add    ebx,0x2
  766e63:	0f b7 c8                                        	movzx  ecx,ax
  766e66:	0f b7 03                                        	movzx  eax,WORD PTR [ebx]
  766e69:	83 c4 04                                        	add    esp,0x4
  766e6c:	33 f1                                           	xor    esi,ecx
  766e6e:	66 85 c0                                        	test   ax,ax
  766e71:	75 e1                                           	jne    0x766e54
  766e73:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  766e77:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  766e7b:	52                                              	push   edx
  766e7c:	56                                              	push   esi
  766e7d:	e8 fe ac 09 00                                  	call   0x801b80
  766e82:	5f                                              	pop    edi
  766e83:	5d                                              	pop    ebp
  766e84:	5b                                              	pop    ebx
  766e85:	5e                                              	pop    esi
  766e86:	59                                              	pop    ecx
  766e87:	c3                                              	ret
  766e88:	cc                                              	int3
  766e89:	cc                                              	int3
  766e8a:	cc                                              	int3
  766e8b:	cc                                              	int3
  766e8c:	cc                                              	int3
  766e8d:	cc                                              	int3
  766e8e:	cc                                              	int3
  766e8f:	cc                                              	int3
