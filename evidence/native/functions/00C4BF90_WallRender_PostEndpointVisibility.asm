# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c4bf90 (WallRender_PostEndpointVisibility)
Full Ghidra function-body envelope: 0x00c4bf90..0x00c4c021 (exclusive end)
Ghidra body ranges: [[00c4bf90, 00c4c020]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c4bf90 <.text+0x84af90>:
  c4bf90:	56                   	push   esi
  c4bf91:	57                   	push   edi
  c4bf92:	8b f9                	mov    edi,ecx
  c4bf94:	e8 07 d4 b1 ff       	call   0x7693a0
  c4bf99:	8b f0                	mov    esi,eax
  c4bf9b:	85 f6                	test   esi,esi
  c4bf9d:	74 7d                	je     0xc4c01c
  c4bf9f:	6a 18                	push   0x18
  c4bfa1:	e8 aa 31 e9 ff       	call   0xadf150
  c4bfa6:	83 c4 04             	add    esp,0x4
  c4bfa9:	85 c0                	test   eax,eax
  c4bfab:	74 2c                	je     0xc4bfd9
  c4bfad:	c7 00 8c 5f 06 01    	mov    DWORD PTR [eax],0x1065f8c
  c4bfb3:	33 c9                	xor    ecx,ecx
  c4bfb5:	8d 50 04             	lea    edx,[eax+0x4]
  c4bfb8:	87 0a                	xchg   DWORD PTR [edx],ecx
  c4bfba:	c7 00 8c 5f 06 01    	mov    DWORD PTR [eax],0x1065f8c
  c4bfc0:	80 c9 ff             	or     cl,0xff
  c4bfc3:	88 48 10             	mov    BYTE PTR [eax+0x10],cl
  c4bfc6:	88 48 11             	mov    BYTE PTR [eax+0x11],cl
  c4bfc9:	c6 40 12 00          	mov    BYTE PTR [eax+0x12],0x0
  c4bfcd:	88 48 13             	mov    BYTE PTR [eax+0x13],cl
  c4bfd0:	88 48 14             	mov    BYTE PTR [eax+0x14],cl
  c4bfd3:	c6 40 15 00          	mov    BYTE PTR [eax+0x15],0x0
  c4bfd7:	eb 02                	jmp    0xc4bfdb
  c4bfd9:	33 c0                	xor    eax,eax
  c4bfdb:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  c4bfde:	8b 51 10             	mov    edx,DWORD PTR [ecx+0x10]
  c4bfe1:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  c4bfe4:	8b 49 14             	mov    ecx,DWORD PTR [ecx+0x14]
  c4bfe7:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  c4bfea:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  c4bfee:	8b 11                	mov    edx,DWORD PTR [ecx]
  c4bff0:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
  c4bff3:	66 8b 49 04          	mov    cx,WORD PTR [ecx+0x4]
  c4bff7:	8a 54 24 10          	mov    dl,BYTE PTR [esp+0x10]
  c4bffb:	66 89 48 14          	mov    WORD PTR [eax+0x14],cx
  c4bfff:	8a 4c 24 14          	mov    cl,BYTE PTR [esp+0x14]
  c4c003:	6a 00                	push   0x0
  c4c005:	88 48 17             	mov    BYTE PTR [eax+0x17],cl
  c4c008:	6a 00                	push   0x0
  c4c00a:	88 50 16             	mov    BYTE PTR [eax+0x16],dl
  c4c00d:	8b 16                	mov    edx,DWORD PTR [esi]
  c4c00f:	50                   	push   eax
  c4c010:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  c4c013:	68 68 6e a0 04       	push   0x4a06e68
  c4c018:	8b ce                	mov    ecx,esi
  c4c01a:	ff d0                	call   eax
  c4c01c:	5f                   	pop    edi
  c4c01d:	5e                   	pop    esi
  c4c01e:	c2 0c 00             	ret    0xc
