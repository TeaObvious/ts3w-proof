# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055ee10 (Simulator_LoadXmlAsString)
Paired Ghidra pseudocode: 1055EE10_Simulator_LoadXmlAsString.c
Window: [0x1055ee10, 0x1055eeb0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055eeb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055ee10: 51 8b 4c 24 14 8b 54 24 10 56 57 8d 44 24 08 50
1055ee20: 8b 44 24 18 51 8b 4c 24 18 52 50 51 c7 44 24 1c
1055ee30: 00 00 00 00 e8 c7 f8 ff ff 83 c4 14 84 c0 74 57
1055ee40: e8 db c2 ff ff 8b 4c 24 08 8b 11 8b f8 8b 42 18
1055ee50: ff d0 8b f0 85 f6 74 3f 8b 16 8b 42 04 8b ce ff
1055ee60: d0 8b 17 8b 82 b4 00 00 00 56 8b cf ff d0 8b 16
1055ee70: 8b f8 8b 42 18 8b ce ff d0 8b 16 8b 42 08 8b ce
1055ee80: ff d0 8b 4c 24 08 85 c9 74 07 8b 11 8b 42 08 ff
1055ee90: d0 8b c7 5f 5e 59 c3 8b 4c 24 08 85 c9 74 07 8b
1055eea0: 11 8b 42 08 ff d0 5f 33 c0 5e 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
1055ee10 <.text+0x55de10>:
1055ee10:	51                                              	push   ecx
1055ee11:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1055ee15:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1055ee19:	56                                              	push   esi
1055ee1a:	57                                              	push   edi
1055ee1b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1055ee1f:	50                                              	push   eax
1055ee20:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1055ee24:	51                                              	push   ecx
1055ee25:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055ee29:	52                                              	push   edx
1055ee2a:	50                                              	push   eax
1055ee2b:	51                                              	push   ecx
1055ee2c:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
1055ee34:	e8 c7 f8 ff ff                                  	call   0x1055e700
1055ee39:	83 c4 14                                        	add    esp,0x14
1055ee3c:	84 c0                                           	test   al,al
1055ee3e:	74 57                                           	je     0x1055ee97
1055ee40:	e8 db c2 ff ff                                  	call   0x1055b120
1055ee45:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055ee49:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1055ee4b:	8b f8                                           	mov    edi,eax
1055ee4d:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1055ee50:	ff d0                                           	call   eax
1055ee52:	8b f0                                           	mov    esi,eax
1055ee54:	85 f6                                           	test   esi,esi
1055ee56:	74 3f                                           	je     0x1055ee97
1055ee58:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055ee5a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1055ee5d:	8b ce                                           	mov    ecx,esi
1055ee5f:	ff d0                                           	call   eax
1055ee61:	8b 17                                           	mov    edx,DWORD PTR [edi]
1055ee63:	8b 82 b4 00 00 00                               	mov    eax,DWORD PTR [edx+0xb4]
1055ee69:	56                                              	push   esi
1055ee6a:	8b cf                                           	mov    ecx,edi
1055ee6c:	ff d0                                           	call   eax
1055ee6e:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055ee70:	8b f8                                           	mov    edi,eax
1055ee72:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
1055ee75:	8b ce                                           	mov    ecx,esi
1055ee77:	ff d0                                           	call   eax
1055ee79:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055ee7b:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1055ee7e:	8b ce                                           	mov    ecx,esi
1055ee80:	ff d0                                           	call   eax
1055ee82:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055ee86:	85 c9                                           	test   ecx,ecx
1055ee88:	74 07                                           	je     0x1055ee91
1055ee8a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1055ee8c:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1055ee8f:	ff d0                                           	call   eax
1055ee91:	8b c7                                           	mov    eax,edi
1055ee93:	5f                                              	pop    edi
1055ee94:	5e                                              	pop    esi
1055ee95:	59                                              	pop    ecx
1055ee96:	c3                                              	ret
1055ee97:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1055ee9b:	85 c9                                           	test   ecx,ecx
1055ee9d:	74 07                                           	je     0x1055eea6
1055ee9f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1055eea1:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1055eea4:	ff d0                                           	call   eax
1055eea6:	5f                                              	pop    edi
1055eea7:	33 c0                                           	xor    eax,eax
1055eea9:	5e                                              	pop    esi
1055eeaa:	59                                              	pop    ecx
1055eeab:	c3                                              	ret
1055eeac:	cc                                              	int3
1055eead:	cc                                              	int3
1055eeae:	cc                                              	int3
1055eeaf:	cc                                              	int3
