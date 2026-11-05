# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00aa96b0, 0x00aa984b).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_DecayLotLeafDensity (analyst-assigned)
Entry: 0x00aa96b0
Ghidra body envelope: 0x00aa96b0..0x00aa984a inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00aa96b0 <.text+0x6a86b0>:
  aa96b0:	83 ec 18             	sub    esp,0x18
  aa96b3:	55                   	push   ebp
  aa96b4:	8b e9                	mov    ebp,ecx
  aa96b6:	33 c0                	xor    eax,eax
  aa96b8:	39 85 d0 02 00 00    	cmp    DWORD PTR [ebp+0x2d0],eax
  aa96be:	0f 84 80 01 00 00    	je     0xaa9844
  aa96c4:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  aa96ca:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  aa96d1:	0f 86 6d 01 00 00    	jbe    0xaa9844
  aa96d7:	f3 0f 59 05 34 41 fa 	mulss  xmm0,DWORD PTR ds:0xfa4134
  aa96de:	00
  aa96df:	53                   	push   ebx
  aa96e0:	56                   	push   esi
  aa96e1:	f3 0f 2c d0          	cvttss2si edx,xmm0
  aa96e5:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  aa96e9:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  aa96ed:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  aa96f1:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  aa96f5:	c7 44 24 20 b4 55 06 	mov    DWORD PTR [esp+0x20],0x10655b4
  aa96fc:	01
  aa96fd:	33 db                	xor    ebx,ebx
  aa96ff:	57                   	push   edi
  aa9700:	8b 8d d0 02 00 00    	mov    ecx,DWORD PTR [ebp+0x2d0]
  aa9706:	8d 34 0b             	lea    esi,[ebx+ecx*1]
  aa9709:	8a 0e                	mov    cl,BYTE PTR [esi]
  aa970b:	84 c9                	test   cl,cl
  aa970d:	76 67                	jbe    0xaa9776
  aa970f:	0f b6 c9             	movzx  ecx,cl
  aa9712:	3b ca                	cmp    ecx,edx
  aa9714:	7e 0e                	jle    0xaa9724
  aa9716:	8b 8d d0 02 00 00    	mov    ecx,DWORD PTR [ebp+0x2d0]
  aa971c:	28 14 0b             	sub    BYTE PTR [ebx+ecx*1],dl
  aa971f:	8d 34 0b             	lea    esi,[ebx+ecx*1]
  aa9722:	eb 52                	jmp    0xaa9776
  aa9724:	8a cb                	mov    cl,bl
  aa9726:	80 e1 3f             	and    cl,0x3f
  aa9729:	88 4c 24 10          	mov    BYTE PTR [esp+0x10],cl
  aa972d:	8b cb                	mov    ecx,ebx
  aa972f:	c1 e9 06             	shr    ecx,0x6
  aa9732:	88 4c 24 11          	mov    BYTE PTR [esp+0x11],cl
  aa9736:	32 c9                	xor    cl,cl
  aa9738:	3b 44 24 20          	cmp    eax,DWORD PTR [esp+0x20]
  aa973c:	c6 06 00             	mov    BYTE PTR [esi],0x0
  aa973f:	88 4c 24 12          	mov    BYTE PTR [esp+0x12],cl
  aa9743:	73 1a                	jae    0xaa975f
  aa9745:	8b f0                	mov    esi,eax
  aa9747:	83 c0 03             	add    eax,0x3
  aa974a:	85 f6                	test   esi,esi
  aa974c:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  aa9750:	74 24                	je     0xaa9776
  aa9752:	66 8b 7c 24 10       	mov    di,WORD PTR [esp+0x10]
  aa9757:	66 89 3e             	mov    WORD PTR [esi],di
  aa975a:	88 4e 02             	mov    BYTE PTR [esi+0x2],cl
  aa975d:	eb 17                	jmp    0xaa9776
  aa975f:	8d 54 24 10          	lea    edx,[esp+0x10]
  aa9763:	52                   	push   edx
  aa9764:	50                   	push   eax
  aa9765:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  aa9769:	e8 b2 22 04 00       	call   0xaeba20
  aa976e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  aa9772:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  aa9776:	83 c3 01             	add    ebx,0x1
  aa9779:	81 fb 00 10 00 00    	cmp    ebx,0x1000
  aa977f:	0f 82 7b ff ff ff    	jb     0xaa9700
  aa9785:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  aa9789:	2b c3                	sub    eax,ebx
  aa978b:	8b c8                	mov    ecx,eax
  aa978d:	b8 56 55 55 55       	mov    eax,0x55555556
  aa9792:	f7 e9                	imul   ecx
  aa9794:	8b c2                	mov    eax,edx
  aa9796:	c1 e8 1f             	shr    eax,0x1f
  aa9799:	03 c2                	add    eax,edx
  aa979b:	0f 84 93 00 00 00    	je     0xaa9834
  aa97a1:	e8 fa fb cb ff       	call   0x7693a0
  aa97a6:	8b f8                	mov    edi,eax
  aa97a8:	85 ff                	test   edi,edi
  aa97aa:	0f 84 84 00 00 00    	je     0xaa9834
  aa97b0:	6a 28                	push   0x28
  aa97b2:	e8 99 59 03 00       	call   0xadf150
  aa97b7:	33 f6                	xor    esi,esi
  aa97b9:	83 c4 04             	add    esp,0x4
  aa97bc:	3b c6                	cmp    eax,esi
  aa97be:	74 2e                	je     0xaa97ee
  aa97c0:	c7 00 8c 5f 06 01    	mov    DWORD PTR [eax],0x1065f8c
  aa97c6:	33 c9                	xor    ecx,ecx
  aa97c8:	8d 50 04             	lea    edx,[eax+0x4]
  aa97cb:	87 0a                	xchg   DWORD PTR [edx],ecx
  aa97cd:	c7 00 f0 dd 06 01    	mov    DWORD PTR [eax],0x106ddf0
  aa97d3:	89 70 10             	mov    DWORD PTR [eax+0x10],esi
  aa97d6:	89 70 14             	mov    DWORD PTR [eax+0x14],esi
  aa97d9:	89 70 18             	mov    DWORD PTR [eax+0x18],esi
  aa97dc:	c7 40 1c 30 54 06 01 	mov    DWORD PTR [eax+0x1c],0x1065430
  aa97e3:	8b 10                	mov    edx,DWORD PTR [eax]
  aa97e5:	8b f0                	mov    esi,eax
  aa97e7:	8b c8                	mov    ecx,eax
  aa97e9:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  aa97ec:	ff d0                	call   eax
  aa97ee:	8b 85 9c 02 00 00    	mov    eax,DWORD PTR [ebp+0x29c]
  aa97f4:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  aa97f7:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  aa97fa:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  aa97fd:	8d 44 24 18          	lea    eax,[esp+0x18]
  aa9801:	50                   	push   eax
  aa9802:	8d 4e 10             	lea    ecx,[esi+0x10]
  aa9805:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  aa9808:	e8 a3 fd ff ff       	call   0xaa95b0
  aa980d:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  aa9813:	6a 00                	push   0x0
  aa9815:	6a 00                	push   0x0
  aa9817:	f3 0f 11 46 20       	movss  DWORD PTR [esi+0x20],xmm0
  aa981c:	8b 17                	mov    edx,DWORD PTR [edi]
  aa981e:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  aa9821:	56                   	push   esi
  aa9822:	68 39 1d 7d b7       	push   0xb77d1d39
  aa9827:	8b cf                	mov    ecx,edi
  aa9829:	ff d0                	call   eax
  aa982b:	8b 16                	mov    edx,DWORD PTR [esi]
  aa982d:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  aa9830:	8b ce                	mov    ecx,esi
  aa9832:	ff d0                	call   eax
  aa9834:	85 db                	test   ebx,ebx
  aa9836:	5f                   	pop    edi
  aa9837:	5e                   	pop    esi
  aa9838:	74 09                	je     0xaa9843
  aa983a:	53                   	push   ebx
  aa983b:	e8 a0 ac a3 ff       	call   0x4e44e0
  aa9840:	83 c4 04             	add    esp,0x4
  aa9843:	5b                   	pop    ebx
  aa9844:	5d                   	pop    ebp
  aa9845:	83 c4 18             	add    esp,0x18
  aa9848:	c2 04 00             	ret    0x4
