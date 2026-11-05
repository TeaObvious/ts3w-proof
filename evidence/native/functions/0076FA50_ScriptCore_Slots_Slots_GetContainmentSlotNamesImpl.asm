# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076fa50 (ScriptCore.Slots::Slots_GetContainmentSlotNamesImpl)
Paired Ghidra pseudocode: 0076FA50_ScriptCore_Slots_Slots_GetContainmentSlotNamesImpl.c
Window: [0x0076fa50, 0x0076fba0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076fba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076fa50: 83 ec 20 53 55 56 57 e8 34 99 ff ff 89 44 24 1c
0076fa60: e8 0b 7b 1c 00 8b 4c 24 38 8b 54 24 34 51 52 8b
0076fa70: c8 e8 0a 85 1c 00 8b f8 33 f6 3b fe 89 7c 24 14
0076fa80: 74 2b 8d 47 04 b9 01 00 00 00 f0 0f c1 08 8b 15
0076fa90: 58 a1 1e 01 52 8b cf e8 c4 47 1c 00 a1 14 a1 1e
0076faa0: 01 50 8b cf e8 b7 47 1c 00 8b e8 eb 02 33 ed 33
0076fab0: db 85 ed 89 74 24 20 89 74 24 24 89 5c 24 28 c7
0076fac0: 44 24 2c 2c 99 00 01 74 53 8b cd e8 c0 07 1e 00
0076fad0: 8b d8 33 ff 85 db 7e 40 57 8b cd e8 c0 07 1e 00
0076fae0: 3b 74 24 28 8b 40 04 89 44 24 18 73 11 8b ce 83
0076faf0: c6 04 85 c9 89 74 24 24 74 17 89 01 eb 13 8d 4c
0076fb00: 24 18 51 56 8d 4c 24 28 e8 13 29 21 00 8b 74 24
0076fb10: 24 83 c7 01 3b fb 7c c0 8b 7c 24 14 85 db c7 44
0076fb20: 24 10 00 00 00 00 7e 2f 8b 74 24 1c 8b 16 8b 92
0076fb30: 84 00 00 00 53 8d 44 24 14 50 8b ce ff d2 8b 4c
0076fb40: 24 20 8b 06 8b 80 9c 00 00 00 53 6a 00 51 8d 54
0076fb50: 24 1c 52 8b ce ff d0 8b 44 24 20 85 c0 8b 74 24
0076fb60: 10 74 09 50 e8 77 49 d7 ff 83 c4 04 85 ff 74 20
0076fb70: 8d 47 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9
0076fb80: 01 00 00 00 87 08 8b 17 8b 02 6a 01 8b cf ff d0
0076fb90: 5f 8b c6 5e 5d 5b 83 c4 20 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076fa50 <.text+0x36ea50>:
  76fa50:	83 ec 20                                        	sub    esp,0x20
  76fa53:	53                                              	push   ebx
  76fa54:	55                                              	push   ebp
  76fa55:	56                                              	push   esi
  76fa56:	57                                              	push   edi
  76fa57:	e8 34 99 ff ff                                  	call   0x769390
  76fa5c:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  76fa60:	e8 0b 7b 1c 00                                  	call   0x937570
  76fa65:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  76fa69:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  76fa6d:	51                                              	push   ecx
  76fa6e:	52                                              	push   edx
  76fa6f:	8b c8                                           	mov    ecx,eax
  76fa71:	e8 0a 85 1c 00                                  	call   0x937f80
  76fa76:	8b f8                                           	mov    edi,eax
  76fa78:	33 f6                                           	xor    esi,esi
  76fa7a:	3b fe                                           	cmp    edi,esi
  76fa7c:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  76fa80:	74 2b                                           	je     0x76faad
  76fa82:	8d 47 04                                        	lea    eax,[edi+0x4]
  76fa85:	b9 01 00 00 00                                  	mov    ecx,0x1
  76fa8a:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76fa8e:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76fa94:	52                                              	push   edx
  76fa95:	8b cf                                           	mov    ecx,edi
  76fa97:	e8 c4 47 1c 00                                  	call   0x934260
  76fa9c:	a1 14 a1 1e 01                                  	mov    eax,ds:0x11ea114
  76faa1:	50                                              	push   eax
  76faa2:	8b cf                                           	mov    ecx,edi
  76faa4:	e8 b7 47 1c 00                                  	call   0x934260
  76faa9:	8b e8                                           	mov    ebp,eax
  76faab:	eb 02                                           	jmp    0x76faaf
  76faad:	33 ed                                           	xor    ebp,ebp
  76faaf:	33 db                                           	xor    ebx,ebx
  76fab1:	85 ed                                           	test   ebp,ebp
  76fab3:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  76fab7:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  76fabb:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  76fabf:	c7 44 24 2c 2c 99 00 01                         	mov    DWORD PTR [esp+0x2c],0x100992c
  76fac7:	74 53                                           	je     0x76fb1c
  76fac9:	8b cd                                           	mov    ecx,ebp
  76facb:	e8 c0 07 1e 00                                  	call   0x950290
  76fad0:	8b d8                                           	mov    ebx,eax
  76fad2:	33 ff                                           	xor    edi,edi
  76fad4:	85 db                                           	test   ebx,ebx
  76fad6:	7e 40                                           	jle    0x76fb18
  76fad8:	57                                              	push   edi
  76fad9:	8b cd                                           	mov    ecx,ebp
  76fadb:	e8 c0 07 1e 00                                  	call   0x9502a0
  76fae0:	3b 74 24 28                                     	cmp    esi,DWORD PTR [esp+0x28]
  76fae4:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  76fae7:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  76faeb:	73 11                                           	jae    0x76fafe
  76faed:	8b ce                                           	mov    ecx,esi
  76faef:	83 c6 04                                        	add    esi,0x4
  76faf2:	85 c9                                           	test   ecx,ecx
  76faf4:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  76faf8:	74 17                                           	je     0x76fb11
  76fafa:	89 01                                           	mov    DWORD PTR [ecx],eax
  76fafc:	eb 13                                           	jmp    0x76fb11
  76fafe:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  76fb02:	51                                              	push   ecx
  76fb03:	56                                              	push   esi
  76fb04:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  76fb08:	e8 13 29 21 00                                  	call   0x982420
  76fb0d:	8b 74 24 24                                     	mov    esi,DWORD PTR [esp+0x24]
  76fb11:	83 c7 01                                        	add    edi,0x1
  76fb14:	3b fb                                           	cmp    edi,ebx
  76fb16:	7c c0                                           	jl     0x76fad8
  76fb18:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  76fb1c:	85 db                                           	test   ebx,ebx
  76fb1e:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  76fb26:	7e 2f                                           	jle    0x76fb57
  76fb28:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  76fb2c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76fb2e:	8b 92 84 00 00 00                               	mov    edx,DWORD PTR [edx+0x84]
  76fb34:	53                                              	push   ebx
  76fb35:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  76fb39:	50                                              	push   eax
  76fb3a:	8b ce                                           	mov    ecx,esi
  76fb3c:	ff d2                                           	call   edx
  76fb3e:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  76fb42:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76fb44:	8b 80 9c 00 00 00                               	mov    eax,DWORD PTR [eax+0x9c]
  76fb4a:	53                                              	push   ebx
  76fb4b:	6a 00                                           	push   0x0
  76fb4d:	51                                              	push   ecx
  76fb4e:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  76fb52:	52                                              	push   edx
  76fb53:	8b ce                                           	mov    ecx,esi
  76fb55:	ff d0                                           	call   eax
  76fb57:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  76fb5b:	85 c0                                           	test   eax,eax
  76fb5d:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  76fb61:	74 09                                           	je     0x76fb6c
  76fb63:	50                                              	push   eax
  76fb64:	e8 77 49 d7 ff                                  	call   0x4e44e0
  76fb69:	83 c4 04                                        	add    esp,0x4
  76fb6c:	85 ff                                           	test   edi,edi
  76fb6e:	74 20                                           	je     0x76fb90
  76fb70:	8d 47 04                                        	lea    eax,[edi+0x4]
  76fb73:	8b c8                                           	mov    ecx,eax
  76fb75:	83 ca ff                                        	or     edx,0xffffffff
  76fb78:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76fb7c:	4a                                              	dec    edx
  76fb7d:	75 11                                           	jne    0x76fb90
  76fb7f:	b9 01 00 00 00                                  	mov    ecx,0x1
  76fb84:	87 08                                           	xchg   DWORD PTR [eax],ecx
  76fb86:	8b 17                                           	mov    edx,DWORD PTR [edi]
  76fb88:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76fb8a:	6a 01                                           	push   0x1
  76fb8c:	8b cf                                           	mov    ecx,edi
  76fb8e:	ff d0                                           	call   eax
  76fb90:	5f                                              	pop    edi
  76fb91:	8b c6                                           	mov    eax,esi
  76fb93:	5e                                              	pop    esi
  76fb94:	5d                                              	pop    ebp
  76fb95:	5b                                              	pop    ebx
  76fb96:	83 c4 20                                        	add    esp,0x20
  76fb99:	c3                                              	ret
  76fb9a:	cc                                              	int3
  76fb9b:	cc                                              	int3
  76fb9c:	cc                                              	int3
  76fb9d:	cc                                              	int3
  76fb9e:	cc                                              	int3
  76fb9f:	cc                                              	int3
