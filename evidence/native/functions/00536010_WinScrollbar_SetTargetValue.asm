# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00536010 WinScrollbar_SetTargetValue
# Complete Ghidra body [00536010, 005360b3] inclusive; 60 instructions, 164 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 00536010_WinScrollbar_SetTargetValue.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00536010 <.text+0x135010>:
  536010:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  536014:	83 ec 08                                        	sub    esp,0x8
  536017:	53                                              	push   ebx
  536018:	56                                              	push   esi
  536019:	8b f1                                           	mov    esi,ecx
  53601b:	33 db                                           	xor    ebx,ebx
  53601d:	f6 46 40 02                                     	test   BYTE PTR [esi+0x40],0x2
  536021:	74 17                                           	je     0x53603a
  536023:	8b 4e 24                                        	mov    ecx,DWORD PTR [esi+0x24]
  536026:	99                                              	cdq
  536027:	f7 f9                                           	idiv   ecx
  536029:	57                                              	push   edi
  53602a:	8d 7b 01                                        	lea    edi,[ebx+0x1]
  53602d:	03 d2                                           	add    edx,edx
  53602f:	3b d1                                           	cmp    edx,ecx
  536031:	0f 4c fb                                        	cmovl  edi,ebx
  536034:	03 c7                                           	add    eax,edi
  536036:	0f af c1                                        	imul   eax,ecx
  536039:	5f                                              	pop    edi
  53603a:	8b 4e 18                                        	mov    ecx,DWORD PTR [esi+0x18]
  53603d:	2b 4e 1c                                        	sub    ecx,DWORD PTR [esi+0x1c]
  536040:	3b c1                                           	cmp    eax,ecx
  536042:	0f 4f c1                                        	cmovg  eax,ecx
  536045:	8b 4e 14                                        	mov    ecx,DWORD PTR [esi+0x14]
  536048:	3b c1                                           	cmp    eax,ecx
  53604a:	0f 4c c1                                        	cmovl  eax,ecx
  53604d:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  536050:	3b c1                                           	cmp    eax,ecx
  536052:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  536055:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  536058:	74 52                                           	je     0x5360ac
  53605a:	8b 86 b0 fd ff ff                               	mov    eax,DWORD PTR [esi-0x250]
  536060:	8b 90 9c 00 00 00                               	mov    edx,DWORD PTR [eax+0x9c]
  536066:	89 4e 10                                        	mov    DWORD PTR [esi+0x10],ecx
  536069:	8d 8e b0 fd ff ff                               	lea    ecx,[esi-0x250]
  53606f:	ff d2                                           	call   edx
  536071:	83 7e 58 01                                     	cmp    DWORD PTR [esi+0x58],0x1
  536075:	89 5e 48                                        	mov    DWORD PTR [esi+0x48],ebx
  536078:	89 5e 4c                                        	mov    DWORD PTR [esi+0x4c],ebx
  53607b:	89 5e 50                                        	mov    DWORD PTR [esi+0x50],ebx
  53607e:	89 5e 54                                        	mov    DWORD PTR [esi+0x54],ebx
  536081:	75 10                                           	jne    0x536093
  536083:	0f 31                                           	rdtsc
  536085:	89 46 48                                        	mov    DWORD PTR [esi+0x48],eax
  536088:	89 56 4c                                        	mov    DWORD PTR [esi+0x4c],edx
  53608b:	5e                                              	pop    esi
  53608c:	5b                                              	pop    ebx
  53608d:	83 c4 08                                        	add    esp,0x8
  536090:	c2 04 00                                        	ret    0x4
  536093:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  536097:	50                                              	push   eax
  536098:	ff 15 bc 63 f9 00                               	call   DWORD PTR ds:0xf963bc
  53609e:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5360a2:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5360a6:	89 4e 48                                        	mov    DWORD PTR [esi+0x48],ecx
  5360a9:	89 56 4c                                        	mov    DWORD PTR [esi+0x4c],edx
  5360ac:	5e                                              	pop    esi
  5360ad:	5b                                              	pop    ebx
  5360ae:	83 c4 08                                        	add    esp,0x8
  5360b1:	c2 04 00                                        	ret    0x4
