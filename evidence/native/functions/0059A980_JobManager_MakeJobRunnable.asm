# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059a980..0059ab4a; JobManager_MakeJobRunnable
  59a980:	53                   	push   ebx
  59a981:	56                   	push   esi
  59a982:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  59a986:	83 7e 10 00          	cmp    DWORD PTR [esi+0x10],0x0
  59a98a:	57                   	push   edi
  59a98b:	8b f9                	mov    edi,ecx
  59a98d:	bb 01 00 00 00       	mov    ebx,0x1
  59a992:	75 63                	jne    0x59a9f7
  59a994:	8a 4e 24             	mov    cl,BYTE PTR [esi+0x24]
  59a997:	8b c3                	mov    eax,ebx
  59a999:	d3 e0                	shl    eax,cl
  59a99b:	a8 3c                	test   al,0x3c
  59a99d:	75 1e                	jne    0x59a9bd
  59a99f:	80 7e 4e 00          	cmp    BYTE PTR [esi+0x4e],0x0
  59a9a3:	75 18                	jne    0x59a9bd
  59a9a5:	8d 46 08             	lea    eax,[esi+0x8]
  59a9a8:	85 c0                	test   eax,eax
  59a9aa:	88 5e 4e             	mov    BYTE PTR [esi+0x4e],bl
  59a9ad:	74 05                	je     0x59a9b4
  59a9af:	83 c0 f8             	add    eax,0xfffffff8
  59a9b2:	eb 02                	jmp    0x59a9b6
  59a9b4:	33 c0                	xor    eax,eax
  59a9b6:	83 c0 30             	add    eax,0x30
  59a9b9:	f0 0f c1 18          	lock xadd DWORD PTR [eax],ebx
  59a9bd:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  59a9c0:	83 f9 05             	cmp    ecx,0x5
  59a9c3:	75 07                	jne    0x59a9cc
  59a9c5:	c7 46 24 04 00 00 00 	mov    DWORD PTR [esi+0x24],0x4
  59a9cc:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59a9cf:	8b 0e                	mov    ecx,DWORD PTR [esi]
  59a9d1:	89 08                	mov    DWORD PTR [eax],ecx
  59a9d3:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59a9d6:	8b 57 6c             	mov    edx,DWORD PTR [edi+0x6c]
  59a9d9:	8d 47 68             	lea    eax,[edi+0x68]
  59a9dc:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  59a9df:	89 06                	mov    DWORD PTR [esi],eax
  59a9e1:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59a9e4:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59a9e7:	56                   	push   esi
  59a9e8:	8b cf                	mov    ecx,edi
  59a9ea:	89 30                	mov    DWORD PTR [eax],esi
  59a9ec:	e8 ef f6 ff ff       	call   0x59a0e0
  59a9f1:	5f                   	pop    edi
  59a9f2:	5e                   	pop    esi
  59a9f3:	5b                   	pop    ebx
  59a9f4:	c2 04 00             	ret    0x4
  59a9f7:	01 9f a8 00 00 00    	add    DWORD PTR [edi+0xa8],ebx
  59a9fd:	8b 8f a8 00 00 00    	mov    ecx,DWORD PTR [edi+0xa8]
  59aa03:	8d 46 08             	lea    eax,[esi+0x8]
  59aa06:	83 97 ac 00 00 00 00 	adc    DWORD PTR [edi+0xac],0x0
  59aa0d:	89 08                	mov    DWORD PTR [eax],ecx
  59aa0f:	8b 97 ac 00 00 00    	mov    edx,DWORD PTR [edi+0xac]
  59aa15:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  59aa18:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  59aa1b:	8b d1                	mov    edx,ecx
  59aa1d:	f7 d2                	not    edx
  59aa1f:	85 d2                	test   edx,edx
  59aa21:	0f 85 98 00 00 00    	jne    0x59aabf
  59aa27:	8a 4e 24             	mov    cl,BYTE PTR [esi+0x24]
  59aa2a:	8b d3                	mov    edx,ebx
  59aa2c:	d3 e2                	shl    edx,cl
  59aa2e:	f6 c2 3c             	test   dl,0x3c
  59aa31:	75 1d                	jne    0x59aa50
  59aa33:	80 7e 4e 00          	cmp    BYTE PTR [esi+0x4e],0x0
  59aa37:	75 17                	jne    0x59aa50
  59aa39:	85 c0                	test   eax,eax
  59aa3b:	88 5e 4e             	mov    BYTE PTR [esi+0x4e],bl
  59aa3e:	74 05                	je     0x59aa45
  59aa40:	83 c0 f8             	add    eax,0xfffffff8
  59aa43:	eb 02                	jmp    0x59aa47
  59aa45:	33 c0                	xor    eax,eax
  59aa47:	83 c0 30             	add    eax,0x30
  59aa4a:	8b cb                	mov    ecx,ebx
  59aa4c:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  59aa50:	8b 0e                	mov    ecx,DWORD PTR [esi]
  59aa52:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59aa55:	89 08                	mov    DWORD PTR [eax],ecx
  59aa57:	56                   	push   esi
  59aa58:	8d 57 60             	lea    edx,[edi+0x60]
  59aa5b:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59aa5e:	52                   	push   edx
  59aa5f:	8b cf                	mov    ecx,edi
  59aa61:	e8 7a f8 ff ff       	call   0x59a2e0
  59aa66:	8d 47 38             	lea    eax,[edi+0x38]
  59aa69:	c7 46 24 03 00 00 00 	mov    DWORD PTR [esi+0x24],0x3
  59aa70:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  59aa73:	74 1e                	je     0x59aa93
  59aa75:	8b 00                	mov    eax,DWORD PTR [eax]
  59aa77:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59aa7a:	3b c8                	cmp    ecx,eax
  59aa7c:	74 15                	je     0x59aa93
  59aa7e:	8b 10                	mov    edx,DWORD PTR [eax]
  59aa80:	89 11                	mov    DWORD PTR [ecx],edx
  59aa82:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59aa85:	53                   	push   ebx
  59aa86:	8d 48 08             	lea    ecx,[eax+0x8]
  59aa89:	89 00                	mov    DWORD PTR [eax],eax
  59aa8b:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  59aa8e:	e8 8d 82 f4 ff       	call   0x4e2d20
  59aa93:	8d 47 40             	lea    eax,[edi+0x40]
  59aa96:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  59aa99:	74 4b                	je     0x59aae6
  59aa9b:	8b 00                	mov    eax,DWORD PTR [eax]
  59aa9d:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59aaa0:	3b c8                	cmp    ecx,eax
  59aaa2:	74 42                	je     0x59aae6
  59aaa4:	8b 10                	mov    edx,DWORD PTR [eax]
  59aaa6:	89 11                	mov    DWORD PTR [ecx],edx
  59aaa8:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59aaab:	53                   	push   ebx
  59aaac:	8d 48 08             	lea    ecx,[eax+0x8]
  59aaaf:	89 00                	mov    DWORD PTR [eax],eax
  59aab1:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  59aab4:	e8 67 82 f4 ff       	call   0x4e2d20
  59aab9:	5f                   	pop    edi
  59aaba:	5e                   	pop    esi
  59aabb:	5b                   	pop    ebx
  59aabc:	c2 04 00             	ret    0x4
  59aabf:	8d 97 88 00 00 00    	lea    edx,[edi+0x88]
  59aac5:	55                   	push   ebp
  59aac6:	8b 2a                	mov    ebp,DWORD PTR [edx]
  59aac8:	3b ea                	cmp    ebp,edx
  59aaca:	74 10                	je     0x59aadc
  59aacc:	8d 64 24 00          	lea    esp,[esp+0x0]
  59aad0:	85 4d 2c             	test   DWORD PTR [ebp+0x2c],ecx
  59aad3:	75 17                	jne    0x59aaec
  59aad5:	8b 6d 00             	mov    ebp,DWORD PTR [ebp+0x0]
  59aad8:	3b ea                	cmp    ebp,edx
  59aada:	75 f4                	jne    0x59aad0
  59aadc:	53                   	push   ebx
  59aadd:	56                   	push   esi
  59aade:	8b cf                	mov    ecx,edi
  59aae0:	e8 1b 04 00 00       	call   0x59af00
  59aae5:	5d                   	pop    ebp
  59aae6:	5f                   	pop    edi
  59aae7:	5e                   	pop    esi
  59aae8:	5b                   	pop    ebx
  59aae9:	c2 04 00             	ret    0x4
  59aaec:	8a 4e 24             	mov    cl,BYTE PTR [esi+0x24]
  59aaef:	8b d3                	mov    edx,ebx
  59aaf1:	d3 e2                	shl    edx,cl
  59aaf3:	f6 c2 3c             	test   dl,0x3c
  59aaf6:	75 10                	jne    0x59ab08
  59aaf8:	80 7e 4e 00          	cmp    BYTE PTR [esi+0x4e],0x0
  59aafc:	75 0a                	jne    0x59ab08
  59aafe:	8b c8                	mov    ecx,eax
  59ab00:	88 5e 4e             	mov    BYTE PTR [esi+0x4e],bl
  59ab03:	e8 18 f3 ff ff       	call   0x599e20
  59ab08:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59ab0b:	8b 0e                	mov    ecx,DWORD PTR [esi]
  59ab0d:	89 08                	mov    DWORD PTR [eax],ecx
  59ab0f:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59ab12:	56                   	push   esi
  59ab13:	8d 45 30             	lea    eax,[ebp+0x30]
  59ab16:	50                   	push   eax
  59ab17:	8b cf                	mov    ecx,edi
  59ab19:	e8 c2 f7 ff ff       	call   0x59a2e0
  59ab1e:	8d 45 08             	lea    eax,[ebp+0x8]
  59ab21:	c7 46 24 03 00 00 00 	mov    DWORD PTR [esi+0x24],0x3
  59ab28:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59ab2b:	3b c8                	cmp    ecx,eax
  59ab2d:	74 b6                	je     0x59aae5
  59ab2f:	8b 10                	mov    edx,DWORD PTR [eax]
  59ab31:	89 11                	mov    DWORD PTR [ecx],edx
  59ab33:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59ab36:	53                   	push   ebx
  59ab37:	8d 48 08             	lea    ecx,[eax+0x8]
  59ab3a:	89 00                	mov    DWORD PTR [eax],eax
  59ab3c:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  59ab3f:	e8 dc 81 f4 ff       	call   0x4e2d20
  59ab44:	5d                   	pop    ebp
  59ab45:	5f                   	pop    edi
  59ab46:	5e                   	pop    esi
  59ab47:	5b                   	pop    ebx
  59ab48:	c2 04 00             	ret    0x4
