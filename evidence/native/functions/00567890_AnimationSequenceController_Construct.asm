# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00567890, 0x005679a7); analyst name AnimationSequenceController_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00567890 <.text+0x166890>:
  567890:	53                   	push   ebx
  567891:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  567895:	56                   	push   esi
  567896:	57                   	push   edi
  567897:	53                   	push   ebx
  567898:	8b f1                	mov    esi,ecx
  56789a:	e8 a1 e5 ff ff       	call   0x565e40
  56789f:	0f 57 c0             	xorps  xmm0,xmm0
  5678a2:	c7 46 28 60 2a fc 00 	mov    DWORD PTR [esi+0x28],0xfc2a60
  5678a9:	33 ff                	xor    edi,edi
  5678ab:	c7 06 18 2b fc 00    	mov    DWORD PTR [esi],0xfc2b18
  5678b1:	c7 46 08 0c 2b fc 00 	mov    DWORD PTR [esi+0x8],0xfc2b0c
  5678b8:	c7 46 0c 08 2b fc 00 	mov    DWORD PTR [esi+0xc],0xfc2b08
  5678bf:	c7 46 28 00 2b fc 00 	mov    DWORD PTR [esi+0x28],0xfc2b00
  5678c6:	89 7e 2c             	mov    DWORD PTR [esi+0x2c],edi
  5678c9:	c7 46 38 d8 2a fc 00 	mov    DWORD PTR [esi+0x38],0xfc2ad8
  5678d0:	57                   	push   edi
  5678d1:	57                   	push   edi
  5678d2:	8d 46 30             	lea    eax,[esi+0x30]
  5678d5:	89 00                	mov    DWORD PTR [eax],eax
  5678d7:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  5678da:	89 7e 3c             	mov    DWORD PTR [esi+0x3c],edi
  5678dd:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  5678e0:	89 7e 44             	mov    DWORD PTR [esi+0x44],edi
  5678e3:	f3 0f 11 46 48       	movss  DWORD PTR [esi+0x48],xmm0
  5678e8:	f3 0f 11 46 4c       	movss  DWORD PTR [esi+0x4c],xmm0
  5678ed:	57                   	push   edi
  5678ee:	57                   	push   edi
  5678ef:	89 7e 50             	mov    DWORD PTR [esi+0x50],edi
  5678f2:	89 7e 54             	mov    DWORD PTR [esi+0x54],edi
  5678f5:	89 7e 58             	mov    DWORD PTR [esi+0x58],edi
  5678f8:	f3 0f 11 46 5c       	movss  DWORD PTR [esi+0x5c],xmm0
  5678fd:	f3 0f 11 46 60       	movss  DWORD PTR [esi+0x60],xmm0
  567902:	68 88 2a fc 00       	push   0xfc2a88
  567907:	6a 38                	push   0x38
  567909:	f3 0f 11 46 64       	movss  DWORD PTR [esi+0x64],xmm0
  56790e:	c7 46 6c 10 00 00 00 	mov    DWORD PTR [esi+0x6c],0x10
  567915:	e8 e6 cb f7 ff       	call   0x4e4500
  56791a:	83 c4 18             	add    esp,0x18
  56791d:	3b c7                	cmp    eax,edi
  56791f:	74 0a                	je     0x56792b
  567921:	53                   	push   ebx
  567922:	8b c8                	mov    ecx,eax
  567924:	e8 17 48 00 00       	call   0x56c140
  567929:	eb 02                	jmp    0x56792d
  56792b:	33 c0                	xor    eax,eax
  56792d:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  567930:	3b c1                	cmp    eax,ecx
  567932:	74 2a                	je     0x56795e
  567934:	3b c7                	cmp    eax,edi
  567936:	ba 01 00 00 00       	mov    edx,0x1
  56793b:	74 03                	je     0x567940
  56793d:	01 50 04             	add    DWORD PTR [eax+0x4],edx
  567940:	3b cf                	cmp    ecx,edi
  567942:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  567945:	74 17                	je     0x56795e
  567947:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  56794a:	83 c0 ff             	add    eax,0xffffffff
  56794d:	3b c7                	cmp    eax,edi
  56794f:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  567952:	75 0a                	jne    0x56795e
  567954:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  567957:	8b 01                	mov    eax,DWORD PTR [ecx]
  567959:	52                   	push   edx
  56795a:	8b 10                	mov    edx,DWORD PTR [eax]
  56795c:	ff d2                	call   edx
  56795e:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  567962:	3d 10 27 00 00       	cmp    eax,0x2710
  567967:	89 46 68             	mov    DWORD PTR [esi+0x68],eax
  56796a:	75 33                	jne    0x56799f
  56796c:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  56796f:	3b cf                	cmp    ecx,edi
  567971:	74 2c                	je     0x56799f
  567973:	8b 01                	mov    eax,DWORD PTR [ecx]
  567975:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  567978:	ff d2                	call   edx
  56797a:	85 c0                	test   eax,eax
  56797c:	74 21                	je     0x56799f
  56797e:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  567981:	8b 01                	mov    eax,DWORD PTR [ecx]
  567983:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  567986:	8b 3d fc a0 1e 01    	mov    edi,DWORD PTR ds:0x11ea0fc
  56798c:	ff d2                	call   edx
  56798e:	85 78 2c             	test   DWORD PTR [eax+0x2c],edi
  567991:	8b c6                	mov    eax,esi
  567993:	74 0c                	je     0x5679a1
  567995:	83 66 6c ef          	and    DWORD PTR [esi+0x6c],0xffffffef
  567999:	5f                   	pop    edi
  56799a:	5e                   	pop    esi
  56799b:	5b                   	pop    ebx
  56799c:	c2 08 00             	ret    0x8
  56799f:	8b c6                	mov    eax,esi
  5679a1:	5f                   	pop    edi
  5679a2:	5e                   	pop    esi
  5679a3:	5b                   	pop    ebx
  5679a4:	c2 08 00             	ret    0x8
