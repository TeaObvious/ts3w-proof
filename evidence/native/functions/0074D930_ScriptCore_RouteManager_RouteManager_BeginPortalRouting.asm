# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074d930,0x0074db29); analyst name RouteManager_BeginPortalRouting.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074d930 <.text+0x34c930>:
  74d930:	55                   	push   ebp
  74d931:	8b ec                	mov    ebp,esp
  74d933:	83 e4 f0             	and    esp,0xfffffff0
  74d936:	81 ec a4 00 00 00    	sub    esp,0xa4
  74d93c:	53                   	push   ebx
  74d93d:	56                   	push   esi
  74d93e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  74d941:	57                   	push   edi
  74d942:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  74d945:	8b c6                	mov    eax,esi
  74d947:	0b c7                	or     eax,edi
  74d949:	75 09                	jne    0x74d954
  74d94b:	33 c0                	xor    eax,eax
  74d94d:	5f                   	pop    edi
  74d94e:	5e                   	pop    esi
  74d94f:	5b                   	pop    ebx
  74d950:	8b e5                	mov    esp,ebp
  74d952:	5d                   	pop    ebp
  74d953:	c3                   	ret
  74d954:	e8 17 9c 1e 00       	call   0x937570
  74d959:	85 c0                	test   eax,eax
  74d95b:	74 ee                	je     0x74d94b
  74d95d:	57                   	push   edi
  74d95e:	56                   	push   esi
  74d95f:	8b c8                	mov    ecx,eax
  74d961:	e8 1a a6 1e 00       	call   0x937f80
  74d966:	85 c0                	test   eax,eax
  74d968:	74 e1                	je     0x74d94b
  74d96a:	8b 0d 38 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea138
  74d970:	51                   	push   ecx
  74d971:	8b c8                	mov    ecx,eax
  74d973:	e8 e8 68 1e 00       	call   0x934260
  74d978:	85 c0                	test   eax,eax
  74d97a:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  74d97e:	74 cb                	je     0x74d94b
  74d980:	e8 0b ba 01 00       	call   0x769390
  74d985:	8b 10                	mov    edx,DWORD PTR [eax]
  74d987:	8b c8                	mov    ecx,eax
  74d989:	8b 82 18 01 00 00    	mov    eax,DWORD PTR [edx+0x118]
  74d98f:	ff d0                	call   eax
  74d991:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  74d994:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  74d997:	8b ce                	mov    ecx,esi
  74d999:	0b cf                	or     ecx,edi
  74d99b:	8b d8                	mov    ebx,eax
  74d99d:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  74d9a1:	c7 44 24 28 00 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
  74d9a9:	74 31                	je     0x74d9dc
  74d9ab:	d9 45 5c             	fld    DWORD PTR [ebp+0x5c]
  74d9ae:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  74d9b4:	83 ec 08             	sub    esp,0x8
  74d9b7:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  74d9bb:	d9 45 54             	fld    DWORD PTR [ebp+0x54]
  74d9be:	d9 1c 24             	fstp   DWORD PTR [esp]
  74d9c1:	e8 0a ae 51 00       	call   0xc687d0
  74d9c6:	85 c0                	test   eax,eax
  74d9c8:	74 12                	je     0x74d9dc
  74d9ca:	8b 88 b4 02 00 00    	mov    ecx,DWORD PTR [eax+0x2b4]
  74d9d0:	8d 54 24 28          	lea    edx,[esp+0x28]
  74d9d4:	52                   	push   edx
  74d9d5:	57                   	push   edi
  74d9d6:	56                   	push   esi
  74d9d7:	e8 64 9c 3c 00       	call   0xb17640
  74d9dc:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  74d9e0:	f3 0f 10 4d 50       	movss  xmm1,DWORD PTR [ebp+0x50]
  74d9e5:	f3 0f 10 45 48       	movss  xmm0,DWORD PTR [ebp+0x48]
  74d9ea:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  74d9f0:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  74d9f6:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  74d9f9:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  74d9fc:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  74da02:	f3 0f 10 4d 4c       	movss  xmm1,DWORD PTR [ebp+0x4c]
  74da07:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  74da0d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  74da12:	f3 0f 10 4d 5c       	movss  xmm1,DWORD PTR [ebp+0x5c]
  74da17:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  74da1c:	f3 0f 10 45 34       	movss  xmm0,DWORD PTR [ebp+0x34]
  74da21:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  74da27:	f3 0f 10 45 30       	movss  xmm0,DWORD PTR [ebp+0x30]
  74da2c:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  74da32:	f3 0f 10 45 2c       	movss  xmm0,DWORD PTR [ebp+0x2c]
  74da37:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  74da3d:	f3 0f 10 45 28       	movss  xmm0,DWORD PTR [ebp+0x28]
  74da42:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  74da48:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  74da4d:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  74da52:	f3 0f 10 45 54       	movss  xmm0,DWORD PTR [ebp+0x54]
  74da57:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  74da5d:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  74da63:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  74da69:	f3 0f 10 4d 58       	movss  xmm1,DWORD PTR [ebp+0x58]
  74da6e:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  74da72:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  74da75:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  74da7b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  74da80:	0f 29 84 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  74da88:	f3 0f 10 45 44       	movss  xmm0,DWORD PTR [ebp+0x44]
  74da8d:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  74da91:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  74da94:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  74da9a:	f3 0f 10 45 40       	movss  xmm0,DWORD PTR [ebp+0x40]
  74da9f:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  74daa3:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  74daa7:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  74daad:	f3 0f 10 45 3c       	movss  xmm0,DWORD PTR [ebp+0x3c]
  74dab2:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  74dab6:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  74daba:	8b 45 64             	mov    eax,DWORD PTR [ebp+0x64]
  74dabd:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
  74dac1:	8b 55 60             	mov    edx,DWORD PTR [ebp+0x60]
  74dac4:	89 4c 24 54          	mov    DWORD PTR [esp+0x54],ecx
  74dac8:	8b 4d 68             	mov    ecx,DWORD PTR [ebp+0x68]
  74dacb:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  74dad1:	f3 0f 10 45 38       	movss  xmm0,DWORD PTR [ebp+0x38]
  74dad6:	89 84 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],eax
  74dadd:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  74dae3:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  74dae8:	89 94 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],edx
  74daef:	8b 55 6c             	mov    edx,DWORD PTR [ebp+0x6c]
  74daf2:	8d 44 24 30          	lea    eax,[esp+0x30]
  74daf6:	89 8c 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],ecx
  74dafd:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  74db01:	50                   	push   eax
  74db02:	89 5c 24 34          	mov    DWORD PTR [esp+0x34],ebx
  74db06:	89 74 24 3c          	mov    DWORD PTR [esp+0x3c],esi
  74db0a:	89 7c 24 40          	mov    DWORD PTR [esp+0x40],edi
  74db0e:	0f 29 84 24 94 00 00 00 	movaps XMMWORD PTR [esp+0x94],xmm0
  74db16:	89 94 24 b0 00 00 00 	mov    DWORD PTR [esp+0xb0],edx
  74db1d:	e8 be 6e 20 00       	call   0x9549e0
  74db22:	5f                   	pop    edi
  74db23:	5e                   	pop    esi
  74db24:	5b                   	pop    ebx
  74db25:	8b e5                	mov    esp,ebp
  74db27:	5d                   	pop    ebp
  74db28:	c3                   	ret
