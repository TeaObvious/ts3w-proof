# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937790, 0x009378e2); analyst name Object_ExpandComponentMask.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937790 <.text+0x536790>:
  937790:	83 ec 10             	sub    esp,0x10
  937793:	53                   	push   ebx
  937794:	8b 1d 50 d3 1d 01    	mov    ebx,DWORD PTR ds:0x11dd350
  93779a:	8b 8b c8 11 00 00    	mov    ecx,DWORD PTR [ebx+0x11c8]
  9377a0:	55                   	push   ebp
  9377a1:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  9377a5:	56                   	push   esi
  9377a6:	57                   	push   edi
  9377a7:	83 e9 01             	sub    ecx,0x1
  9377aa:	bf 01 00 00 00       	mov    edi,0x1
  9377af:	d3 e7                	shl    edi,cl
  9377b1:	8b c5                	mov    eax,ebp
  9377b3:	f7 d0                	not    eax
  9377b5:	8d 7c 3f ff          	lea    edi,[edi+edi*1-0x1]
  9377b9:	23 f8                	and    edi,eax
  9377bb:	74 76                	je     0x937833
  9377bd:	8d 49 00             	lea    ecx,[ecx+0x0]
  9377c0:	8b f7                	mov    esi,edi
  9377c2:	f7 de                	neg    esi
  9377c4:	23 f7                	and    esi,edi
  9377c6:	8b c6                	mov    eax,esi
  9377c8:	74 37                	je     0x937801
  9377ca:	0f b7 d6             	movzx  edx,si
  9377cd:	85 d2                	test   edx,edx
  9377cf:	b9 01 00 00 00       	mov    ecx,0x1
  9377d4:	75 06                	jne    0x9377dc
  9377d6:	8d 4a 11             	lea    ecx,[edx+0x11]
  9377d9:	c1 e8 10             	shr    eax,0x10
  9377dc:	84 c0                	test   al,al
  9377de:	75 06                	jne    0x9377e6
  9377e0:	83 c1 08             	add    ecx,0x8
  9377e3:	c1 e8 08             	shr    eax,0x8
  9377e6:	a8 0f                	test   al,0xf
  9377e8:	75 06                	jne    0x9377f0
  9377ea:	83 c1 04             	add    ecx,0x4
  9377ed:	c1 e8 04             	shr    eax,0x4
  9377f0:	a8 03                	test   al,0x3
  9377f2:	75 06                	jne    0x9377fa
  9377f4:	83 c1 02             	add    ecx,0x2
  9377f7:	c1 e8 02             	shr    eax,0x2
  9377fa:	83 e0 01             	and    eax,0x1
  9377fd:	2b c8                	sub    ecx,eax
  9377ff:	eb 05                	jmp    0x937806
  937801:	b9 20 00 00 00       	mov    ecx,0x20
  937806:	3b 8b c8 11 00 00    	cmp    ecx,DWORD PTR [ebx+0x11c8]
  93780c:	7d 09                	jge    0x937817
  93780e:	8b 8c 8b 44 10 00 00 	mov    ecx,DWORD PTR [ebx+ecx*4+0x1044]
  937815:	eb 02                	jmp    0x937819
  937817:	33 c9                	xor    ecx,ecx
  937819:	8b 41 18             	mov    eax,DWORD PTR [ecx+0x18]
  93781c:	85 c0                	test   eax,eax
  93781e:	74 0c                	je     0x93782c
  937820:	55                   	push   ebp
  937821:	ff d0                	call   eax
  937823:	83 c4 04             	add    esp,0x4
  937826:	84 c0                	test   al,al
  937828:	74 02                	je     0x93782c
  93782a:	0b ee                	or     ebp,esi
  93782c:	8d 47 ff             	lea    eax,[edi-0x1]
  93782f:	23 f8                	and    edi,eax
  937831:	75 8d                	jne    0x9377c0
  937833:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  937837:	33 c0                	xor    eax,eax
  937839:	3b f0                	cmp    esi,eax
  93783b:	0f 84 97 00 00 00    	je     0x9378d8
  937841:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  937845:	51                   	push   ecx
  937846:	68 0e 3b 2a 9e       	push   0x9e2a3b0e
  93784b:	8b ce                	mov    ecx,esi
  93784d:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  937851:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  937855:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  937859:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  93785d:	e8 2e 1e 00 00       	call   0x939690
  937862:	84 c0                	test   al,al
  937864:	74 06                	je     0x93786c
  937866:	0b 2d 14 a1 1e 01    	or     ebp,DWORD PTR ds:0x11ea114
  93786c:	8d 54 24 10          	lea    edx,[esp+0x10]
  937870:	52                   	push   edx
  937871:	68 4a 53 15 84       	push   0x8415534a
  937876:	8b ce                	mov    ecx,esi
  937878:	e8 13 1e 00 00       	call   0x939690
  93787d:	84 c0                	test   al,al
  93787f:	74 06                	je     0x937887
  937881:	0b 2d 84 d4 1d 01    	or     ebp,DWORD PTR ds:0x11dd484
  937887:	8d 44 24 10          	lea    eax,[esp+0x10]
  93788b:	50                   	push   eax
  93788c:	68 b2 e9 c7 9c       	push   0x9cc7e9b2
  937891:	8b ce                	mov    ecx,esi
  937893:	e8 f8 1d 00 00       	call   0x939690
  937898:	84 c0                	test   al,al
  93789a:	74 06                	je     0x9378a2
  93789c:	0b 2d c0 9f 1e 01    	or     ebp,DWORD PTR ds:0x11e9fc0
  9378a2:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  9378a6:	51                   	push   ecx
  9378a7:	68 07 89 0f ff       	push   0xff0f8907
  9378ac:	8b ce                	mov    ecx,esi
  9378ae:	e8 dd 1d 00 00       	call   0x939690
  9378b3:	84 c0                	test   al,al
  9378b5:	74 06                	je     0x9378bd
  9378b7:	0b 2d a8 9f 1e 01    	or     ebp,DWORD PTR ds:0x11e9fa8
  9378bd:	8d 54 24 10          	lea    edx,[esp+0x10]
  9378c1:	52                   	push   edx
  9378c2:	68 06 ed 9c 38       	push   0x389ced06
  9378c7:	8b ce                	mov    ecx,esi
  9378c9:	e8 c2 1d 00 00       	call   0x939690
  9378ce:	84 c0                	test   al,al
  9378d0:	74 06                	je     0x9378d8
  9378d2:	0b 2d a8 9f 1e 01    	or     ebp,DWORD PTR ds:0x11e9fa8
  9378d8:	5f                   	pop    edi
  9378d9:	5e                   	pop    esi
  9378da:	8b c5                	mov    eax,ebp
  9378dc:	5d                   	pop    ebp
  9378dd:	5b                   	pop    ebx
  9378de:	83 c4 10             	add    esp,0x10
  9378e1:	c3                   	ret
