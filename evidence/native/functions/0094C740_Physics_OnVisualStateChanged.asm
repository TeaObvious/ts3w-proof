# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x0094c740 (Physics_OnVisualStateChanged)
Full Ghidra function-body envelope: 0x0094c740..0x0094c790 (exclusive end)
Ghidra body ranges: [[0094c740, 0094c78f]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0094c740 <.text+0x54b740>:
  94c740:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  94c744:	85 c9                	test   ecx,ecx
  94c746:	56                   	push   esi
  94c747:	74 43                	je     0x94c78c
  94c749:	a1 c8 9f 1e 01       	mov    eax,ds:0x11e9fc8
  94c74e:	50                   	push   eax
  94c74f:	e8 0c 7b fe ff       	call   0x934260
  94c754:	8b f0                	mov    esi,eax
  94c756:	85 f6                	test   esi,esi
  94c758:	74 32                	je     0x94c78c
  94c75a:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  94c75e:	53                   	push   ebx
  94c75f:	8a 19                	mov    bl,BYTE PTR [ecx]
  94c761:	e8 fa a6 d3 ff       	call   0x686e60
  94c766:	85 c0                	test   eax,eax
  94c768:	74 21                	je     0x94c78b
  94c76a:	83 7e 08 00          	cmp    DWORD PTR [esi+0x8],0x0
  94c76e:	74 1b                	je     0x94c78b
  94c770:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
  94c773:	8b 56 34             	mov    edx,DWORD PTR [esi+0x34]
  94c776:	f6 db                	neg    bl
  94c778:	1b db                	sbb    ebx,ebx
  94c77a:	81 e3 00 00 01 00    	and    ebx,0x10000
  94c780:	81 e2 ff ff fe ff    	and    edx,0xfffeffff
  94c786:	0b da                	or     ebx,edx
  94c788:	89 5e 34             	mov    DWORD PTR [esi+0x34],ebx
  94c78b:	5b                   	pop    ebx
  94c78c:	b0 01                	mov    al,0x1
  94c78e:	5e                   	pop    esi
  94c78f:	c3                   	ret
