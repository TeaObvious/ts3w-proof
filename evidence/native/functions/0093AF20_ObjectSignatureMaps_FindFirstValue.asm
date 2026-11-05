# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original PC1.67 TS3W.exe function envelope; paired actual annotated Ghidra C: 0093AF20_ObjectSignatureMaps_FindFirstValue.c.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093af20 <.text+0x539f20>:
  93af20:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  93af24:	83 ec 08                                        	sub    esp,0x8
  93af27:	56                                              	push   esi
  93af28:	8b 30                                           	mov    esi,DWORD PTR [eax]
  93af2a:	57                                              	push   edi
  93af2b:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
  93af2e:	3b f7                                           	cmp    esi,edi
  93af30:	74 27                                           	je     0x93af59
  93af32:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  93af36:	50                                              	push   eax
  93af37:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  93af3b:	51                                              	push   ecx
  93af3c:	8b ce                                           	mov    ecx,esi
  93af3e:	e8 fd 86 fe ff                                  	call   0x923640
  93af43:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  93af46:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  93af49:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  93af4d:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  93af50:	75 11                                           	jne    0x93af63
  93af52:	83 c6 20                                        	add    esi,0x20
  93af55:	3b f7                                           	cmp    esi,edi
  93af57:	75 d9                                           	jne    0x93af32
  93af59:	5f                                              	pop    edi
  93af5a:	33 c0                                           	xor    eax,eax
  93af5c:	5e                                              	pop    esi
  93af5d:	83 c4 08                                        	add    esp,0x8
  93af60:	c2 0c 00                                        	ret    0xc
  93af63:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  93af66:	5f                                              	pop    edi
  93af67:	5e                                              	pop    esi
  93af68:	83 c4 08                                        	add    esp,0x8
  93af6b:	c2 0c 00                                        	ret    0xc
