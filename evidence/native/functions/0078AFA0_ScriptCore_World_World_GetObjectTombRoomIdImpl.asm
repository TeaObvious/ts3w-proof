# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0078afa0,0x0078b138); analyst name World_GetObjectTombRoomIdImpl.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078afa0 <.text+0x389fa0>:
  78afa0:	55                   	push   ebp
  78afa1:	8b ec                	mov    ebp,esp
  78afa3:	83 e4 f0             	and    esp,0xfffffff0
  78afa6:	83 ec 34             	sub    esp,0x34
  78afa9:	a1 c4 db 1e 01       	mov    eax,ds:0x11edbc4
  78afae:	53                   	push   ebx
  78afaf:	56                   	push   esi
  78afb0:	57                   	push   edi
  78afb1:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  78afb5:	e8 b6 c5 1a 00       	call   0x937570
  78afba:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  78afbd:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  78afc0:	51                   	push   ecx
  78afc1:	52                   	push   edx
  78afc2:	8b c8                	mov    ecx,eax
  78afc4:	e8 b7 cf 1a 00       	call   0x937f80
  78afc9:	8b f0                	mov    esi,eax
  78afcb:	85 f6                	test   esi,esi
  78afcd:	0f 84 5a 01 00 00    	je     0x78b12d
  78afd3:	8d 5e 04             	lea    ebx,[esi+0x4]
  78afd6:	8b c3                	mov    eax,ebx
  78afd8:	b9 01 00 00 00       	mov    ecx,0x1
  78afdd:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  78afe1:	8b 15 08 df 1e 01    	mov    edx,DWORD PTR ds:0x11edf08
  78afe7:	52                   	push   edx
  78afe8:	8b ce                	mov    ecx,esi
  78afea:	e8 71 92 1a 00       	call   0x934260
  78afef:	8b f8                	mov    edi,eax
  78aff1:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  78aff6:	50                   	push   eax
  78aff7:	8b ce                	mov    ecx,esi
  78aff9:	e8 62 92 1a 00       	call   0x934260
  78affe:	85 ff                	test   edi,edi
  78b000:	0f 84 0a 01 00 00    	je     0x78b110
  78b006:	85 c0                	test   eax,eax
  78b008:	0f 84 02 01 00 00    	je     0x78b110
  78b00e:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  78b012:	51                   	push   ecx
  78b013:	8b c8                	mov    ecx,eax
  78b015:	e8 16 ca 1c 00       	call   0x957a30
  78b01a:	50                   	push   eax
  78b01b:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  78b01f:	52                   	push   edx
  78b020:	e8 2b 11 fe ff       	call   0x76c150
  78b025:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  78b02b:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  78b02f:	f3 0f 5c 47 24       	subss  xmm0,DWORD PTR [edi+0x24]
  78b034:	83 c4 08             	add    esp,0x8
  78b037:	85 c9                	test   ecx,ecx
  78b039:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  78b03f:	0f 84 a1 00 00 00    	je     0x78b0e6
  78b045:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  78b049:	83 ec 08             	sub    esp,0x8
  78b04c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  78b050:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  78b054:	d9 1c 24             	fstp   DWORD PTR [esp]
  78b057:	e8 74 d7 4d 00       	call   0xc687d0
  78b05c:	85 c0                	test   eax,eax
  78b05e:	0f 84 82 00 00 00    	je     0x78b0e6
  78b064:	8b b8 98 02 00 00    	mov    edi,DWORD PTR [eax+0x298]
  78b06a:	85 ff                	test   edi,edi
  78b06c:	74 78                	je     0x78b0e6
  78b06e:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  78b076:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  78b07c:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  78b080:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  78b086:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  78b08c:	51                   	push   ecx
  78b08d:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  78b093:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  78b099:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  78b09f:	8d 54 24 34          	lea    edx,[esp+0x34]
  78b0a3:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  78b0a9:	f3 0f 11 4c 24 38    	movss  DWORD PTR [esp+0x38],xmm1
  78b0af:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  78b0b5:	0f 28 44 24 34       	movaps xmm0,XMMWORD PTR [esp+0x34]
  78b0ba:	52                   	push   edx
  78b0bb:	50                   	push   eax
  78b0bc:	c7 44 24 38 00 00 00 00 	mov    DWORD PTR [esp+0x38],0x0
  78b0c4:	0f 29 44 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm0
  78b0c9:	e8 92 17 35 00       	call   0xadc860
  78b0ce:	83 c4 0c             	add    esp,0xc
  78b0d1:	6a 00                	push   0x0
  78b0d3:	6a 00                	push   0x0
  78b0d5:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  78b0d9:	50                   	push   eax
  78b0da:	8b cf                	mov    ecx,edi
  78b0dc:	e8 df d1 3b 00       	call   0xb482c0
  78b0e1:	0f b7 f8             	movzx  edi,ax
  78b0e4:	eb 03                	jmp    0x78b0e9
  78b0e6:	83 cf ff             	or     edi,0xffffffff
  78b0e9:	8b cb                	mov    ecx,ebx
  78b0eb:	83 ca ff             	or     edx,0xffffffff
  78b0ee:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  78b0f2:	4a                   	dec    edx
  78b0f3:	75 11                	jne    0x78b106
  78b0f5:	b8 01 00 00 00       	mov    eax,0x1
  78b0fa:	87 03                	xchg   DWORD PTR [ebx],eax
  78b0fc:	8b 16                	mov    edx,DWORD PTR [esi]
  78b0fe:	8b 02                	mov    eax,DWORD PTR [edx]
  78b100:	6a 01                	push   0x1
  78b102:	8b ce                	mov    ecx,esi
  78b104:	ff d0                	call   eax
  78b106:	66 8b c7             	mov    ax,di
  78b109:	5f                   	pop    edi
  78b10a:	5e                   	pop    esi
  78b10b:	5b                   	pop    ebx
  78b10c:	8b e5                	mov    esp,ebp
  78b10e:	5d                   	pop    ebp
  78b10f:	c3                   	ret
  78b110:	8b cb                	mov    ecx,ebx
  78b112:	83 ca ff             	or     edx,0xffffffff
  78b115:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  78b119:	4a                   	dec    edx
  78b11a:	75 11                	jne    0x78b12d
  78b11c:	b8 01 00 00 00       	mov    eax,0x1
  78b121:	87 03                	xchg   DWORD PTR [ebx],eax
  78b123:	8b 16                	mov    edx,DWORD PTR [esi]
  78b125:	8b 02                	mov    eax,DWORD PTR [edx]
  78b127:	6a 01                	push   0x1
  78b129:	8b ce                	mov    ecx,esi
  78b12b:	ff d0                	call   eax
  78b12d:	5f                   	pop    edi
  78b12e:	5e                   	pop    esi
  78b12f:	66 0d ff ff          	or     ax,0xffff
  78b133:	5b                   	pop    ebx
  78b134:	8b e5                	mov    esp,ebp
  78b136:	5d                   	pop    ebp
  78b137:	c3                   	ret
