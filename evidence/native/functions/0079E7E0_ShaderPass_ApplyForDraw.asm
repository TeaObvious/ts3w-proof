# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0079e7e0,0x0079eb1d); analyst name ShaderPass_ApplyForDraw.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079e7e0 <.text+0x39d7e0>:
  79e7e0:	83 ec 18             	sub    esp,0x18
  79e7e3:	57                   	push   edi
  79e7e4:	8b f9                	mov    edi,ecx
  79e7e6:	83 7f 2c 00          	cmp    DWORD PTR [edi+0x2c],0x0
  79e7ea:	75 0f                	jne    0x79e7fb
  79e7ec:	83 7f 30 00          	cmp    DWORD PTR [edi+0x30],0x0
  79e7f0:	75 09                	jne    0x79e7fb
  79e7f2:	32 c0                	xor    al,al
  79e7f4:	5f                   	pop    edi
  79e7f5:	83 c4 18             	add    esp,0x18
  79e7f8:	c2 08 00             	ret    0x8
  79e7fb:	83 7f 04 00          	cmp    DWORD PTR [edi+0x4],0x0
  79e7ff:	53                   	push   ebx
  79e800:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  79e804:	74 0b                	je     0x79e811
  79e806:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  79e80a:	50                   	push   eax
  79e80b:	53                   	push   ebx
  79e80c:	e8 af ec ff ff       	call   0x79d4c0
  79e811:	39 7b 54             	cmp    DWORD PTR [ebx+0x54],edi
  79e814:	c6 44 24 0c 00       	mov    BYTE PTR [esp+0xc],0x0
  79e819:	74 08                	je     0x79e823
  79e81b:	89 7b 54             	mov    DWORD PTR [ebx+0x54],edi
  79e81e:	c6 44 24 0c 01       	mov    BYTE PTR [esp+0xc],0x1
  79e823:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  79e828:	56                   	push   esi
  79e829:	8b 73 0c             	mov    esi,DWORD PTR [ebx+0xc]
  79e82c:	74 50                	je     0x79e87e
  79e82e:	8b 47 2c             	mov    eax,DWORD PTR [edi+0x2c]
  79e831:	85 c0                	test   eax,eax
  79e833:	8b 0e                	mov    ecx,DWORD PTR [esi]
  79e835:	74 0f                	je     0x79e846
  79e837:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  79e83a:	8b 81 ac 01 00 00    	mov    eax,DWORD PTR [ecx+0x1ac]
  79e840:	52                   	push   edx
  79e841:	56                   	push   esi
  79e842:	ff d0                	call   eax
  79e844:	eb 0b                	jmp    0x79e851
  79e846:	8b 91 ac 01 00 00    	mov    edx,DWORD PTR [ecx+0x1ac]
  79e84c:	6a 00                	push   0x0
  79e84e:	56                   	push   esi
  79e84f:	ff d2                	call   edx
  79e851:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  79e854:	85 c0                	test   eax,eax
  79e856:	0f 84 af 00 00 00    	je     0x79e90b
  79e85c:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  79e85f:	8b 0e                	mov    ecx,DWORD PTR [esi]
  79e861:	8b 81 70 01 00 00    	mov    eax,DWORD PTR [ecx+0x170]
  79e867:	52                   	push   edx
  79e868:	56                   	push   esi
  79e869:	ff d0                	call   eax
  79e86b:	8b 47 38             	mov    eax,DWORD PTR [edi+0x38]
  79e86e:	85 c0                	test   eax,eax
  79e870:	74 0c                	je     0x79e87e
  79e872:	8b 4f 34             	mov    ecx,DWORD PTR [edi+0x34]
  79e875:	50                   	push   eax
  79e876:	51                   	push   ecx
  79e877:	8b cb                	mov    ecx,ebx
  79e879:	e8 b2 07 e7 ff       	call   0x60f030
  79e87e:	8b 47 3c             	mov    eax,DWORD PTR [edi+0x3c]
  79e881:	85 c0                	test   eax,eax
  79e883:	8b 0d 30 85 1d 01    	mov    ecx,DWORD PTR ds:0x11d8530
  79e889:	55                   	push   ebp
  79e88a:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  79e88e:	0f 84 e6 00 00 00    	je     0x79e97a
  79e894:	c7 44 24 1c 00 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  79e89c:	0f 86 d8 00 00 00    	jbe    0x79e97a
  79e8a2:	33 f6                	xor    esi,esi
  79e8a4:	8b 4f 40             	mov    ecx,DWORD PTR [edi+0x40]
  79e8a7:	8b 44 31 04          	mov    eax,DWORD PTR [ecx+esi*1+0x4]
  79e8ab:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  79e8af:	03 ce                	add    ecx,esi
  79e8b1:	c1 e0 04             	shl    eax,0x4
  79e8b4:	03 42 04             	add    eax,DWORD PTR [edx+0x4]
  79e8b7:	0f b7 50 04          	movzx  edx,WORD PTR [eax+0x4]
  79e8bb:	66 85 d2             	test   dx,dx
  79e8be:	74 0f                	je     0x79e8cf
  79e8c0:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  79e8c4:	66 3b 55 10          	cmp    dx,WORD PTR [ebp+0x10]
  79e8c8:	74 05                	je     0x79e8cf
  79e8ca:	b8 e0 68 01 01       	mov    eax,0x10168e0
  79e8cf:	66 83 78 06 01       	cmp    WORD PTR [eax+0x6],0x1
  79e8d4:	0f 85 89 00 00 00    	jne    0x79e963
  79e8da:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  79e8dd:	85 d2                	test   edx,edx
  79e8df:	74 74                	je     0x79e955
  79e8e1:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
  79e8e5:	74 6e                	je     0x79e955
  79e8e7:	8b 09                	mov    ecx,DWORD PTR [ecx]
  79e8e9:	f3 0f 10 02          	movss  xmm0,DWORD PTR [edx]
  79e8ed:	8d 41 dc             	lea    eax,[ecx-0x24]
  79e8f0:	3d 9f 00 00 00       	cmp    eax,0x9f
  79e8f5:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  79e8fb:	77 2e                	ja     0x79e92b
  79e8fd:	0f b6 80 28 eb 79 00 	movzx  eax,BYTE PTR [eax+0x79eb28]
  79e904:	ff 24 85 20 eb 79 00 	jmp    DWORD PTR [eax*4+0x79eb20]
  79e90b:	8b 16                	mov    edx,DWORD PTR [esi]
  79e90d:	8b 82 70 01 00 00    	mov    eax,DWORD PTR [edx+0x170]
  79e913:	6a 00                	push   0x0
  79e915:	56                   	push   esi
  79e916:	ff d0                	call   eax
  79e918:	5e                   	pop    esi
  79e919:	5b                   	pop    ebx
  79e91a:	32 c0                	xor    al,al
  79e91c:	5f                   	pop    edi
  79e91d:	83 c4 18             	add    esp,0x18
  79e920:	c2 08 00             	ret    0x8
  79e923:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  79e927:	50                   	push   eax
  79e928:	51                   	push   ecx
  79e929:	eb 31                	jmp    0x79e95c
  79e92b:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  79e92f:	d9 7c 24 30          	fnstcw WORD PTR [esp+0x30]
  79e933:	0f b7 44 24 30       	movzx  eax,WORD PTR [esp+0x30]
  79e938:	0d 00 0c 00 00       	or     eax,0xc00
  79e93d:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  79e941:	d9 6c 24 20          	fldcw  WORD PTR [esp+0x20]
  79e945:	df 7c 24 20          	fistp  QWORD PTR [esp+0x20]
  79e949:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  79e94d:	50                   	push   eax
  79e94e:	51                   	push   ecx
  79e94f:	d9 6c 24 38          	fldcw  WORD PTR [esp+0x38]
  79e953:	eb 07                	jmp    0x79e95c
  79e955:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  79e958:	8b 01                	mov    eax,DWORD PTR [ecx]
  79e95a:	52                   	push   edx
  79e95b:	50                   	push   eax
  79e95c:	8b cb                	mov    ecx,ebx
  79e95e:	e8 7d 06 e7 ff       	call   0x60efe0
  79e963:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  79e967:	83 c0 01             	add    eax,0x1
  79e96a:	83 c6 0c             	add    esi,0xc
  79e96d:	3b 47 3c             	cmp    eax,DWORD PTR [edi+0x3c]
  79e970:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  79e974:	0f 82 2a ff ff ff    	jb     0x79e8a4
  79e97a:	8b 87 c8 00 00 00    	mov    eax,DWORD PTR [edi+0xc8]
  79e980:	85 c0                	test   eax,eax
  79e982:	0f 84 ce 00 00 00    	je     0x79ea56
  79e988:	c7 44 24 18 00 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  79e990:	0f 86 c0 00 00 00    	jbe    0x79ea56
  79e996:	33 db                	xor    ebx,ebx
  79e998:	eb 06                	jmp    0x79e9a0
  79e99a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  79e9a0:	8b 8f cc 00 00 00    	mov    ecx,DWORD PTR [edi+0xcc]
  79e9a6:	8b 44 19 04          	mov    eax,DWORD PTR [ecx+ebx*1+0x4]
  79e9aa:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  79e9ae:	03 cb                	add    ecx,ebx
  79e9b0:	c1 e0 04             	shl    eax,0x4
  79e9b3:	03 42 04             	add    eax,DWORD PTR [edx+0x4]
  79e9b6:	0f b7 50 04          	movzx  edx,WORD PTR [eax+0x4]
  79e9ba:	66 85 d2             	test   dx,dx
  79e9bd:	74 0f                	je     0x79e9ce
  79e9bf:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  79e9c3:	66 3b 56 10          	cmp    dx,WORD PTR [esi+0x10]
  79e9c7:	74 05                	je     0x79e9ce
  79e9c9:	b8 e0 68 01 01       	mov    eax,0x10168e0
  79e9ce:	8b 31                	mov    esi,DWORD PTR [ecx]
  79e9d0:	8b d6                	mov    edx,esi
  79e9d2:	0f b7 ee             	movzx  ebp,si
  79e9d5:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
  79e9d8:	c1 ea 10             	shr    edx,0x10
  79e9db:	85 f6                	test   esi,esi
  79e9dd:	74 4a                	je     0x79ea29
  79e9df:	83 78 08 00          	cmp    DWORD PTR [eax+0x8],0x0
  79e9e3:	74 44                	je     0x79ea29
  79e9e5:	66 83 78 06 01       	cmp    WORD PTR [eax+0x6],0x1
  79e9ea:	75 4c                	jne    0x79ea38
  79e9ec:	83 fd 08             	cmp    ebp,0x8
  79e9ef:	f3 0f 10 06          	movss  xmm0,DWORD PTR [esi]
  79e9f3:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  79e9f9:	75 06                	jne    0x79ea01
  79e9fb:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  79e9ff:	eb 2b                	jmp    0x79ea2c
  79ea01:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  79ea05:	d9 7c 24 30          	fnstcw WORD PTR [esp+0x30]
  79ea09:	0f b7 44 24 30       	movzx  eax,WORD PTR [esp+0x30]
  79ea0e:	0d 00 0c 00 00       	or     eax,0xc00
  79ea13:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  79ea17:	d9 6c 24 20          	fldcw  WORD PTR [esp+0x20]
  79ea1b:	df 7c 24 20          	fistp  QWORD PTR [esp+0x20]
  79ea1f:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  79ea23:	d9 6c 24 30          	fldcw  WORD PTR [esp+0x30]
  79ea27:	eb 03                	jmp    0x79ea2c
  79ea29:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  79ea2c:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  79ea30:	50                   	push   eax
  79ea31:	55                   	push   ebp
  79ea32:	52                   	push   edx
  79ea33:	e8 88 16 e7 ff       	call   0x6100c0
  79ea38:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  79ea3c:	83 c0 01             	add    eax,0x1
  79ea3f:	83 c3 0c             	add    ebx,0xc
  79ea42:	3b 87 c8 00 00 00    	cmp    eax,DWORD PTR [edi+0xc8]
  79ea48:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  79ea4c:	0f 82 4e ff ff ff    	jb     0x79e9a0
  79ea52:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
  79ea56:	33 f6                	xor    esi,esi
  79ea58:	8d 6f 48             	lea    ebp,[edi+0x48]
  79ea5b:	eb 03                	jmp    0x79ea60
  79ea5d:	8d 49 00             	lea    ecx,[ecx+0x0]
  79ea60:	ba 01 00 00 00       	mov    edx,0x1
  79ea65:	8b ce                	mov    ecx,esi
  79ea67:	d3 e2                	shl    edx,cl
  79ea69:	85 57 44             	test   DWORD PTR [edi+0x44],edx
  79ea6c:	74 45                	je     0x79eab3
  79ea6e:	8b 85 c8 00 00 00    	mov    eax,DWORD PTR [ebp+0xc8]
  79ea74:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  79ea78:	c1 e0 04             	shl    eax,0x4
  79ea7b:	03 42 04             	add    eax,DWORD PTR [edx+0x4]
  79ea7e:	0f b7 48 04          	movzx  ecx,WORD PTR [eax+0x4]
  79ea82:	66 85 c9             	test   cx,cx
  79ea85:	74 0b                	je     0x79ea92
  79ea87:	66 3b 4a 10          	cmp    cx,WORD PTR [edx+0x10]
  79ea8b:	74 05                	je     0x79ea92
  79ea8d:	b8 e0 68 01 01       	mov    eax,0x10168e0
  79ea92:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  79ea95:	50                   	push   eax
  79ea96:	56                   	push   esi
  79ea97:	8b cb                	mov    ecx,ebx
  79ea99:	e8 12 09 e7 ff       	call   0x60f3b0
  79ea9e:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  79eaa3:	74 0e                	je     0x79eab3
  79eaa5:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  79eaa8:	85 c9                	test   ecx,ecx
  79eaaa:	74 07                	je     0x79eab3
  79eaac:	56                   	push   esi
  79eaad:	53                   	push   ebx
  79eaae:	e8 dd ba ff ff       	call   0x79a590
  79eab3:	83 c6 01             	add    esi,0x1
  79eab6:	83 c5 04             	add    ebp,0x4
  79eab9:	83 fe 10             	cmp    esi,0x10
  79eabc:	72 a2                	jb     0x79ea60
  79eabe:	8b 4f 44             	mov    ecx,DWORD PTR [edi+0x44]
  79eac1:	51                   	push   ecx
  79eac2:	8b cb                	mov    ecx,ebx
  79eac4:	e8 c7 07 e7 ff       	call   0x60f290
  79eac9:	8b 57 44             	mov    edx,DWORD PTR [edi+0x44]
  79eacc:	81 f2 ff ff 00 00    	xor    edx,0xffff
  79ead2:	52                   	push   edx
  79ead3:	8b cb                	mov    ecx,ebx
  79ead5:	e8 56 09 e7 ff       	call   0x60f430
  79eada:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  79eade:	8b 35 30 85 1d 01    	mov    esi,DWORD PTR ds:0x11d8530
  79eae4:	55                   	push   ebp
  79eae5:	6a 01                	push   0x1
  79eae7:	8d 87 68 01 00 00    	lea    eax,[edi+0x168]
  79eaed:	50                   	push   eax
  79eaee:	56                   	push   esi
  79eaef:	53                   	push   ebx
  79eaf0:	8b cf                	mov    ecx,edi
  79eaf2:	e8 c9 f8 ff ff       	call   0x79e3c0
  79eaf7:	55                   	push   ebp
  79eaf8:	6a 00                	push   0x0
  79eafa:	8d 8f 78 01 00 00    	lea    ecx,[edi+0x178]
  79eb00:	51                   	push   ecx
  79eb01:	56                   	push   esi
  79eb02:	53                   	push   ebx
  79eb03:	8b cf                	mov    ecx,edi
  79eb05:	e8 b6 f8 ff ff       	call   0x79e3c0
  79eb0a:	8b cb                	mov    ecx,ebx
  79eb0c:	e8 0f 06 e7 ff       	call   0x60f120
  79eb11:	5d                   	pop    ebp
  79eb12:	5e                   	pop    esi
  79eb13:	5b                   	pop    ebx
  79eb14:	b0 01                	mov    al,0x1
  79eb16:	5f                   	pop    edi
  79eb17:	83 c4 18             	add    esp,0x18
  79eb1a:	c2 08 00             	ret    0x8
