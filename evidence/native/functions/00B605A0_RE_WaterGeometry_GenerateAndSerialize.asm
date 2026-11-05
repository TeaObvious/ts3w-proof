# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00b605a0, 0x00b60662); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00b605a0 <.text+0x75f5a0>:
  b605a0:	83 ec 10             	sub    esp,0x10
  b605a3:	80 7c 24 18 00       	cmp    BYTE PTR [esp+0x18],0x0
  b605a8:	56                   	push   esi
  b605a9:	8b f1                	mov    esi,ecx
  b605ab:	8b 46 7c             	mov    eax,DWORD PTR [esi+0x7c]
  b605ae:	57                   	push   edi
  b605af:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  b605b6:	00 
  b605b7:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
  b605be:	00 
  b605bf:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  b605c6:	00 
  b605c7:	c7 44 24 14 f0 ed 06 	mov    DWORD PTR [esp+0x14],0x106edf0
  b605ce:	01 
  b605cf:	89 86 80 00 00 00    	mov    DWORD PTR [esi+0x80],eax
  b605d5:	74 13                	je     0xb605ea
  b605d7:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  b605db:	51                   	push   ecx
  b605dc:	8d 54 24 0c          	lea    edx,[esp+0xc]
  b605e0:	52                   	push   edx
  b605e1:	8b ce                	mov    ecx,esi
  b605e3:	e8 58 f6 ff ff       	call   0xb5fc40
  b605e8:	eb 0a                	jmp    0xb605f4
  b605ea:	8d 44 24 08          	lea    eax,[esp+0x8]
  b605ee:	50                   	push   eax
  b605ef:	e8 6c f2 ff ff       	call   0xb5f860
  b605f4:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
  b605f8:	55                   	push   ebp
  b605f9:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  b605fd:	8b cd                	mov    ecx,ebp
  b605ff:	2b cf                	sub    ecx,edi
  b60601:	b8 ab aa aa 2a       	mov    eax,0x2aaaaaab
  b60606:	f7 e9                	imul   ecx
  b60608:	d1 fa                	sar    edx,1
  b6060a:	8b ca                	mov    ecx,edx
  b6060c:	c1 e9 1f             	shr    ecx,0x1f
  b6060f:	03 ca                	add    ecx,edx
  b60611:	3b fd                	cmp    edi,ebp
  b60613:	89 0e                	mov    DWORD PTR [esi],ecx
  b60615:	5d                   	pop    ebp
  b60616:	74 17                	je     0xb6062f
  b60618:	80 7c 24 24 00       	cmp    BYTE PTR [esp+0x24],0x0
  b6061d:	74 10                	je     0xb6062f
  b6061f:	8d 54 24 08          	lea    edx,[esp+0x8]
  b60623:	52                   	push   edx
  b60624:	8b ce                	mov    ecx,esi
  b60626:	e8 85 c8 ff ff       	call   0xb5ceb0
  b6062b:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
  b6062f:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  b60633:	85 c0                	test   eax,eax
  b60635:	74 16                	je     0xb6064d
  b60637:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  b6063b:	51                   	push   ecx
  b6063c:	50                   	push   eax
  b6063d:	8d 54 24 10          	lea    edx,[esp+0x10]
  b60641:	52                   	push   edx
  b60642:	8b ce                	mov    ecx,esi
  b60644:	e8 57 c5 ff ff       	call   0xb5cba0
  b60649:	8b 7c 24 08          	mov    edi,DWORD PTR [esp+0x8]
  b6064d:	85 ff                	test   edi,edi
  b6064f:	74 09                	je     0xb6065a
  b60651:	57                   	push   edi
  b60652:	e8 89 3e 98 ff       	call   0x4e44e0
  b60657:	83 c4 04             	add    esp,0x4
  b6065a:	5f                   	pop    edi
  b6065b:	5e                   	pop    esi
  b6065c:	83 c4 10             	add    esp,0x10
  b6065f:	c2 14 00             	ret    0x14
