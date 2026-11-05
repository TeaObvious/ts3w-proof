# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x004aee40 (ResourceKey_ParseWideName)
Complete body envelope: 0x004aee40..0x004af041 (exclusive end)
Body ranges: [[004aee40, 004aef79] [004aef80, 004af040]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004aee40 <.text+0xade40>:
  4aee40:	51                   	push   ecx
  4aee41:	57                   	push   edi
  4aee42:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  4aee46:	85 ff                	test   edi,edi
  4aee48:	0f 84 ee 01 00 00    	je     0x4af03c
  4aee4e:	66 83 3f 00          	cmp    WORD PTR [edi],0x0
  4aee52:	0f 84 e4 01 00 00    	je     0x4af03c
  4aee58:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  4aee5c:	53                   	push   ebx
  4aee5d:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  4aee61:	55                   	push   ebp
  4aee62:	56                   	push   esi
  4aee63:	6a 2e                	push   0x2e
  4aee65:	57                   	push   edi
  4aee66:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  4aee69:	8b ef                	mov    ebp,edi
  4aee6b:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  4aee72:	00 
  4aee73:	ff 15 74 67 f9 00    	call   DWORD PTR ds:0xf96774
  4aee79:	8b f0                	mov    esi,eax
  4aee7b:	83 c4 08             	add    esp,0x8
  4aee7e:	85 f6                	test   esi,esi
  4aee80:	74 09                	je     0x4aee8b
  4aee82:	8d 4e 02             	lea    ecx,[esi+0x2]
  4aee85:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  4aee89:	eb 17                	jmp    0x4aeea2
  4aee8b:	8b c7                	mov    eax,edi
  4aee8d:	8d 50 02             	lea    edx,[eax+0x2]
  4aee90:	66 8b 08             	mov    cx,WORD PTR [eax]
  4aee93:	83 c0 02             	add    eax,0x2
  4aee96:	66 85 c9             	test   cx,cx
  4aee99:	75 f5                	jne    0x4aee90
  4aee9b:	2b c2                	sub    eax,edx
  4aee9d:	d1 f8                	sar    eax,1
  4aee9f:	8d 34 47             	lea    esi,[edi+eax*2]
  4aeea2:	8b c6                	mov    eax,esi
  4aeea4:	2b c7                	sub    eax,edi
  4aeea6:	d1 f8                	sar    eax,1
  4aeea8:	8b cf                	mov    ecx,edi
  4aeeaa:	74 12                	je     0x4aeebe
  4aeeac:	8d 64 24 00          	lea    esp,[esp+0x0]
  4aeeb0:	66 83 39 21          	cmp    WORD PTR [ecx],0x21
  4aeeb4:	74 22                	je     0x4aeed8
  4aeeb6:	83 c1 02             	add    ecx,0x2
  4aeeb9:	83 e8 01             	sub    eax,0x1
  4aeebc:	75 f2                	jne    0x4aeeb0
  4aeebe:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  4aeec2:	89 53 0c             	mov    DWORD PTR [ebx+0xc],edx
  4aeec5:	3b ee                	cmp    ebp,esi
  4aeec7:	75 1d                	jne    0x4aeee6
  4aeec9:	c7 03 ff ff ff ff    	mov    DWORD PTR [ebx],0xffffffff
  4aeecf:	c7 43 04 ff ff ff ff 	mov    DWORD PTR [ebx+0x4],0xffffffff
  4aeed6:	eb 42                	jmp    0x4aef1a
  4aeed8:	8b f9                	mov    edi,ecx
  4aeeda:	8d 69 02             	lea    ebp,[ecx+0x2]
  4aeedd:	c7 43 0c ff ff ff ff 	mov    DWORD PTR [ebx+0xc],0xffffffff
  4aeee4:	eb df                	jmp    0x4aeec5
  4aeee6:	6a 01                	push   0x1
  4aeee8:	6a 01                	push   0x1
  4aeeea:	56                   	push   esi
  4aeeeb:	55                   	push   ebp
  4aeeec:	e8 7f fe ff ff       	call   0x4aed70
  4aeef1:	83 c4 10             	add    esp,0x10
  4aeef4:	85 c0                	test   eax,eax
  4aeef6:	74 0f                	je     0x4aef07
  4aeef8:	6a 10                	push   0x10
  4aeefa:	6a 00                	push   0x0
  4aeefc:	50                   	push   eax
  4aeefd:	e8 3e 00 05 00       	call   0x4fef40
  4aef02:	83 c4 0c             	add    esp,0xc
  4aef05:	eb 0e                	jmp    0x4aef15
  4aef07:	2b f5                	sub    esi,ebp
  4aef09:	d1 fe                	sar    esi,1
  4aef0b:	56                   	push   esi
  4aef0c:	55                   	push   ebp
  4aef0d:	e8 6e 10 32 00       	call   0x7cff80
  4aef12:	83 c4 08             	add    esp,0x8
  4aef15:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  4aef18:	89 03                	mov    DWORD PTR [ebx],eax
  4aef1a:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  4aef1e:	3b ef                	cmp    ebp,edi
  4aef20:	8b 35 58 67 f9 00    	mov    esi,DWORD PTR ds:0xf96758
  4aef26:	74 2f                	je     0x4aef57
  4aef28:	6a 00                	push   0x0
  4aef2a:	6a 01                	push   0x1
  4aef2c:	57                   	push   edi
  4aef2d:	55                   	push   ebp
  4aef2e:	e8 3d fe ff ff       	call   0x4aed70
  4aef33:	83 c4 10             	add    esp,0x10
  4aef36:	85 c0                	test   eax,eax
  4aef38:	74 0c                	je     0x4aef46
  4aef3a:	6a 10                	push   0x10
  4aef3c:	6a 00                	push   0x0
  4aef3e:	50                   	push   eax
  4aef3f:	ff d6                	call   esi
  4aef41:	83 c4 0c             	add    esp,0xc
  4aef44:	eb 0e                	jmp    0x4aef54
  4aef46:	2b fd                	sub    edi,ebp
  4aef48:	d1 ff                	sar    edi,1
  4aef4a:	57                   	push   edi
  4aef4b:	55                   	push   ebp
  4aef4c:	e8 ff fd ff ff       	call   0x4aed50
  4aef51:	83 c4 08             	add    esp,0x8
  4aef54:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
  4aef57:	83 7b 08 00          	cmp    DWORD PTR [ebx+0x8],0x0
  4aef5b:	75 55                	jne    0x4aefb2
  4aef5d:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  4aef61:	85 ed                	test   ebp,ebp
  4aef63:	c7 43 08 ff ff ff ff 	mov    DWORD PTR [ebx+0x8],0xffffffff
  4aef6a:	74 46                	je     0x4aefb2
  4aef6c:	66 83 7d 00 00       	cmp    WORD PTR [ebp+0x0],0x0
  4aef71:	74 3f                	je     0x4aefb2
  4aef73:	8b c5                	mov    eax,ebp
  4aef75:	8d 50 02             	lea    edx,[eax+0x2]
  4aef78:	eb 06                	jmp    0x4aef80


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004aef80 <.text+0xadf80>:
  4aef80:	66 8b 08             	mov    cx,WORD PTR [eax]
  4aef83:	83 c0 02             	add    eax,0x2
  4aef86:	66 85 c9             	test   cx,cx
  4aef89:	75 f5                	jne    0x4aef80
  4aef8b:	2b c2                	sub    eax,edx
  4aef8d:	6a 00                	push   0x0
  4aef8f:	d1 f8                	sar    eax,1
  4aef91:	8d 7c 45 00          	lea    edi,[ebp+eax*2+0x0]
  4aef95:	6a 00                	push   0x0
  4aef97:	57                   	push   edi
  4aef98:	55                   	push   ebp
  4aef99:	e8 d2 fd ff ff       	call   0x4aed70
  4aef9e:	83 c4 10             	add    esp,0x10
  4aefa1:	85 c0                	test   eax,eax
  4aefa3:	74 2f                	je     0x4aefd4
  4aefa5:	6a 10                	push   0x10
  4aefa7:	6a 00                	push   0x0
  4aefa9:	50                   	push   eax
  4aefaa:	ff d6                	call   esi
  4aefac:	83 c4 0c             	add    esp,0xc
  4aefaf:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  4aefb2:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  4aefb6:	85 f6                	test   esi,esi
  4aefb8:	74 12                	je     0x4aefcc
  4aefba:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  4aefbe:	8b 16                	mov    edx,DWORD PTR [esi]
  4aefc0:	8b 92 88 00 00 00    	mov    edx,DWORD PTR [edx+0x88]
  4aefc6:	50                   	push   eax
  4aefc7:	53                   	push   ebx
  4aefc8:	8b ce                	mov    ecx,esi
  4aefca:	ff d2                	call   edx
  4aefcc:	5e                   	pop    esi
  4aefcd:	5d                   	pop    ebp
  4aefce:	5b                   	pop    ebx
  4aefcf:	b0 01                	mov    al,0x1
  4aefd1:	5f                   	pop    edi
  4aefd2:	59                   	pop    ecx
  4aefd3:	c3                   	ret
  4aefd4:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  4aefd8:	85 c0                	test   eax,eax
  4aefda:	74 1c                	je     0x4aeff8
  4aefdc:	50                   	push   eax
  4aefdd:	e8 3e fe ff ff       	call   0x4aee20
  4aefe2:	83 c4 04             	add    esp,0x4
  4aefe5:	85 c0                	test   eax,eax
  4aefe7:	74 0f                	je     0x4aeff8
  4aefe9:	8b 10                	mov    edx,DWORD PTR [eax]
  4aefeb:	8b c8                	mov    ecx,eax
  4aefed:	8b 42 60             	mov    eax,DWORD PTR [edx+0x60]
  4aeff0:	55                   	push   ebp
  4aeff1:	ff d0                	call   eax
  4aeff3:	83 f8 ff             	cmp    eax,0xffffffff
  4aeff6:	75 38                	jne    0x4af030
  4aeff8:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  4aeffc:	85 f6                	test   esi,esi
  4aeffe:	75 0b                	jne    0x4af00b
  4af000:	e8 7b 0e 00 00       	call   0x4afe80
  4af005:	8b f0                	mov    esi,eax
  4af007:	85 f6                	test   esi,esi
  4af009:	74 12                	je     0x4af01d
  4af00b:	8b 16                	mov    edx,DWORD PTR [esi]
  4af00d:	8b 82 90 00 00 00    	mov    eax,DWORD PTR [edx+0x90]
  4af013:	55                   	push   ebp
  4af014:	8b ce                	mov    ecx,esi
  4af016:	ff d0                	call   eax
  4af018:	83 f8 ff             	cmp    eax,0xffffffff
  4af01b:	75 17                	jne    0x4af034
  4af01d:	2b fd                	sub    edi,ebp
  4af01f:	d1 ff                	sar    edi,1
  4af021:	57                   	push   edi
  4af022:	55                   	push   ebp
  4af023:	e8 98 0e 32 00       	call   0x7cfec0
  4af028:	83 c4 08             	add    esp,0x8
  4af02b:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  4af02e:	eb 86                	jmp    0x4aefb6
  4af030:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  4af034:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  4af037:	e9 7a ff ff ff       	jmp    0x4aefb6
  4af03c:	32 c0                	xor    al,al
  4af03e:	5f                   	pop    edi
  4af03f:	59                   	pop    ecx
  4af040:	c3                   	ret
