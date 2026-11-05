# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056e820, 0x0056e8df); analyst name AnimationWrapperListener_ForwardLoop.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056e820 <.text+0x16d820>:
  56e820:	83 ec 18             	sub    esp,0x18
  56e823:	56                   	push   esi
  56e824:	8d 71 d8             	lea    esi,[ecx-0x28]
  56e827:	85 f6                	test   esi,esi
  56e829:	74 04                	je     0x56e82f
  56e82b:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  56e82f:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  56e833:	8b 10                	mov    edx,DWORD PTR [eax]
  56e835:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  56e839:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  56e83c:	85 d2                	test   edx,edx
  56e83e:	53                   	push   ebx
  56e83f:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  56e843:	74 0c                	je     0x56e851
  56e845:	83 c2 04             	add    edx,0x4
  56e848:	bb 01 00 00 00       	mov    ebx,0x1
  56e84d:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  56e851:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  56e854:	8b 49 f4             	mov    ecx,DWORD PTR [ecx-0xc]
  56e857:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  56e85b:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  56e85e:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  56e862:	0f b6 50 14          	movzx  edx,BYTE PTR [eax+0x14]
  56e866:	88 54 24 1c          	mov    BYTE PTR [esp+0x1c],dl
  56e86a:	0f b6 50 15          	movzx  edx,BYTE PTR [eax+0x15]
  56e86e:	8a 40 16             	mov    al,BYTE PTR [eax+0x16]
  56e871:	88 54 24 1d          	mov    BYTE PTR [esp+0x1d],dl
  56e875:	8d 54 24 08          	lea    edx,[esp+0x8]
  56e879:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  56e87d:	52                   	push   edx
  56e87e:	8b ce                	mov    ecx,esi
  56e880:	88 44 24 22          	mov    BYTE PTR [esp+0x22],al
  56e884:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
  56e888:	e8 73 a2 ff ff       	call   0x568b00
  56e88d:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  56e891:	85 c9                	test   ecx,ecx
  56e893:	74 22                	je     0x56e8b7
  56e895:	8d 41 04             	lea    eax,[ecx+0x4]
  56e898:	8b d0                	mov    edx,eax
  56e89a:	83 cb ff             	or     ebx,0xffffffff
  56e89d:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  56e8a1:	4b                   	dec    ebx
  56e8a2:	75 13                	jne    0x56e8b7
  56e8a4:	ba 01 00 00 00       	mov    edx,0x1
  56e8a9:	87 10                	xchg   DWORD PTR [eax],edx
  56e8ab:	85 c9                	test   ecx,ecx
  56e8ad:	74 08                	je     0x56e8b7
  56e8af:	8b 01                	mov    eax,DWORD PTR [ecx]
  56e8b1:	8b 10                	mov    edx,DWORD PTR [eax]
  56e8b3:	6a 01                	push   0x1
  56e8b5:	ff d2                	call   edx
  56e8b7:	85 f6                	test   esi,esi
  56e8b9:	5b                   	pop    ebx
  56e8ba:	74 1c                	je     0x56e8d8
  56e8bc:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  56e8bf:	83 c0 ff             	add    eax,0xffffffff
  56e8c2:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  56e8c5:	75 11                	jne    0x56e8d8
  56e8c7:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  56e8ce:	8b 06                	mov    eax,DWORD PTR [esi]
  56e8d0:	8b 10                	mov    edx,DWORD PTR [eax]
  56e8d2:	6a 01                	push   0x1
  56e8d4:	8b ce                	mov    ecx,esi
  56e8d6:	ff d2                	call   edx
  56e8d8:	5e                   	pop    esi
  56e8d9:	83 c4 18             	add    esp,0x18
  56e8dc:	c2 08 00             	ret    0x8
