# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004ddaf0 (Stream_ReadLengthPrefixedBytes)
Full Ghidra function-body envelope: 0x004ddaf0..0x004ddbea (exclusive end)
Ghidra body ranges: [[004ddaf0, 004ddbe9]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004ddaf0 <.text+0xdcaf0>:
  4ddaf0:	83 ec 08                                        	sub    esp,0x8
  4ddaf3:	53                                              	push   ebx
  4ddaf4:	55                                              	push   ebp
  4ddaf5:	56                                              	push   esi
  4ddaf6:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  4ddafa:	8b 06                                           	mov    eax,DWORD PTR [esi]
  4ddafc:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  4ddaff:	33 db                                           	xor    ebx,ebx
  4ddb01:	53                                              	push   ebx
  4ddb02:	8b ce                                           	mov    ecx,esi
  4ddb04:	ff d2                                           	call   edx
  4ddb06:	8b e8                                           	mov    ebp,eax
  4ddb08:	8b 06                                           	mov    eax,DWORD PTR [esi]
  4ddb0a:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  4ddb0d:	6a 04                                           	push   0x4
  4ddb0f:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  4ddb13:	51                                              	push   ecx
  4ddb14:	8b ce                                           	mov    ecx,esi
  4ddb16:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
  4ddb1a:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  4ddb1e:	ff d2                                           	call   edx
  4ddb20:	83 f8 04                                        	cmp    eax,0x4
  4ddb23:	75 34                                           	jne    0x4ddb59
  4ddb25:	83 7c 24 24 01                                  	cmp    DWORD PTR [esp+0x24],0x1
  4ddb2a:	74 37                                           	je     0x4ddb63
  4ddb2c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  4ddb30:	8b c1                                           	mov    eax,ecx
  4ddb32:	8b d1                                           	mov    edx,ecx
  4ddb34:	c1 ea 10                                        	shr    edx,0x10
  4ddb37:	25 00 00 ff 00                                  	and    eax,0xff0000
  4ddb3c:	0b c2                                           	or     eax,edx
  4ddb3e:	8b d1                                           	mov    edx,ecx
  4ddb40:	81 e2 00 ff 00 00                               	and    edx,0xff00
  4ddb46:	c1 e1 10                                        	shl    ecx,0x10
  4ddb49:	0b d1                                           	or     edx,ecx
  4ddb4b:	c1 e8 08                                        	shr    eax,0x8
  4ddb4e:	c1 e2 08                                        	shl    edx,0x8
  4ddb51:	0b c2                                           	or     eax,edx
  4ddb53:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  4ddb57:	eb 0e                                           	jmp    0x4ddb67
  4ddb59:	5e                                              	pop    esi
  4ddb5a:	5d                                              	pop    ebp
  4ddb5b:	83 c8 ff                                        	or     eax,0xffffffff
  4ddb5e:	5b                                              	pop    ebx
  4ddb5f:	83 c4 08                                        	add    esp,0x8
  4ddb62:	c3                                              	ret
  4ddb63:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  4ddb67:	57                                              	push   edi
  4ddb68:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  4ddb6c:	3b fb                                           	cmp    edi,ebx
  4ddb6e:	75 17                                           	jne    0x4ddb87
  4ddb70:	8b 06                                           	mov    eax,DWORD PTR [esi]
  4ddb72:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  4ddb75:	53                                              	push   ebx
  4ddb76:	55                                              	push   ebp
  4ddb77:	8b ce                                           	mov    ecx,esi
  4ddb79:	ff d2                                           	call   edx
  4ddb7b:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  4ddb7f:	5f                                              	pop    edi
  4ddb80:	5e                                              	pop    esi
  4ddb81:	5d                                              	pop    ebp
  4ddb82:	5b                                              	pop    ebx
  4ddb83:	83 c4 08                                        	add    esp,0x8
  4ddb86:	c3                                              	ret
  4ddb87:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  4ddb8b:	83 c1 ff                                        	add    ecx,0xffffffff
  4ddb8e:	3b c1                                           	cmp    eax,ecx
  4ddb90:	8b e8                                           	mov    ebp,eax
  4ddb92:	72 02                                           	jb     0x4ddb96
  4ddb94:	8b e9                                           	mov    ebp,ecx
  4ddb96:	3b dd                                           	cmp    ebx,ebp
  4ddb98:	73 25                                           	jae    0x4ddbbf
  4ddb9a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  4ddb9c:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  4ddb9f:	6a 01                                           	push   0x1
  4ddba1:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  4ddba5:	51                                              	push   ecx
  4ddba6:	8b ce                                           	mov    ecx,esi
  4ddba8:	ff d2                                           	call   edx
  4ddbaa:	83 f8 01                                        	cmp    eax,0x1
  4ddbad:	75 10                                           	jne    0x4ddbbf
  4ddbaf:	8a 44 24 1c                                     	mov    al,BYTE PTR [esp+0x1c]
  4ddbb3:	88 07                                           	mov    BYTE PTR [edi],al
  4ddbb5:	83 c7 01                                        	add    edi,0x1
  4ddbb8:	83 c3 01                                        	add    ebx,0x1
  4ddbbb:	85 ff                                           	test   edi,edi
  4ddbbd:	75 d7                                           	jne    0x4ddb96
  4ddbbf:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  4ddbc3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  4ddbc7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  4ddbc9:	8b 52 28                                        	mov    edx,DWORD PTR [edx+0x28]
  4ddbcc:	8d 44 08 04                                     	lea    eax,[eax+ecx*1+0x4]
  4ddbd0:	6a 00                                           	push   0x0
  4ddbd2:	50                                              	push   eax
  4ddbd3:	8b ce                                           	mov    ecx,esi
  4ddbd5:	ff d2                                           	call   edx
  4ddbd7:	85 ff                                           	test   edi,edi
  4ddbd9:	74 03                                           	je     0x4ddbde
  4ddbdb:	c6 07 00                                        	mov    BYTE PTR [edi],0x0
  4ddbde:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  4ddbe2:	5f                                              	pop    edi
  4ddbe3:	5e                                              	pop    esi
  4ddbe4:	5d                                              	pop    ebp
  4ddbe5:	5b                                              	pop    ebx
  4ddbe6:	83 c4 08                                        	add    esp,0x8
  4ddbe9:	c3                                              	ret
