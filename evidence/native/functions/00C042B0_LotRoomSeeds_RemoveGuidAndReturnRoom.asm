# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00c042b0,0x00c04313); analyst name LotRoomSeeds_RemoveGuidAndReturnRoom.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c042b0 <.text+0x8032b0>:
  c042b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  c042b4:	53                   	push   ebx
  c042b5:	56                   	push   esi
  c042b6:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
  c042bd:	2b d0                	sub    edx,eax
  c042bf:	57                   	push   edi
  c042c0:	8d 74 91 7c          	lea    esi,[ecx+edx*4+0x7c]
  c042c4:	8d 44 24 14          	lea    eax,[esp+0x14]
  c042c8:	50                   	push   eax
  c042c9:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  c042cd:	51                   	push   ecx
  c042ce:	8b ce                	mov    ecx,esi
  c042d0:	e8 9b fa ff ff       	call   0xc03d70
  c042d5:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  c042d9:	8d 5e 04             	lea    ebx,[esi+0x4]
  c042dc:	3b fb                	cmp    edi,ebx
  c042de:	74 29                	je     0xc04309
  c042e0:	55                   	push   ebp
  c042e1:	0f b7 6f 24          	movzx  ebp,WORD PTR [edi+0x24]
  c042e5:	83 46 14 ff          	add    DWORD PTR [esi+0x14],0xffffffff
  c042e9:	57                   	push   edi
  c042ea:	e8 41 cd 8d ff       	call   0x4e1030
  c042ef:	53                   	push   ebx
  c042f0:	57                   	push   edi
  c042f1:	e8 3a d0 8d ff       	call   0x4e1330
  c042f6:	57                   	push   edi
  c042f7:	e8 e4 01 8e ff       	call   0x4e44e0
  c042fc:	83 c4 10             	add    esp,0x10
  c042ff:	66 8b c5             	mov    ax,bp
  c04302:	5d                   	pop    ebp
  c04303:	5f                   	pop    edi
  c04304:	5e                   	pop    esi
  c04305:	5b                   	pop    ebx
  c04306:	c2 0c 00             	ret    0xc
  c04309:	5f                   	pop    edi
  c0430a:	5e                   	pop    esi
  c0430b:	66 0d ff ff          	or     ax,0xffff
  c0430f:	5b                   	pop    ebx
  c04310:	c2 0c 00             	ret    0xc
