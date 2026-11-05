# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00722ef0 (TextureProxy_SubmitKey)
Complete body envelope: 0x00722ef0..0x00722f5a (exclusive end)
Body ranges: [[00722ef0, 00722f59]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00722ef0 <.text+0x321ef0>:
  722ef0:	a1 84 4c 1d 01       	mov    eax,ds:0x11d4c84
  722ef5:	85 c0                	test   eax,eax
  722ef7:	56                   	push   esi
  722ef8:	74 5a                	je     0x722f54
  722efa:	8b 10                	mov    edx,DWORD PTR [eax]
  722efc:	8b 52 34             	mov    edx,DWORD PTR [edx+0x34]
  722eff:	6a 01                	push   0x1
  722f01:	8d 71 10             	lea    esi,[ecx+0x10]
  722f04:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  722f08:	51                   	push   ecx
  722f09:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  722f0d:	68 a0 b3 d4 00       	push   0xd4b3a0
  722f12:	6a 00                	push   0x0
  722f14:	51                   	push   ecx
  722f15:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  722f19:	56                   	push   esi
  722f1a:	68 a7 d7 b3 00       	push   0xb3d7a7
  722f1f:	51                   	push   ecx
  722f20:	8b c8                	mov    ecx,eax
  722f22:	ff d2                	call   edx
  722f24:	84 c0                	test   al,al
  722f26:	74 2c                	je     0x722f54
  722f28:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  722f2d:	75 06                	jne    0x722f35
  722f2f:	b0 01                	mov    al,0x1
  722f31:	5e                   	pop    esi
  722f32:	c2 10 00             	ret    0x10
  722f35:	8b 0d 84 4c 1d 01    	mov    ecx,DWORD PTR ds:0x11d4c84
  722f3b:	85 c9                	test   ecx,ecx
  722f3d:	74 08                	je     0x722f47
  722f3f:	8b 01                	mov    eax,DWORD PTR [ecx]
  722f41:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
  722f44:	56                   	push   esi
  722f45:	ff d2                	call   edx
  722f47:	8b 06                	mov    eax,DWORD PTR [esi]
  722f49:	85 c0                	test   eax,eax
  722f4b:	74 07                	je     0x722f54
  722f4d:	8b 0e                	mov    ecx,DWORD PTR [esi]
  722f4f:	f6 c1 03             	test   cl,0x3
  722f52:	74 db                	je     0x722f2f
  722f54:	32 c0                	xor    al,al
  722f56:	5e                   	pop    esi
  722f57:	c2 10 00             	ret    0x10
