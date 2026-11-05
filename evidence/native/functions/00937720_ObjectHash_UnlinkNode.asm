# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937720, 0x0093778c); analyst name ObjectHash_UnlinkNode.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937720 <.text+0x536720>:
  937720:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  937724:	53                   	push   ebx
  937725:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  937729:	56                   	push   esi
  93772a:	57                   	push   edi
  93772b:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  93772f:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
  937732:	85 d2                	test   edx,edx
  937734:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  937737:	89 10                	mov    DWORD PTR [eax],edx
  937739:	75 13                	jne    0x93774e
  93773b:	be 04 00 00 00       	mov    esi,0x4
  937740:	01 70 04             	add    DWORD PTR [eax+0x4],esi
  937743:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  937746:	8b 12                	mov    edx,DWORD PTR [edx]
  937748:	85 d2                	test   edx,edx
  93774a:	89 10                	mov    DWORD PTR [eax],edx
  93774c:	74 f2                	je     0x937740
  93774e:	8b 33                	mov    esi,DWORD PTR [ebx]
  937750:	3b f7                	cmp    esi,edi
  937752:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  937755:	75 0f                	jne    0x937766
  937757:	5f                   	pop    edi
  937758:	89 13                	mov    DWORD PTR [ebx],edx
  93775a:	83 81 28 10 00 00 ff 	add    DWORD PTR [ecx+0x1028],0xffffffff
  937761:	5e                   	pop    esi
  937762:	5b                   	pop    ebx
  937763:	c2 0c 00             	ret    0xc
  937766:	3b d7                	cmp    edx,edi
  937768:	74 0f                	je     0x937779
  93776a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  937770:	8b f2                	mov    esi,edx
  937772:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
  937775:	3b d7                	cmp    edx,edi
  937777:	75 f7                	jne    0x937770
  937779:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
  93777c:	5f                   	pop    edi
  93777d:	89 56 10             	mov    DWORD PTR [esi+0x10],edx
  937780:	83 81 28 10 00 00 ff 	add    DWORD PTR [ecx+0x1028],0xffffffff
  937787:	5e                   	pop    esi
  937788:	5b                   	pop    ebx
  937789:	c2 0c 00             	ret    0xc
