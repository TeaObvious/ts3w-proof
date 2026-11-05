# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059b350..0059b3a2; Job_ReleaseReference
  59b350:	85 c9                	test   ecx,ecx
  59b352:	74 05                	je     0x59b359
  59b354:	8d 41 f8             	lea    eax,[ecx-0x8]
  59b357:	eb 02                	jmp    0x59b35b
  59b359:	33 c0                	xor    eax,eax
  59b35b:	55                   	push   ebp
  59b35c:	83 c0 30             	add    eax,0x30
  59b35f:	83 cd ff             	or     ebp,0xffffffff
  59b362:	f0 0f c1 28          	lock xadd DWORD PTR [eax],ebp
  59b366:	4d                   	dec    ebp
  59b367:	75 36                	jne    0x59b39f
  59b369:	85 c9                	test   ecx,ecx
  59b36b:	53                   	push   ebx
  59b36c:	56                   	push   esi
  59b36d:	57                   	push   edi
  59b36e:	74 07                	je     0x59b377
  59b370:	8d 59 f8             	lea    ebx,[ecx-0x8]
  59b373:	8b c3                	mov    eax,ebx
  59b375:	eb 04                	jmp    0x59b37b
  59b377:	33 db                	xor    ebx,ebx
  59b379:	33 c0                	xor    eax,eax
  59b37b:	8b 70 34             	mov    esi,DWORD PTR [eax+0x34]
  59b37e:	8d 7e 08             	lea    edi,[esi+0x8]
  59b381:	68 ac a7 fd 00       	push   0xfda7ac
  59b386:	8b cf                	mov    ecx,edi
  59b388:	e8 73 68 f4 ff       	call   0x4e1c00
  59b38d:	53                   	push   ebx
  59b38e:	8b ce                	mov    ecx,esi
  59b390:	e8 7b fc ff ff       	call   0x59b010
  59b395:	8b cf                	mov    ecx,edi
  59b397:	e8 24 69 f4 ff       	call   0x4e1cc0
  59b39c:	5f                   	pop    edi
  59b39d:	5e                   	pop    esi
  59b39e:	5b                   	pop    ebx
  59b39f:	8b c5                	mov    eax,ebp
  59b3a1:	5d                   	pop    ebp
  59b3a2:	c3                   	ret
