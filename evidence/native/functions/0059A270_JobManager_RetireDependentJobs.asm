# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059a270..0059a2df; JobManager_RetireDependentJobs
  59a270:	53                   	push   ebx
  59a271:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  59a275:	83 c3 40             	add    ebx,0x40
  59a278:	39 5b 04             	cmp    DWORD PTR [ebx+0x4],ebx
  59a27b:	55                   	push   ebp
  59a27c:	8b e9                	mov    ebp,ecx
  59a27e:	74 5b                	je     0x59a2db
  59a280:	56                   	push   esi
  59a281:	57                   	push   edi
  59a282:	8d b5 94 00 00 00    	lea    esi,[ebp+0x94]
  59a288:	eb 06                	jmp    0x59a290
  59a28a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  59a290:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  59a294:	8b 40 44             	mov    eax,DWORD PTR [eax+0x44]
  59a297:	85 c0                	test   eax,eax
  59a299:	74 05                	je     0x59a2a0
  59a29b:	83 c0 f8             	add    eax,0xfffffff8
  59a29e:	eb 02                	jmp    0x59a2a2
  59a2a0:	33 c0                	xor    eax,eax
  59a2a2:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  59a2a5:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  59a2a8:	8b 78 14             	mov    edi,DWORD PTR [eax+0x14]
  59a2ab:	89 11                	mov    DWORD PTR [ecx],edx
  59a2ad:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59a2b0:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59a2b3:	8b 10                	mov    edx,DWORD PTR [eax]
  59a2b5:	89 11                	mov    DWORD PTR [ecx],edx
  59a2b7:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59a2ba:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  59a2bd:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  59a2c0:	89 30                	mov    DWORD PTR [eax],esi
  59a2c2:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  59a2c5:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  59a2c8:	6a 01                	push   0x1
  59a2ca:	57                   	push   edi
  59a2cb:	8b cd                	mov    ecx,ebp
  59a2cd:	89 02                	mov    DWORD PTR [edx],eax
  59a2cf:	e8 2c 0c 00 00       	call   0x59af00
  59a2d4:	39 5b 04             	cmp    DWORD PTR [ebx+0x4],ebx
  59a2d7:	75 b7                	jne    0x59a290
  59a2d9:	5f                   	pop    edi
  59a2da:	5e                   	pop    esi
  59a2db:	5d                   	pop    ebp
  59a2dc:	5b                   	pop    ebx
  59a2dd:	c2 04 00             	ret    0x4
