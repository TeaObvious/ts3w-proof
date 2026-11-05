# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059ab50..0059abde; JobManager_SubmitInternal
  59ab50:	56                   	push   esi
  59ab51:	8b f1                	mov    esi,ecx
  59ab53:	57                   	push   edi
  59ab54:	8d 7e 08             	lea    edi,[esi+0x8]
  59ab57:	68 ac a7 fd 00       	push   0xfda7ac
  59ab5c:	8b cf                	mov    ecx,edi
  59ab5e:	e8 9d 70 f4 ff       	call   0x4e1c00
  59ab63:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  59ab67:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  59ab6a:	83 f9 01             	cmp    ecx,0x1
  59ab6d:	75 64                	jne    0x59abd3
  59ab6f:	8d 48 38             	lea    ecx,[eax+0x38]
  59ab72:	39 49 04             	cmp    DWORD PTR [ecx+0x4],ecx
  59ab75:	75 14                	jne    0x59ab8b
  59ab77:	50                   	push   eax
  59ab78:	8b ce                	mov    ecx,esi
  59ab7a:	e8 01 fe ff ff       	call   0x59a980
  59ab7f:	8b cf                	mov    ecx,edi
  59ab81:	e8 3a 71 f4 ff       	call   0x4e1cc0
  59ab86:	5f                   	pop    edi
  59ab87:	5e                   	pop    esi
  59ab88:	c2 04 00             	ret    0x4
  59ab8b:	80 78 4e 00          	cmp    BYTE PTR [eax+0x4e],0x0
  59ab8f:	75 1e                	jne    0x59abaf
  59ab91:	8d 48 08             	lea    ecx,[eax+0x8]
  59ab94:	85 c9                	test   ecx,ecx
  59ab96:	c6 40 4e 01          	mov    BYTE PTR [eax+0x4e],0x1
  59ab9a:	74 05                	je     0x59aba1
  59ab9c:	83 c1 f8             	add    ecx,0xfffffff8
  59ab9f:	eb 02                	jmp    0x59aba3
  59aba1:	33 c9                	xor    ecx,ecx
  59aba3:	83 c1 30             	add    ecx,0x30
  59aba6:	ba 01 00 00 00       	mov    edx,0x1
  59abab:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  59abaf:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59abb2:	8b 10                	mov    edx,DWORD PTR [eax]
  59abb4:	89 11                	mov    DWORD PTR [ecx],edx
  59abb6:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59abb9:	8d 4e 58             	lea    ecx,[esi+0x58]
  59abbc:	c7 40 24 02 00 00 00 	mov    DWORD PTR [eax+0x24],0x2
  59abc3:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  59abc6:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  59abc9:	89 08                	mov    DWORD PTR [eax],ecx
  59abcb:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59abce:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59abd1:	89 01                	mov    DWORD PTR [ecx],eax
  59abd3:	8b cf                	mov    ecx,edi
  59abd5:	e8 e6 70 f4 ff       	call   0x4e1cc0
  59abda:	5f                   	pop    edi
  59abdb:	5e                   	pop    esi
  59abdc:	c2 04 00             	ret    0x4
