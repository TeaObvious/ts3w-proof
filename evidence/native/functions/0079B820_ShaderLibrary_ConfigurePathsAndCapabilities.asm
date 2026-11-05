# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079b820, 0x0079bb5a); analyst name ShaderLibrary_ConfigurePathsAndCapabilities.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079b820 <.text+0x39a820>:
  79b820:	a1 b0 0a 15 01       	mov    eax,ds:0x1150ab0
  79b825:	83 ec 54             	sub    esp,0x54
  79b828:	53                   	push   ebx
  79b829:	55                   	push   ebp
  79b82a:	56                   	push   esi
  79b82b:	57                   	push   edi
  79b82c:	6a 00                	push   0x0
  79b82e:	68 fc 89 ff 00       	push   0xff89fc
  79b833:	50                   	push   eax
  79b834:	8b f9                	mov    edi,ecx
  79b836:	e8 f5 f5 de ff       	call   0x58ae30
  79b83b:	8a 4c 24 74          	mov    cl,BYTE PTR [esp+0x74]
  79b83f:	8a 54 24 78          	mov    dl,BYTE PTR [esp+0x78]
  79b843:	6a 03                	push   0x3
  79b845:	88 47 48             	mov    BYTE PTR [edi+0x48],al
  79b848:	88 4f 49             	mov    BYTE PTR [edi+0x49],cl
  79b84b:	88 57 4a             	mov    BYTE PTR [edi+0x4a],dl
  79b84e:	a1 b0 0a 15 01       	mov    eax,ds:0x1150ab0
  79b853:	68 38 6b 01 01       	push   0x1016b38
  79b858:	50                   	push   eax
  79b859:	e8 a2 f6 de ff       	call   0x58af00
  79b85e:	8b 0d b0 0a 15 01    	mov    ecx,DWORD PTR ds:0x1150ab0
  79b864:	6a 01                	push   0x1
  79b866:	68 30 8a ff 00       	push   0xff8a30
  79b86b:	51                   	push   ecx
  79b86c:	8b f0                	mov    esi,eax
  79b86e:	e8 bd f5 de ff       	call   0x58ae30
  79b873:	83 c4 24             	add    esp,0x24
  79b876:	84 c0                	test   al,al
  79b878:	75 04                	jne    0x79b87e
  79b87a:	33 f6                	xor    esi,esi
  79b87c:	eb 68                	jmp    0x79b8e6
  79b87e:	83 fe 04             	cmp    esi,0x4
  79b881:	75 21                	jne    0x79b8a4
  79b883:	8b 0d c8 fc 1c 01    	mov    ecx,DWORD PTR ds:0x11cfcc8
  79b889:	6a 03                	push   0x3
  79b88b:	6a 01                	push   0x1
  79b88d:	68 48 50 43 46       	push   0x46435048
  79b892:	e8 99 43 e7 ff       	call   0x60fc30
  79b897:	f6 d8                	neg    al
  79b899:	1b c0                	sbb    eax,eax
  79b89b:	f7 d8                	neg    eax
  79b89d:	83 c0 01             	add    eax,0x1
  79b8a0:	8b f0                	mov    esi,eax
  79b8a2:	eb 42                	jmp    0x79b8e6
  79b8a4:	83 fe 03             	cmp    esi,0x3
  79b8a7:	75 3d                	jne    0x79b8e6
  79b8a9:	8b 0d c8 fc 1c 01    	mov    ecx,DWORD PTR ds:0x11cfcc8
  79b8af:	e8 7c 44 e7 ff       	call   0x60fd30
  79b8b4:	84 c0                	test   al,al
  79b8b6:	74 07                	je     0x79b8bf
  79b8b8:	be 01 00 00 00       	mov    esi,0x1
  79b8bd:	eb 27                	jmp    0x79b8e6
  79b8bf:	8b 0d c8 fc 1c 01    	mov    ecx,DWORD PTR ds:0x11cfcc8
  79b8c5:	e8 36 44 e7 ff       	call   0x60fd00
  79b8ca:	84 c0                	test   al,al
  79b8cc:	75 13                	jne    0x79b8e1
  79b8ce:	8b 0d c8 fc 1c 01    	mov    ecx,DWORD PTR ds:0x11cfcc8
  79b8d4:	e8 67 44 e7 ff       	call   0x60fd40
  79b8d9:	84 c0                	test   al,al
  79b8db:	75 04                	jne    0x79b8e1
  79b8dd:	33 f6                	xor    esi,esi
  79b8df:	eb 05                	jmp    0x79b8e6
  79b8e1:	be 02 00 00 00       	mov    esi,0x2
  79b8e6:	83 ee 01             	sub    esi,0x1
  79b8e9:	74 17                	je     0x79b902
  79b8eb:	83 ee 01             	sub    esi,0x1
  79b8ee:	74 09                	je     0x79b8f9
  79b8f0:	c7 47 44 00 01 00 00 	mov    DWORD PTR [edi+0x44],0x100
  79b8f7:	eb 10                	jmp    0x79b909
  79b8f9:	c7 47 44 00 02 00 00 	mov    DWORD PTR [edi+0x44],0x200
  79b900:	eb 07                	jmp    0x79b909
  79b902:	c7 47 44 00 04 00 00 	mov    DWORD PTR [edi+0x44],0x400
  79b909:	80 7f 49 00          	cmp    BYTE PTR [edi+0x49],0x0
  79b90d:	75 05                	jne    0x79b914
  79b90f:	e8 7c f8 ff ff       	call   0x79b190
  79b914:	8b 07                	mov    eax,DWORD PTR [edi]
  79b916:	3b 47 04             	cmp    eax,DWORD PTR [edi+0x4]
  79b919:	74 0a                	je     0x79b925
  79b91b:	66 c7 00 00 00       	mov    WORD PTR [eax],0x0
  79b920:	8b 17                	mov    edx,DWORD PTR [edi]
  79b922:	89 57 04             	mov    DWORD PTR [edi+0x4],edx
  79b925:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  79b928:	3b 47 14             	cmp    eax,DWORD PTR [edi+0x14]
  79b92b:	8d 6f 10             	lea    ebp,[edi+0x10]
  79b92e:	74 0b                	je     0x79b93b
  79b930:	66 c7 00 00 00       	mov    WORD PTR [eax],0x0
  79b935:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  79b938:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax
  79b93b:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  79b940:	e8 9b d8 da ff       	call   0x5491e0
  79b945:	8d 5f 20             	lea    ebx,[edi+0x20]
  79b948:	3b c3                	cmp    eax,ebx
  79b94a:	74 0e                	je     0x79b95a
  79b94c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  79b94f:	8b 10                	mov    edx,DWORD PTR [eax]
  79b951:	51                   	push   ecx
  79b952:	52                   	push   edx
  79b953:	8b cb                	mov    ecx,ebx
  79b955:	e8 06 d4 c6 ff       	call   0x408d60
  79b95a:	b8 24 6b 01 01       	mov    eax,0x1016b24
  79b95f:	90                   	nop
  79b960:	83 c0 02             	add    eax,0x2
  79b963:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  79b967:	75 f7                	jne    0x79b960
  79b969:	2d 24 6b 01 01       	sub    eax,0x1016b24
  79b96e:	d1 f8                	sar    eax,1
  79b970:	8d 04 45 24 6b 01 01 	lea    eax,[eax*2+0x1016b24]
  79b977:	50                   	push   eax
  79b978:	68 24 6b 01 01       	push   0x1016b24
  79b97d:	8b cb                	mov    ecx,ebx
  79b97f:	e8 0c d2 c6 ff       	call   0x408b90
  79b984:	b8 18 6b 01 01       	mov    eax,0x1016b18
  79b989:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  79b990:	83 c0 02             	add    eax,0x2
  79b993:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  79b997:	75 f7                	jne    0x79b990
  79b999:	2d 18 6b 01 01       	sub    eax,0x1016b18
  79b99e:	d1 f8                	sar    eax,1
  79b9a0:	8d 0c 45 18 6b 01 01 	lea    ecx,[eax*2+0x1016b18]
  79b9a7:	51                   	push   ecx
  79b9a8:	68 18 6b 01 01       	push   0x1016b18
  79b9ad:	8b cb                	mov    ecx,ebx
  79b9af:	e8 dc d1 c6 ff       	call   0x408b90
  79b9b4:	b8 04 6b 01 01       	mov    eax,0x1016b04
  79b9b9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  79b9c0:	83 c0 02             	add    eax,0x2
  79b9c3:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  79b9c7:	75 f7                	jne    0x79b9c0
  79b9c9:	2d 04 6b 01 01       	sub    eax,0x1016b04
  79b9ce:	d1 f8                	sar    eax,1
  79b9d0:	8d 14 45 04 6b 01 01 	lea    edx,[eax*2+0x1016b04]
  79b9d7:	52                   	push   edx
  79b9d8:	68 04 6b 01 01       	push   0x1016b04
  79b9dd:	8b cb                	mov    ecx,ebx
  79b9df:	e8 ac d1 c6 ff       	call   0x408b90
  79b9e4:	68 f4 6a 01 01       	push   0x1016af4
  79b9e9:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  79b9ed:	e8 6e a4 f9 ff       	call   0x735e60
  79b9f2:	b8 18 6b 01 01       	mov    eax,0x1016b18
  79b9f7:	83 c0 02             	add    eax,0x2
  79b9fa:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  79b9fe:	75 f7                	jne    0x79b9f7
  79ba00:	2d 18 6b 01 01       	sub    eax,0x1016b18
  79ba05:	d1 f8                	sar    eax,1
  79ba07:	8d 04 45 18 6b 01 01 	lea    eax,[eax*2+0x1016b18]
  79ba0e:	50                   	push   eax
  79ba0f:	68 18 6b 01 01       	push   0x1016b18
  79ba14:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  79ba18:	e8 93 a6 cb ff       	call   0x4560b0
  79ba1d:	e8 ae 01 df ff       	call   0x58bbd0
  79ba22:	8b f0                	mov    esi,eax
  79ba24:	85 f6                	test   esi,esi
  79ba26:	0f 84 fd 00 00 00    	je     0x79bb29
  79ba2c:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  79ba30:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  79ba34:	51                   	push   ecx
  79ba35:	68 dc 6a 01 01       	push   0x1016adc
  79ba3a:	52                   	push   edx
  79ba3b:	8b ce                	mov    ecx,esi
  79ba3d:	e8 9e 0b df ff       	call   0x58c5e0
  79ba42:	84 c0                	test   al,al
  79ba44:	74 25                	je     0x79ba6b
  79ba46:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  79ba4a:	66 83 39 00          	cmp    WORD PTR [ecx],0x0
  79ba4e:	8b c1                	mov    eax,ecx
  79ba50:	74 09                	je     0x79ba5b
  79ba52:	83 c0 02             	add    eax,0x2
  79ba55:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  79ba59:	75 f7                	jne    0x79ba52
  79ba5b:	2b c1                	sub    eax,ecx
  79ba5d:	d1 f8                	sar    eax,1
  79ba5f:	8d 04 41             	lea    eax,[ecx+eax*2]
  79ba62:	50                   	push   eax
  79ba63:	51                   	push   ecx
  79ba64:	8b cf                	mov    ecx,edi
  79ba66:	e8 f5 d2 c6 ff       	call   0x408d60
  79ba6b:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  79ba6f:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  79ba73:	51                   	push   ecx
  79ba74:	68 c4 6a 01 01       	push   0x1016ac4
  79ba79:	52                   	push   edx
  79ba7a:	8b ce                	mov    ecx,esi
  79ba7c:	e8 5f 0b df ff       	call   0x58c5e0
  79ba81:	84 c0                	test   al,al
  79ba83:	74 26                	je     0x79baab
  79ba85:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  79ba89:	66 83 39 00          	cmp    WORD PTR [ecx],0x0
  79ba8d:	8b c1                	mov    eax,ecx
  79ba8f:	74 09                	je     0x79ba9a
  79ba91:	83 c0 02             	add    eax,0x2
  79ba94:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  79ba98:	75 f7                	jne    0x79ba91
  79ba9a:	2b c1                	sub    eax,ecx
  79ba9c:	d1 f8                	sar    eax,1
  79ba9e:	8d 04 41             	lea    eax,[ecx+eax*2]
  79baa1:	50                   	push   eax
  79baa2:	51                   	push   ecx
  79baa3:	8d 4f 30             	lea    ecx,[edi+0x30]
  79baa6:	e8 b5 d2 c6 ff       	call   0x408d60
  79baab:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  79baaf:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  79bab3:	51                   	push   ecx
  79bab4:	68 a8 6a 01 01       	push   0x1016aa8
  79bab9:	52                   	push   edx
  79baba:	8b ce                	mov    ecx,esi
  79babc:	e8 1f 0b df ff       	call   0x58c5e0
  79bac1:	84 c0                	test   al,al
  79bac3:	74 25                	je     0x79baea
  79bac5:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  79bac9:	66 83 39 00          	cmp    WORD PTR [ecx],0x0
  79bacd:	8b c1                	mov    eax,ecx
  79bacf:	74 09                	je     0x79bada
  79bad1:	83 c0 02             	add    eax,0x2
  79bad4:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  79bad8:	75 f7                	jne    0x79bad1
  79bada:	2b c1                	sub    eax,ecx
  79badc:	d1 f8                	sar    eax,1
  79bade:	8d 04 41             	lea    eax,[ecx+eax*2]
  79bae1:	50                   	push   eax
  79bae2:	51                   	push   ecx
  79bae3:	8b cd                	mov    ecx,ebp
  79bae5:	e8 76 d2 c6 ff       	call   0x408d60
  79baea:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  79baee:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  79baf2:	51                   	push   ecx
  79baf3:	68 90 6a 01 01       	push   0x1016a90
  79baf8:	52                   	push   edx
  79baf9:	8b ce                	mov    ecx,esi
  79bafb:	e8 e0 0a df ff       	call   0x58c5e0
  79bb00:	84 c0                	test   al,al
  79bb02:	74 25                	je     0x79bb29
  79bb04:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  79bb08:	66 83 39 00          	cmp    WORD PTR [ecx],0x0
  79bb0c:	8b c1                	mov    eax,ecx
  79bb0e:	74 09                	je     0x79bb19
  79bb10:	83 c0 02             	add    eax,0x2
  79bb13:	66 83 38 00          	cmp    WORD PTR [eax],0x0
  79bb17:	75 f7                	jne    0x79bb10
  79bb19:	2b c1                	sub    eax,ecx
  79bb1b:	d1 f8                	sar    eax,1
  79bb1d:	8d 04 41             	lea    eax,[ecx+eax*2]
  79bb20:	50                   	push   eax
  79bb21:	51                   	push   ecx
  79bb22:	8b cb                	mov    ecx,ebx
  79bb24:	e8 37 d2 c6 ff       	call   0x408d60
  79bb29:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  79bb2d:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  79bb31:	5f                   	pop    edi
  79bb32:	2b c8                	sub    ecx,eax
  79bb34:	5e                   	pop    esi
  79bb35:	83 e1 fe             	and    ecx,0xfffffffe
  79bb38:	83 f9 02             	cmp    ecx,0x2
  79bb3b:	5d                   	pop    ebp
  79bb3c:	5b                   	pop    ebx
  79bb3d:	7e 13                	jle    0x79bb52
  79bb3f:	85 c0                	test   eax,eax
  79bb41:	74 0f                	je     0x79bb52
  79bb43:	3b 44 24 10          	cmp    eax,DWORD PTR [esp+0x10]
  79bb47:	74 09                	je     0x79bb52
  79bb49:	50                   	push   eax
  79bb4a:	e8 91 89 d4 ff       	call   0x4e44e0
  79bb4f:	83 c4 04             	add    esp,0x4
  79bb52:	b0 01                	mov    al,0x1
  79bb54:	83 c4 54             	add    esp,0x54
  79bb57:	c2 08 00             	ret    0x8
