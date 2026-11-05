# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00954660,0x00954815); analyst name Steering_InvokeManagedStairsCompleted.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00954660 <.text+0x553660>:
  954660:	81 ec 90 00 00 00    	sub    esp,0x90
  954666:	53                   	push   ebx
  954667:	55                   	push   ebp
  954668:	56                   	push   esi
  954669:	8b b4 24 a0 00 00 00 	mov    esi,DWORD PTR [esp+0xa0]
  954670:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  954673:	33 db                	xor    ebx,ebx
  954675:	3b 46 20             	cmp    eax,DWORD PTR [esi+0x20]
  954678:	8b e9                	mov    ebp,ecx
  95467a:	c6 44 24 0f 01       	mov    BYTE PTR [esp+0xf],0x1
  95467f:	74 04                	je     0x954685
  954681:	88 5c 24 0f          	mov    BYTE PTR [esp+0xf],bl
  954685:	8d 4d f8             	lea    ecx,[ebp-0x8]
  954688:	e8 93 f0 ff ff       	call   0x953720
  95468d:	e8 fe 4c e1 ff       	call   0x769390
  954692:	3b c3                	cmp    eax,ebx
  954694:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  954698:	0f 84 6b 01 00 00    	je     0x954809
  95469e:	57                   	push   edi
  95469f:	83 c6 08             	add    esi,0x8
  9546a2:	bf f4 a6 fb 00       	mov    edi,0xfba6f4
  9546a7:	56                   	push   esi
  9546a8:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  9546ac:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  9546b0:	66 89 5c 24 20       	mov    WORD PTR [esp+0x20],bx
  9546b5:	66 89 5c 24 22       	mov    WORD PTR [esp+0x22],bx
  9546ba:	e8 61 19 ba ff       	call   0x4f6020
  9546bf:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  9546c3:	51                   	push   ecx
  9546c4:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  9546c8:	89 7c 24 44          	mov    DWORD PTR [esp+0x44],edi
  9546cc:	66 89 5c 24 4c       	mov    WORD PTR [esp+0x4c],bx
  9546d1:	66 89 5c 24 4e       	mov    WORD PTR [esp+0x4e],bx
  9546d6:	e8 d5 1d ba ff       	call   0x4f64b0
  9546db:	f6 44 24 1c 04       	test   BYTE PTR [esp+0x1c],0x4
  9546e0:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  9546e4:	74 0a                	je     0x9546f0
  9546e6:	53                   	push   ebx
  9546e7:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  9546eb:	e8 70 10 ba ff       	call   0x4f5760
  9546f0:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  9546f3:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9546f6:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  9546fa:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  9546fe:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  954701:	51                   	push   ecx
  954702:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  954706:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  95470a:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  95470e:	66 89 5c 24 20       	mov    WORD PTR [esp+0x20],bx
  954713:	66 89 5c 24 22       	mov    WORD PTR [esp+0x22],bx
  954718:	e8 03 19 ba ff       	call   0x4f6020
  95471d:	8d 54 24 14          	lea    edx,[esp+0x14]
  954721:	52                   	push   edx
  954722:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  954726:	89 7c 24 64          	mov    DWORD PTR [esp+0x64],edi
  95472a:	66 89 5c 24 6c       	mov    WORD PTR [esp+0x6c],bx
  95472f:	66 89 5c 24 6e       	mov    WORD PTR [esp+0x6e],bx
  954734:	e8 77 1d ba ff       	call   0x4f64b0
  954739:	f6 44 24 1c 04       	test   BYTE PTR [esp+0x1c],0x4
  95473e:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  954742:	74 0a                	je     0x95474e
  954744:	53                   	push   ebx
  954745:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  954749:	e8 12 10 ba ff       	call   0x4f5760
  95474e:	8a 44 24 13          	mov    al,BYTE PTR [esp+0x13]
  954752:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  954756:	51                   	push   ecx
  954757:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  95475e:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  954762:	88 44 24 28          	mov    BYTE PTR [esp+0x28],al
  954766:	66 c7 44 24 22 01 00 	mov    WORD PTR [esp+0x22],0x1
  95476d:	66 89 5c 24 20       	mov    WORD PTR [esp+0x20],bx
  954772:	89 bc 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],edi
  954779:	66 89 9c 24 8c 00 00 00 	mov    WORD PTR [esp+0x8c],bx
  954781:	66 89 9c 24 8e 00 00 00 	mov    WORD PTR [esp+0x8e],bx
  954789:	e8 22 1d ba ff       	call   0x4f64b0
  95478e:	f6 44 24 1c 04       	test   BYTE PTR [esp+0x1c],0x4
  954793:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  954797:	74 0a                	je     0x9547a3
  954799:	53                   	push   ebx
  95479a:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  95479e:	e8 bd 0f ba ff       	call   0x4f5760
  9547a3:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  9547a7:	8b 11                	mov    edx,DWORD PTR [ecx]
  9547a9:	8b 92 38 01 00 00    	mov    edx,DWORD PTR [edx+0x138]
  9547af:	6a 03                	push   0x3
  9547b1:	8d 44 24 44          	lea    eax,[esp+0x44]
  9547b5:	50                   	push   eax
  9547b6:	68 58 55 04 01       	push   0x1045558
  9547bb:	68 28 55 04 01       	push   0x1045528
  9547c0:	8d 44 24 24          	lea    eax,[esp+0x24]
  9547c4:	50                   	push   eax
  9547c5:	ff d2                	call   edx
  9547c7:	f6 44 24 1c 04       	test   BYTE PTR [esp+0x1c],0x4
  9547cc:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  9547d0:	74 0a                	je     0x9547dc
  9547d2:	53                   	push   ebx
  9547d3:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  9547d7:	e8 84 0f ba ff       	call   0x4f5760
  9547dc:	8d b4 24 a0 00 00 00 	lea    esi,[esp+0xa0]
  9547e3:	bd 02 00 00 00       	mov    ebp,0x2
  9547e8:	eb 06                	jmp    0x9547f0
  9547ea:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  9547f0:	83 ee 20             	sub    esi,0x20
  9547f3:	f6 46 08 04          	test   BYTE PTR [esi+0x8],0x4
  9547f7:	89 3e                	mov    DWORD PTR [esi],edi
  9547f9:	74 08                	je     0x954803
  9547fb:	53                   	push   ebx
  9547fc:	8b ce                	mov    ecx,esi
  9547fe:	e8 5d 0f ba ff       	call   0x4f5760
  954803:	83 ed 01             	sub    ebp,0x1
  954806:	79 e8                	jns    0x9547f0
  954808:	5f                   	pop    edi
  954809:	5e                   	pop    esi
  95480a:	5d                   	pop    ebp
  95480b:	5b                   	pop    ebx
  95480c:	81 c4 90 00 00 00    	add    esp,0x90
  954812:	c2 04 00             	ret    0x4
