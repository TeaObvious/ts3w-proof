# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076f990 (ScriptCore.Slots::Slots_GetParentSlotImpl)
Paired Ghidra pseudocode: 0076F990_ScriptCore_Slots_Slots_GetParentSlotImpl.c
Window: [0x0076f990, 0x0076fa50) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076fa50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076f990: 83 ec 0c 56 e8 f7 99 ff ff e8 d2 7b 1c 00 8b 4c
0076f9a0: 24 18 8b 54 24 14 51 52 8b c8 e8 d1 85 1c 00 8b
0076f9b0: f0 85 f6 74 62 57 8d 7e 04 8b c7 b9 01 00 00 00
0076f9c0: f0 0f c1 08 8b 15 58 a1 1e 01 52 8b ce e8 8e 48
0076f9d0: 1c 00 8d 4c 24 0c 51 8b 4c 24 24 8d 54 24 0f 52
0076f9e0: 51 8b c8 e8 58 69 1e 00 84 c0 74 32 53 8b 5c 24
0076f9f0: 10 8b d7 83 c8 ff f0 0f c1 02 48 75 11 b9 01 00
0076fa00: 00 00 87 0f 8b 16 8b 02 6a 01 8b ce ff d0 8b c3
0076fa10: 5b 5f 5e 83 c4 0c c3 33 c0 5e 83 c4 0c c3 8b cf
0076fa20: 83 ca ff f0 0f c1 11 4a 75 11 b8 01 00 00 00 87
0076fa30: 07 8b 16 8b 02 6a 01 8b ce ff d0 5f 33 c0 5e 83
0076fa40: c4 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076f990 <.text+0x36e990>:
  76f990:	83 ec 0c                                        	sub    esp,0xc
  76f993:	56                                              	push   esi
  76f994:	e8 f7 99 ff ff                                  	call   0x769390
  76f999:	e8 d2 7b 1c 00                                  	call   0x937570
  76f99e:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76f9a2:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  76f9a6:	51                                              	push   ecx
  76f9a7:	52                                              	push   edx
  76f9a8:	8b c8                                           	mov    ecx,eax
  76f9aa:	e8 d1 85 1c 00                                  	call   0x937f80
  76f9af:	8b f0                                           	mov    esi,eax
  76f9b1:	85 f6                                           	test   esi,esi
  76f9b3:	74 62                                           	je     0x76fa17
  76f9b5:	57                                              	push   edi
  76f9b6:	8d 7e 04                                        	lea    edi,[esi+0x4]
  76f9b9:	8b c7                                           	mov    eax,edi
  76f9bb:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f9c0:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f9c4:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76f9ca:	52                                              	push   edx
  76f9cb:	8b ce                                           	mov    ecx,esi
  76f9cd:	e8 8e 48 1c 00                                  	call   0x934260
  76f9d2:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  76f9d6:	51                                              	push   ecx
  76f9d7:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  76f9db:	8d 54 24 0f                                     	lea    edx,[esp+0xf]
  76f9df:	52                                              	push   edx
  76f9e0:	51                                              	push   ecx
  76f9e1:	8b c8                                           	mov    ecx,eax
  76f9e3:	e8 58 69 1e 00                                  	call   0x956340
  76f9e8:	84 c0                                           	test   al,al
  76f9ea:	74 32                                           	je     0x76fa1e
  76f9ec:	53                                              	push   ebx
  76f9ed:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  76f9f1:	8b d7                                           	mov    edx,edi
  76f9f3:	83 c8 ff                                        	or     eax,0xffffffff
  76f9f6:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  76f9fa:	48                                              	dec    eax
  76f9fb:	75 11                                           	jne    0x76fa0e
  76f9fd:	b9 01 00 00 00                                  	mov    ecx,0x1
  76fa02:	87 0f                                           	xchg   DWORD PTR [edi],ecx
  76fa04:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76fa06:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76fa08:	6a 01                                           	push   0x1
  76fa0a:	8b ce                                           	mov    ecx,esi
  76fa0c:	ff d0                                           	call   eax
  76fa0e:	8b c3                                           	mov    eax,ebx
  76fa10:	5b                                              	pop    ebx
  76fa11:	5f                                              	pop    edi
  76fa12:	5e                                              	pop    esi
  76fa13:	83 c4 0c                                        	add    esp,0xc
  76fa16:	c3                                              	ret
  76fa17:	33 c0                                           	xor    eax,eax
  76fa19:	5e                                              	pop    esi
  76fa1a:	83 c4 0c                                        	add    esp,0xc
  76fa1d:	c3                                              	ret
  76fa1e:	8b cf                                           	mov    ecx,edi
  76fa20:	83 ca ff                                        	or     edx,0xffffffff
  76fa23:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76fa27:	4a                                              	dec    edx
  76fa28:	75 11                                           	jne    0x76fa3b
  76fa2a:	b8 01 00 00 00                                  	mov    eax,0x1
  76fa2f:	87 07                                           	xchg   DWORD PTR [edi],eax
  76fa31:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76fa33:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76fa35:	6a 01                                           	push   0x1
  76fa37:	8b ce                                           	mov    ecx,esi
  76fa39:	ff d0                                           	call   eax
  76fa3b:	5f                                              	pop    edi
  76fa3c:	33 c0                                           	xor    eax,eax
  76fa3e:	5e                                              	pop    esi
  76fa3f:	83 c4 0c                                        	add    esp,0xc
  76fa42:	c3                                              	ret
  76fa43:	cc                                              	int3
  76fa44:	cc                                              	int3
  76fa45:	cc                                              	int3
  76fa46:	cc                                              	int3
  76fa47:	cc                                              	int3
  76fa48:	cc                                              	int3
  76fa49:	cc                                              	int3
  76fa4a:	cc                                              	int3
  76fa4b:	cc                                              	int3
  76fa4c:	cc                                              	int3
  76fa4d:	cc                                              	int3
  76fa4e:	cc                                              	int3
  76fa4f:	cc                                              	int3
