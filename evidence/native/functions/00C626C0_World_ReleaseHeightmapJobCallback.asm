# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c626c0..00c62741; World_ReleaseHeightmapJobCallback
  c626c0:	83 7c 24 0c 04       	cmp    DWORD PTR [esp+0xc],0x4
  c626c5:	75 78                	jne    0xc6273f
  c626c7:	53                   	push   ebx
  c626c8:	8b 1d 30 25 1d 01    	mov    ebx,DWORD PTR ds:0x11d2530
  c626ce:	56                   	push   esi
  c626cf:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  c626d3:	8d 44 24 14          	lea    eax,[esp+0x14]
  c626d7:	50                   	push   eax
  c626d8:	56                   	push   esi
  c626d9:	8b cb                	mov    ecx,ebx
  c626db:	c7 44 24 1c 00 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  c626e3:	e8 28 09 a8 ff       	call   0x6e3010
  c626e8:	84 c0                	test   al,al
  c626ea:	75 0e                	jne    0xc626fa
  c626ec:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c626f0:	51                   	push   ecx
  c626f1:	8b ce                	mov    ecx,esi
  c626f3:	e8 38 8b 93 ff       	call   0x59b230
  c626f8:	eb 36                	jmp    0xc62730
  c626fa:	57                   	push   edi
  c626fb:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  c626ff:	8b 07                	mov    eax,DWORD PTR [edi]
  c62701:	85 c0                	test   eax,eax
  c62703:	74 23                	je     0xc62728
  c62705:	8b 70 54             	mov    esi,DWORD PTR [eax+0x54]
  c62708:	85 f6                	test   esi,esi
  c6270a:	74 1c                	je     0xc62728
  c6270c:	8b 50 58             	mov    edx,DWORD PTR [eax+0x58]
  c6270f:	8b 4a 68             	mov    ecx,DWORD PTR [edx+0x68]
  c62712:	e8 49 04 fc ff       	call   0xc22b60
  c62717:	8b ce                	mov    ecx,esi
  c62719:	e8 12 5f fc ff       	call   0xc28630
  c6271e:	83 7e 08 00          	cmp    DWORD PTR [esi+0x8],0x0
  c62722:	0f 95 c0             	setne  al
  c62725:	88 47 04             	mov    BYTE PTR [edi+0x4],al
  c62728:	8b cb                	mov    ecx,ebx
  c6272a:	e8 11 f6 a7 ff       	call   0x6e1d40
  c6272f:	5f                   	pop    edi
  c62730:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c62734:	85 c9                	test   ecx,ecx
  c62736:	74 05                	je     0xc6273d
  c62738:	e8 13 8c 93 ff       	call   0x59b350
  c6273d:	5e                   	pop    esi
  c6273e:	5b                   	pop    ebx
  c6273f:	b0 01                	mov    al,0x1
  c62741:	c3                   	ret
