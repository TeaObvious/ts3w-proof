# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00935670, 0x009356c0); analyst name ObjectEvents_ClearListeners.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00935670 <.text+0x534670>:
  935670:	e8 fb 1e 00 00       	call   0x937570
  935675:	85 c0                	test   eax,eax
  935677:	74 46                	je     0x9356bf
  935679:	57                   	push   edi
  93567a:	8b c8                	mov    ecx,eax
  93567c:	e8 9f 1d 00 00       	call   0x937420
  935681:	8b f8                	mov    edi,eax
  935683:	85 ff                	test   edi,edi
  935685:	74 37                	je     0x9356be
  935687:	53                   	push   ebx
  935688:	56                   	push   esi
  935689:	bb a8 d2 1d 01       	mov    ebx,0x11dd2a8
  93568e:	8b ff                	mov    edi,edi
  935690:	8b 33                	mov    esi,DWORD PTR [ebx]
  935692:	85 f6                	test   esi,esi
  935694:	74 15                	je     0x9356ab
  935696:	8b 17                	mov    edx,DWORD PTR [edi]
  935698:	8b c6                	mov    eax,esi
  93569a:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
  93569d:	6a 00                	push   0x0
  93569f:	50                   	push   eax
  9356a0:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  9356a3:	8b cf                	mov    ecx,edi
  9356a5:	ff d0                	call   eax
  9356a7:	85 f6                	test   esi,esi
  9356a9:	75 eb                	jne    0x935696
  9356ab:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
  9356b1:	83 c3 04             	add    ebx,0x4
  9356b4:	81 fb 50 d3 1d 01    	cmp    ebx,0x11dd350
  9356ba:	7c d4                	jl     0x935690
  9356bc:	5e                   	pop    esi
  9356bd:	5b                   	pop    ebx
  9356be:	5f                   	pop    edi
  9356bf:	c3                   	ret
