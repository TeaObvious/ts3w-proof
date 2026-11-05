# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0059d730 <.text+0x19c730>:
  59d730:	83 ec 08             	sub    esp,0x8
  59d733:	56                   	push   esi
  59d734:	8b 71 10             	mov    esi,DWORD PTR [ecx+0x10]
  59d737:	57                   	push   edi
  59d738:	8b 79 14             	mov    edi,DWORD PTR [ecx+0x14]
  59d73b:	3b f7                	cmp    esi,edi
  59d73d:	74 28                	je     0x59d767
  59d73f:	90                   	nop
  59d740:	8d 44 24 14          	lea    eax,[esp+0x14]
  59d744:	50                   	push   eax
  59d745:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  59d749:	51                   	push   ecx
  59d74a:	8b ce                	mov    ecx,esi
  59d74c:	e8 ef 5e 38 00       	call   0x923640
  59d751:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  59d754:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59d757:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  59d75b:	3b 0c 90             	cmp    ecx,DWORD PTR [eax+edx*4]
  59d75e:	75 13                	jne    0x59d773
  59d760:	83 c6 20             	add    esi,0x20
  59d763:	3b f7                	cmp    esi,edi
  59d765:	75 d9                	jne    0x59d740
  59d767:	5f                   	pop    edi
  59d768:	33 c0                	xor    eax,eax
  59d76a:	33 d2                	xor    edx,edx
  59d76c:	5e                   	pop    esi
  59d76d:	83 c4 08             	add    esp,0x8
  59d770:	c2 08 00             	ret    0x8
  59d773:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  59d776:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  59d779:	5f                   	pop    edi
  59d77a:	5e                   	pop    esi
  59d77b:	83 c4 08             	add    esp,0x8
  59d77e:	c2 08 00             	ret    0x8
