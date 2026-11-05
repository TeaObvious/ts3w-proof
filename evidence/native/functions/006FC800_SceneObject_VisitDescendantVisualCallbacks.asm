# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x006fc800 (SceneObject_VisitDescendantVisualCallbacks)
Full Ghidra function-body envelope: 0x006fc800..0x006fc839 (exclusive end)
Ghidra body ranges: [[006fc800, 006fc838]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006fc800 <.text+0x2fb800>:
  6fc800:	53                   	push   ebx
  6fc801:	8d 99 94 01 00 00    	lea    ebx,[ecx+0x194]
  6fc807:	39 5b 04             	cmp    DWORD PTR [ebx+0x4],ebx
  6fc80a:	74 2b                	je     0x6fc837
  6fc80c:	56                   	push   esi
  6fc80d:	8b 33                	mov    esi,DWORD PTR [ebx]
  6fc80f:	3b f3                	cmp    esi,ebx
  6fc811:	74 23                	je     0x6fc836
  6fc813:	57                   	push   edi
  6fc814:	85 f6                	test   esi,esi
  6fc816:	74 05                	je     0x6fc81d
  6fc818:	8d 7e e0             	lea    edi,[esi-0x20]
  6fc81b:	eb 02                	jmp    0x6fc81f
  6fc81d:	33 ff                	xor    edi,edi
  6fc81f:	8b 07                	mov    eax,DWORD PTR [edi]
  6fc821:	8b 50 5c             	mov    edx,DWORD PTR [eax+0x5c]
  6fc824:	8b cf                	mov    ecx,edi
  6fc826:	ff d2                	call   edx
  6fc828:	8b cf                	mov    ecx,edi
  6fc82a:	e8 d1 ff ff ff       	call   0x6fc800
  6fc82f:	8b 36                	mov    esi,DWORD PTR [esi]
  6fc831:	3b f3                	cmp    esi,ebx
  6fc833:	75 df                	jne    0x6fc814
  6fc835:	5f                   	pop    edi
  6fc836:	5e                   	pop    esi
  6fc837:	5b                   	pop    ebx
  6fc838:	c3                   	ret
