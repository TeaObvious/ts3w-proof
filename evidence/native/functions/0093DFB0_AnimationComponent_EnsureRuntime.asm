# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0093dfb0, 0x0093e03d); analyst name AnimationComponent_EnsureRuntime.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093dfb0 <.text+0x53cfb0>:
  93dfb0:	56                   	push   esi
  93dfb1:	8b f1                	mov    esi,ecx
  93dfb3:	83 7e 24 00          	cmp    DWORD PTR [esi+0x24],0x0
  93dfb7:	57                   	push   edi
  93dfb8:	75 7e                	jne    0x93e038
  93dfba:	6a 00                	push   0x0
  93dfbc:	6a 00                	push   0x0
  93dfbe:	6a 00                	push   0x0
  93dfc0:	6a 00                	push   0x0
  93dfc2:	68 88 44 04 01       	push   0x1044488
  93dfc7:	68 c0 00 00 00       	push   0xc0
  93dfcc:	e8 2f 65 ba ff       	call   0x4e4500
  93dfd1:	83 c4 18             	add    esp,0x18
  93dfd4:	85 c0                	test   eax,eax
  93dfd6:	74 0d                	je     0x93dfe5
  93dfd8:	8d 4e 08             	lea    ecx,[esi+0x8]
  93dfdb:	51                   	push   ecx
  93dfdc:	8b c8                	mov    ecx,eax
  93dfde:	e8 bd ef ff ff       	call   0x93cfa0
  93dfe3:	eb 02                	jmp    0x93dfe7
  93dfe5:	33 c0                	xor    eax,eax
  93dfe7:	85 c0                	test   eax,eax
  93dfe9:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  93dfec:	75 05                	jne    0x93dff3
  93dfee:	32 c0                	xor    al,al
  93dff0:	5f                   	pop    edi
  93dff1:	5e                   	pop    esi
  93dff2:	c3                   	ret
  93dff3:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  93dff6:	85 c9                	test   ecx,ecx
  93dff8:	74 3e                	je     0x93e038
  93dffa:	8b 15 58 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea158
  93e000:	52                   	push   edx
  93e001:	e8 5a 62 ff ff       	call   0x934260
  93e006:	8b f8                	mov    edi,eax
  93e008:	85 ff                	test   edi,edi
  93e00a:	74 2c                	je     0x93e038
  93e00c:	8b cf                	mov    ecx,edi
  93e00e:	e8 ad 1e 01 00       	call   0x94fec0
  93e013:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  93e016:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  93e019:	0f 29 01             	movaps XMMWORD PTR [ecx],xmm0
  93e01c:	8b cf                	mov    ecx,edi
  93e01e:	e8 6d 57 b7 ff       	call   0x4b3790
  93e023:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  93e026:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  93e029:	0f 29 42 10          	movaps XMMWORD PTR [edx+0x10],xmm0
  93e02d:	8b 76 24             	mov    esi,DWORD PTR [esi+0x24]
  93e030:	0f 28 46 10          	movaps xmm0,XMMWORD PTR [esi+0x10]
  93e034:	0f 29 46 20          	movaps XMMWORD PTR [esi+0x20],xmm0
  93e038:	5f                   	pop    edi
  93e039:	b0 01                	mov    al,0x1
  93e03b:	5e                   	pop    esi
  93e03c:	c3                   	ret
