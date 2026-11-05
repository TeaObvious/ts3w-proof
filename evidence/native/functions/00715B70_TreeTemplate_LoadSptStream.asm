# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00715b70 (TreeTemplate_LoadSptStream)
Complete body envelope: 0x00715b70..0x00715c51 (exclusive end)
Body ranges: [[00715b70, 00715c50]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00715b70 <.text+0x314b70>:
  715b70:	53                   	push   ebx
  715b71:	8b d9                	mov    ebx,ecx
  715b73:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  715b77:	85 c9                	test   ecx,ecx
  715b79:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  715b7d:	74 07                	je     0x715b86
  715b7f:	8b 01                	mov    eax,DWORD PTR [ecx]
  715b81:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  715b84:	ff d2                	call   edx
  715b86:	8d 44 24 08          	lea    eax,[esp+0x8]
  715b8a:	50                   	push   eax
  715b8b:	e8 a0 37 02 00       	call   0x739330
  715b90:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  715b94:	83 c4 04             	add    esp,0x4
  715b97:	84 c0                	test   al,al
  715b99:	75 11                	jne    0x715bac
  715b9b:	85 c9                	test   ecx,ecx
  715b9d:	74 07                	je     0x715ba6
  715b9f:	8b 11                	mov    edx,DWORD PTR [ecx]
  715ba1:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  715ba4:	ff d0                	call   eax
  715ba6:	32 c0                	xor    al,al
  715ba8:	5b                   	pop    ebx
  715ba9:	c2 04 00             	ret    0x4
  715bac:	8b 11                	mov    edx,DWORD PTR [ecx]
  715bae:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  715bb1:	56                   	push   esi
  715bb2:	57                   	push   edi
  715bb3:	ff d0                	call   eax
  715bb5:	50                   	push   eax
  715bb6:	8b cb                	mov    ecx,ebx
  715bb8:	e8 23 c0 01 00       	call   0x731be0
  715bbd:	68 6c ce ff 00       	push   0xffce6c
  715bc2:	68 e4 00 00 00       	push   0xe4
  715bc7:	e8 64 34 0a 00       	call   0x7b9030
  715bcc:	83 c4 08             	add    esp,0x8
  715bcf:	85 c0                	test   eax,eax
  715bd1:	74 0b                	je     0x715bde
  715bd3:	8b c8                	mov    ecx,eax
  715bd5:	e8 a6 5d 0a 00       	call   0x7bb980
  715bda:	8b f8                	mov    edi,eax
  715bdc:	eb 02                	jmp    0x715be0
  715bde:	33 ff                	xor    edi,edi
  715be0:	8b 73 34             	mov    esi,DWORD PTR [ebx+0x34]
  715be3:	3b fe                	cmp    edi,esi
  715be5:	74 17                	je     0x715bfe
  715be7:	85 f6                	test   esi,esi
  715be9:	74 10                	je     0x715bfb
  715beb:	8b ce                	mov    ecx,esi
  715bed:	e8 7e 68 0a 00       	call   0x7bc470
  715bf2:	56                   	push   esi
  715bf3:	e8 68 34 0a 00       	call   0x7b9060
  715bf8:	83 c4 04             	add    esp,0x4
  715bfb:	89 7b 34             	mov    DWORD PTR [ebx+0x34],edi
  715bfe:	6a 01                	push   0x1
  715c00:	e8 cb 2e 0a 00       	call   0x7b8ad0
  715c05:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  715c09:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  715c0c:	83 c4 04             	add    esp,0x4
  715c0f:	85 c0                	test   eax,eax
  715c11:	74 05                	je     0x715c18
  715c13:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  715c16:	eb 02                	jmp    0x715c1a
  715c18:	33 ff                	xor    edi,edi
  715c1a:	8b 11                	mov    edx,DWORD PTR [ecx]
  715c1c:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  715c1f:	8b 73 34             	mov    esi,DWORD PTR [ebx+0x34]
  715c22:	ff d0                	call   eax
  715c24:	50                   	push   eax
  715c25:	57                   	push   edi
  715c26:	8b ce                	mov    ecx,esi
  715c28:	e8 b3 6f 0a 00       	call   0x7bcbe0
  715c2d:	84 c0                	test   al,al
  715c2f:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  715c33:	5f                   	pop    edi
  715c34:	5e                   	pop    esi
  715c35:	0f 84 60 ff ff ff    	je     0x715b9b
  715c3b:	85 c9                	test   ecx,ecx
  715c3d:	74 07                	je     0x715c46
  715c3f:	8b 11                	mov    edx,DWORD PTR [ecx]
  715c41:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  715c44:	ff d0                	call   eax
  715c46:	8b cb                	mov    ecx,ebx
  715c48:	e8 a3 f8 ff ff       	call   0x7154f0
  715c4d:	5b                   	pop    ebx
  715c4e:	c2 04 00             	ret    0x4
