# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00ac5940 (Lot_UpdateWallMountedObjectsAtLevel)
Full Ghidra function-body envelope: 0x00ac5940..0x00ac5a33 (exclusive end)
Ghidra body ranges: [[00ac5940, 00ac5a32]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ac5940 <.text+0x6c4940>:
  ac5940:	83 ec 14             	sub    esp,0x14
  ac5943:	55                   	push   ebp
  ac5944:	57                   	push   edi
  ac5945:	8b f9                	mov    edi,ecx
  ac5947:	8b 8f 98 02 00 00    	mov    ecx,DWORD PTR [edi+0x298]
  ac594d:	e8 ee 24 08 00       	call   0xb47e40
  ac5952:	8b c8                	mov    ecx,eax
  ac5954:	0c ff                	or     al,0xff
  ac5956:	33 ed                	xor    ebp,ebp
  ac5958:	85 c9                	test   ecx,ecx
  ac595a:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  ac595e:	88 44 24 0c          	mov    BYTE PTR [esp+0xc],al
  ac5962:	88 44 24 0d          	mov    BYTE PTR [esp+0xd],al
  ac5966:	c6 44 24 0e 00       	mov    BYTE PTR [esp+0xe],0x0
  ac596b:	88 44 24 0f          	mov    BYTE PTR [esp+0xf],al
  ac596f:	88 44 24 10          	mov    BYTE PTR [esp+0x10],al
  ac5973:	c6 44 24 11 00       	mov    BYTE PTR [esp+0x11],0x0
  ac5978:	0f 8e ad 00 00 00    	jle    0xac5a2b
  ac597e:	53                   	push   ebx
  ac597f:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
  ac5983:	56                   	push   esi
  ac5984:	8b 8f 98 02 00 00    	mov    ecx,DWORD PTR [edi+0x298]
  ac598a:	8d 44 24 14          	lea    eax,[esp+0x14]
  ac598e:	50                   	push   eax
  ac598f:	55                   	push   ebp
  ac5990:	e8 cb 24 08 00       	call   0xb47e60
  ac5995:	0f be 4c 24 16       	movsx  ecx,BYTE PTR [esp+0x16]
  ac599a:	3b 4c 24 28          	cmp    ecx,DWORD PTR [esp+0x28]
  ac599e:	75 7c                	jne    0xac5a1c
  ac59a0:	8b 8f 98 02 00 00    	mov    ecx,DWORD PTR [edi+0x298]
  ac59a6:	6a 00                	push   0x0
  ac59a8:	8d 54 24 18          	lea    edx,[esp+0x18]
  ac59ac:	52                   	push   edx
  ac59ad:	e8 3e 24 08 00       	call   0xb47df0
  ac59b2:	8b f0                	mov    esi,eax
  ac59b4:	56                   	push   esi
  ac59b5:	e8 06 64 19 00       	call   0xc5bdc0
  ac59ba:	83 c4 04             	add    esp,0x4
  ac59bd:	84 c0                	test   al,al
  ac59bf:	74 5b                	je     0xac5a1c
  ac59c1:	83 7c 24 28 00       	cmp    DWORD PTR [esp+0x28],0x0
  ac59c6:	56                   	push   esi
  ac59c7:	7c 07                	jl     0xac59d0
  ac59c9:	e8 22 64 19 00       	call   0xc5bdf0
  ac59ce:	eb 05                	jmp    0xac59d5
  ac59d0:	e8 cb 65 19 00       	call   0xc5bfa0
  ac59d5:	83 c4 04             	add    esp,0x4
  ac59d8:	84 c0                	test   al,al
  ac59da:	74 40                	je     0xac5a1c
  ac59dc:	8a 4c 24 19          	mov    cl,BYTE PTR [esp+0x19]
  ac59e0:	66 8b 44 24 17       	mov    ax,WORD PTR [esp+0x17]
  ac59e5:	66 8b 54 24 14       	mov    dx,WORD PTR [esp+0x14]
  ac59ea:	53                   	push   ebx
  ac59eb:	88 4c 24 22          	mov    BYTE PTR [esp+0x22],cl
  ac59ef:	53                   	push   ebx
  ac59f0:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  ac59f4:	66 89 44 24 24       	mov    WORD PTR [esp+0x24],ax
  ac59f9:	8a 44 24 1e          	mov    al,BYTE PTR [esp+0x1e]
  ac59fd:	51                   	push   ecx
  ac59fe:	8b cf                	mov    ecx,edi
  ac5a00:	66 89 54 24 2b       	mov    WORD PTR [esp+0x2b],dx
  ac5a05:	88 44 24 2d          	mov    BYTE PTR [esp+0x2d],al
  ac5a09:	e8 82 ce ff ff       	call   0xac2890
  ac5a0e:	53                   	push   ebx
  ac5a0f:	53                   	push   ebx
  ac5a10:	8d 54 24 24          	lea    edx,[esp+0x24]
  ac5a14:	52                   	push   edx
  ac5a15:	8b cf                	mov    ecx,edi
  ac5a17:	e8 74 ce ff ff       	call   0xac2890
  ac5a1c:	83 c5 01             	add    ebp,0x1
  ac5a1f:	3b 6c 24 10          	cmp    ebp,DWORD PTR [esp+0x10]
  ac5a23:	0f 8c 5b ff ff ff    	jl     0xac5984
  ac5a29:	5e                   	pop    esi
  ac5a2a:	5b                   	pop    ebx
  ac5a2b:	5f                   	pop    edi
  ac5a2c:	5d                   	pop    ebp
  ac5a2d:	83 c4 14             	add    esp,0x14
  ac5a30:	c2 08 00             	ret    0x8
