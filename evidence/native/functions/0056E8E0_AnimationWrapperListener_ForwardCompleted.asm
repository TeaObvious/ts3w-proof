# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056e8e0, 0x0056e99f); analyst name AnimationWrapperListener_ForwardCompleted.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056e8e0 <.text+0x16d8e0>:
  56e8e0:	83 ec 18             	sub    esp,0x18
  56e8e3:	56                   	push   esi
  56e8e4:	8d 71 d8             	lea    esi,[ecx-0x28]
  56e8e7:	85 f6                	test   esi,esi
  56e8e9:	74 04                	je     0x56e8ef
  56e8eb:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  56e8ef:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  56e8f3:	8b 10                	mov    edx,DWORD PTR [eax]
  56e8f5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  56e8f9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  56e8fc:	85 d2                	test   edx,edx
  56e8fe:	53                   	push   ebx
  56e8ff:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  56e903:	74 0c                	je     0x56e911
  56e905:	83 c2 04             	add    edx,0x4
  56e908:	bb 01 00 00 00       	mov    ebx,0x1
  56e90d:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  56e911:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  56e914:	8b 49 f4             	mov    ecx,DWORD PTR [ecx-0xc]
  56e917:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  56e91b:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  56e91e:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  56e922:	0f b6 50 14          	movzx  edx,BYTE PTR [eax+0x14]
  56e926:	88 54 24 1c          	mov    BYTE PTR [esp+0x1c],dl
  56e92a:	0f b6 50 15          	movzx  edx,BYTE PTR [eax+0x15]
  56e92e:	8a 40 16             	mov    al,BYTE PTR [eax+0x16]
  56e931:	88 54 24 1d          	mov    BYTE PTR [esp+0x1d],dl
  56e935:	8d 54 24 08          	lea    edx,[esp+0x8]
  56e939:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  56e93d:	52                   	push   edx
  56e93e:	8b ce                	mov    ecx,esi
  56e940:	88 44 24 22          	mov    BYTE PTR [esp+0x22],al
  56e944:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
  56e948:	e8 a3 74 ff ff       	call   0x565df0
  56e94d:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  56e951:	85 c9                	test   ecx,ecx
  56e953:	74 22                	je     0x56e977
  56e955:	8d 41 04             	lea    eax,[ecx+0x4]
  56e958:	8b d0                	mov    edx,eax
  56e95a:	83 cb ff             	or     ebx,0xffffffff
  56e95d:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  56e961:	4b                   	dec    ebx
  56e962:	75 13                	jne    0x56e977
  56e964:	ba 01 00 00 00       	mov    edx,0x1
  56e969:	87 10                	xchg   DWORD PTR [eax],edx
  56e96b:	85 c9                	test   ecx,ecx
  56e96d:	74 08                	je     0x56e977
  56e96f:	8b 01                	mov    eax,DWORD PTR [ecx]
  56e971:	8b 10                	mov    edx,DWORD PTR [eax]
  56e973:	6a 01                	push   0x1
  56e975:	ff d2                	call   edx
  56e977:	85 f6                	test   esi,esi
  56e979:	5b                   	pop    ebx
  56e97a:	74 1c                	je     0x56e998
  56e97c:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  56e97f:	83 c0 ff             	add    eax,0xffffffff
  56e982:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  56e985:	75 11                	jne    0x56e998
  56e987:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  56e98e:	8b 06                	mov    eax,DWORD PTR [esi]
  56e990:	8b 10                	mov    edx,DWORD PTR [eax]
  56e992:	6a 01                	push   0x1
  56e994:	8b ce                	mov    ecx,esi
  56e996:	ff d2                	call   edx
  56e998:	5e                   	pop    esi
  56e999:	83 c4 18             	add    esp,0x18
  56e99c:	c2 08 00             	ret    0x8
