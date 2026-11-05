# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00792f70 (ScriptCore.World::World_GetPoolRoomsImpl)
Paired Ghidra pseudocode: 00792F70_ScriptCore_World_World_GetPoolRoomsImpl.c
Window: [0x00792f70, 0x00793060) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00793060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00792f70: 8b 0d c4 db 1e 01 83 ec 1c 53 33 db 3b cb 75 07
00792f80: 33 c0 5b 83 c4 1c c3 8b 44 24 28 8b 54 24 24 56
00792f90: 57 53 50 52 e8 77 f8 4c 00 8b f0 89 5c 24 0c e8
00792fa0: ec 63 fd ff 3b f3 8b f8 74 08 8b 8e bc 02 00 00
00792fb0: eb 02 33 c9 3b cb 0f 84 92 00 00 00 3b fb 0f 84
00792fc0: 8a 00 00 00 8d 44 24 14 50 89 5c 24 18 89 5c 24
00792fd0: 1c 89 5c 24 20 c7 44 24 24 24 1b 01 01 e8 6e 69
00792fe0: 3d 00 8b 44 24 18 8b 74 24 14 2b c6 d1 f8 74 51
00792ff0: 8b 17 8b 92 8c 00 00 00 55 50 8d 44 24 14 50 8b
00793000: cf ff d2 8b 74 24 18 8b 6c 24 1c 3b f5 74 2f 90
00793010: 0f bf 06 8b 17 8b 92 a4 00 00 00 6a 01 89 44 24
00793020: 18 53 8d 44 24 1c 50 8d 4c 24 1c 51 8b cf ff d2
00793030: 83 c6 02 83 c3 01 3b f5 75 d6 8b 74 24 18 33 db
00793040: 5d 3b f3 74 09 56 e8 95 14 d5 ff 83 c4 04 8b 44
00793050: 24 0c 5f 5e 5b 83 c4 1c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00792f70 <.text+0x391f70>:
  792f70:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  792f76:	83 ec 1c                                        	sub    esp,0x1c
  792f79:	53                                              	push   ebx
  792f7a:	33 db                                           	xor    ebx,ebx
  792f7c:	3b cb                                           	cmp    ecx,ebx
  792f7e:	75 07                                           	jne    0x792f87
  792f80:	33 c0                                           	xor    eax,eax
  792f82:	5b                                              	pop    ebx
  792f83:	83 c4 1c                                        	add    esp,0x1c
  792f86:	c3                                              	ret
  792f87:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  792f8b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  792f8f:	56                                              	push   esi
  792f90:	57                                              	push   edi
  792f91:	53                                              	push   ebx
  792f92:	50                                              	push   eax
  792f93:	52                                              	push   edx
  792f94:	e8 77 f8 4c 00                                  	call   0xc62810
  792f99:	8b f0                                           	mov    esi,eax
  792f9b:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
  792f9f:	e8 ec 63 fd ff                                  	call   0x769390
  792fa4:	3b f3                                           	cmp    esi,ebx
  792fa6:	8b f8                                           	mov    edi,eax
  792fa8:	74 08                                           	je     0x792fb2
  792faa:	8b 8e bc 02 00 00                               	mov    ecx,DWORD PTR [esi+0x2bc]
  792fb0:	eb 02                                           	jmp    0x792fb4
  792fb2:	33 c9                                           	xor    ecx,ecx
  792fb4:	3b cb                                           	cmp    ecx,ebx
  792fb6:	0f 84 92 00 00 00                               	je     0x79304e
  792fbc:	3b fb                                           	cmp    edi,ebx
  792fbe:	0f 84 8a 00 00 00                               	je     0x79304e
  792fc4:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  792fc8:	50                                              	push   eax
  792fc9:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  792fcd:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  792fd1:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  792fd5:	c7 44 24 24 24 1b 01 01                         	mov    DWORD PTR [esp+0x24],0x1011b24
  792fdd:	e8 6e 69 3d 00                                  	call   0xb69950
  792fe2:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  792fe6:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  792fea:	2b c6                                           	sub    eax,esi
  792fec:	d1 f8                                           	sar    eax,1
  792fee:	74 51                                           	je     0x793041
  792ff0:	8b 17                                           	mov    edx,DWORD PTR [edi]
  792ff2:	8b 92 8c 00 00 00                               	mov    edx,DWORD PTR [edx+0x8c]
  792ff8:	55                                              	push   ebp
  792ff9:	50                                              	push   eax
  792ffa:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  792ffe:	50                                              	push   eax
  792fff:	8b cf                                           	mov    ecx,edi
  793001:	ff d2                                           	call   edx
  793003:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  793007:	8b 6c 24 1c                                     	mov    ebp,DWORD PTR [esp+0x1c]
  79300b:	3b f5                                           	cmp    esi,ebp
  79300d:	74 2f                                           	je     0x79303e
  79300f:	90                                              	nop
  793010:	0f bf 06                                        	movsx  eax,WORD PTR [esi]
  793013:	8b 17                                           	mov    edx,DWORD PTR [edi]
  793015:	8b 92 a4 00 00 00                               	mov    edx,DWORD PTR [edx+0xa4]
  79301b:	6a 01                                           	push   0x1
  79301d:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  793021:	53                                              	push   ebx
  793022:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  793026:	50                                              	push   eax
  793027:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  79302b:	51                                              	push   ecx
  79302c:	8b cf                                           	mov    ecx,edi
  79302e:	ff d2                                           	call   edx
  793030:	83 c6 02                                        	add    esi,0x2
  793033:	83 c3 01                                        	add    ebx,0x1
  793036:	3b f5                                           	cmp    esi,ebp
  793038:	75 d6                                           	jne    0x793010
  79303a:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  79303e:	33 db                                           	xor    ebx,ebx
  793040:	5d                                              	pop    ebp
  793041:	3b f3                                           	cmp    esi,ebx
  793043:	74 09                                           	je     0x79304e
  793045:	56                                              	push   esi
  793046:	e8 95 14 d5 ff                                  	call   0x4e44e0
  79304b:	83 c4 04                                        	add    esp,0x4
  79304e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  793052:	5f                                              	pop    edi
  793053:	5e                                              	pop    esi
  793054:	5b                                              	pop    ebx
  793055:	83 c4 1c                                        	add    esp,0x1c
  793058:	c3                                              	ret
  793059:	cc                                              	int3
  79305a:	cc                                              	int3
  79305b:	cc                                              	int3
  79305c:	cc                                              	int3
  79305d:	cc                                              	int3
  79305e:	cc                                              	int3
  79305f:	cc                                              	int3
