# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00aff6a0, 0x00aff731); analyst name Lot_TestNextLevelAtLocalLocation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00aff6a0 <.text+0x6fe6a0>:
  aff6a0:	56                   	push   esi
  aff6a1:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  aff6a5:	85 f6                	test   esi,esi
  aff6a7:	75 04                	jne    0xaff6ad
  aff6a9:	32 c0                	xor    al,al
  aff6ab:	5e                   	pop    esi
  aff6ac:	c3                   	ret
  aff6ad:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  aff6b1:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  aff6b5:	0f 57 d2             	xorps  xmm2,xmm2
  aff6b8:	0f 2f c2             	comiss xmm0,xmm2
  aff6bb:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  aff6c0:	72 e7                	jb     0xaff6a9
  aff6c2:	f3 0f 2a 9e 74 01 00 00 	cvtsi2ss xmm3,DWORD PTR [esi+0x174]
  aff6ca:	0f 2f d8             	comiss xmm3,xmm0
  aff6cd:	72 da                	jb     0xaff6a9
  aff6cf:	0f 2f ca             	comiss xmm1,xmm2
  aff6d2:	72 d5                	jb     0xaff6a9
  aff6d4:	f3 0f 2a 86 78 01 00 00 	cvtsi2ss xmm0,DWORD PTR [esi+0x178]
  aff6dc:	0f 2f c1             	comiss xmm0,xmm1
  aff6df:	72 c8                	jb     0xaff6a9
  aff6e1:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  aff6e4:	3b 8e 7c 01 00 00    	cmp    ecx,DWORD PTR [esi+0x17c]
  aff6ea:	7c bd                	jl     0xaff6a9
  aff6ec:	3b 8e 80 01 00 00    	cmp    ecx,DWORD PTR [esi+0x180]
  aff6f2:	7f b5                	jg     0xaff6a9
  aff6f4:	80 c9 ff             	or     cl,0xff
  aff6f7:	88 4c 24 08          	mov    BYTE PTR [esp+0x8],cl
  aff6fb:	88 4c 24 09          	mov    BYTE PTR [esp+0x9],cl
  aff6ff:	88 4c 24 0b          	mov    BYTE PTR [esp+0xb],cl
  aff703:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  aff707:	51                   	push   ecx
  aff708:	50                   	push   eax
  aff709:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  aff70e:	e8 9d 86 ff ff       	call   0xaf7db0
  aff713:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  aff717:	80 44 24 12 01       	add    BYTE PTR [esp+0x12],0x1
  aff71c:	6a 00                	push   0x0
  aff71e:	6a 01                	push   0x1
  aff720:	52                   	push   edx
  aff721:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  aff725:	50                   	push   eax
  aff726:	56                   	push   esi
  aff727:	e8 d4 15 fd ff       	call   0xad0d00
  aff72c:	83 c4 1c             	add    esp,0x1c
  aff72f:	5e                   	pop    esi
  aff730:	c3                   	ret
