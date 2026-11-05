# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00ec7650,0x00ec76c4); analyst name GameState_QueueWorldLoad.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ec7650 <.text+0xac6650>:
  ec7650:	53                   	push   ebx
  ec7651:	56                   	push   esi
  ec7652:	57                   	push   edi
  ec7653:	33 ff                	xor    edi,edi
  ec7655:	57                   	push   edi
  ec7656:	57                   	push   edi
  ec7657:	57                   	push   edi
  ec7658:	57                   	push   edi
  ec7659:	68 10 58 0f 01       	push   0x10f5810
  ec765e:	6a 24                	push   0x24
  ec7660:	e8 9b ce 61 ff       	call   0x4e4500
  ec7665:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
  ec7669:	8b f0                	mov    esi,eax
  ec766b:	83 c4 18             	add    esp,0x18
  ec766e:	3b f7                	cmp    esi,edi
  ec7670:	74 3f                	je     0xec76b1
  ec7672:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  ec7676:	8d 4e 10             	lea    ecx,[esi+0x10]
  ec7679:	89 7e 04             	mov    DWORD PTR [esi+0x4],edi
  ec767c:	c7 06 78 57 0f 01    	mov    DWORD PTR [esi],0x10f5778
  ec7682:	89 7e 08             	mov    DWORD PTR [esi+0x8],edi
  ec7685:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  ec7688:	89 39                	mov    DWORD PTR [ecx],edi
  ec768a:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  ec768d:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  ec7690:	50                   	push   eax
  ec7691:	c7 41 0c d4 57 0f 01 	mov    DWORD PTR [ecx+0xc],0x10f57d4
  ec7698:	e8 f3 3e 54 ff       	call   0x40b590
  ec769d:	68 58 69 8d 02       	push   0x28d6958
  ec76a2:	56                   	push   esi
  ec76a3:	8b cb                	mov    ecx,ebx
  ec76a5:	89 7e 20             	mov    DWORD PTR [esi+0x20],edi
  ec76a8:	e8 93 db ff ff       	call   0xec5240
  ec76ad:	5f                   	pop    edi
  ec76ae:	5e                   	pop    esi
  ec76af:	5b                   	pop    ebx
  ec76b0:	c3                   	ret
  ec76b1:	68 58 69 8d 02       	push   0x28d6958
  ec76b6:	33 f6                	xor    esi,esi
  ec76b8:	56                   	push   esi
  ec76b9:	8b cb                	mov    ecx,ebx
  ec76bb:	e8 80 db ff ff       	call   0xec5240
  ec76c0:	5f                   	pop    edi
  ec76c1:	5e                   	pop    esi
  ec76c2:	5b                   	pop    ebx
  ec76c3:	c3                   	ret
