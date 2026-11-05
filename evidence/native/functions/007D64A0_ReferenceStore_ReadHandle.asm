# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d64a0 <.text+0x3d54a0>:
  7d64a0:	51                   	push   ecx
  7d64a1:	80 b9 82 00 00 00 00 	cmp    BYTE PTR [ecx+0x82],0x0
  7d64a8:	56                   	push   esi
  7d64a9:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  7d64ad:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7d64b0:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7d64b3:	50                   	push   eax
  7d64b4:	74 1b                	je     0x7d64d1
  7d64b6:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7d64ba:	51                   	push   ecx
  7d64bb:	52                   	push   edx
  7d64bc:	e8 bf 74 d0 ff       	call   0x4dd980
  7d64c1:	83 c4 0c             	add    esp,0xc
  7d64c4:	8b ce                	mov    ecx,esi
  7d64c6:	50                   	push   eax
  7d64c7:	e8 24 15 00 00       	call   0x7d79f0
  7d64cc:	5e                   	pop    esi
  7d64cd:	59                   	pop    ecx
  7d64ce:	c2 08 00             	ret    0x8
  7d64d1:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  7d64d5:	51                   	push   ecx
  7d64d6:	52                   	push   edx
  7d64d7:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  7d64de:	00 
  7d64df:	e8 fc 73 d0 ff       	call   0x4dd8e0
  7d64e4:	83 c4 0c             	add    esp,0xc
  7d64e7:	8b ce                	mov    ecx,esi
  7d64e9:	50                   	push   eax
  7d64ea:	e8 01 15 00 00       	call   0x7d79f0
  7d64ef:	0f b7 44 24 04       	movzx  eax,WORD PTR [esp+0x4]
  7d64f4:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7d64f8:	89 01                	mov    DWORD PTR [ecx],eax
  7d64fa:	5e                   	pop    esi
  7d64fb:	59                   	pop    ecx
  7d64fc:	c2 08 00             	ret    0x8
