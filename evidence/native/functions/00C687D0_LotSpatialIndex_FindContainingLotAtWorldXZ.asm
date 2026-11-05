# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c687d0, 0x00c68879); analyst name LotSpatialIndex_FindContainingLotAtWorldXZ.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c687d0 <.text+0x8677d0>:
  c687d0:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  c687d4:	83 ec 08             	sub    esp,0x8
  c687d7:	83 ec 08             	sub    esp,0x8
  c687da:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c687de:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  c687e2:	d9 1c 24             	fstp   DWORD PTR [esp]
  c687e5:	e8 f6 fe ff ff       	call   0xc686e0
  c687ea:	85 c0                	test   eax,eax
  c687ec:	75 06                	jne    0xc687f4
  c687ee:	83 c4 08             	add    esp,0x8
  c687f1:	c2 08 00             	ret    0x8
  c687f4:	53                   	push   ebx
  c687f5:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  c687f8:	56                   	push   esi
  c687f9:	8b 30                	mov    esi,DWORD PTR [eax]
  c687fb:	3b f3                	cmp    esi,ebx
  c687fd:	57                   	push   edi
  c687fe:	74 63                	je     0xc68863
  c68800:	8b 3e                	mov    edi,DWORD PTR [esi]
  c68802:	85 ff                	test   edi,edi
  c68804:	74 56                	je     0xc6885c
  c68806:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  c6880a:	8d 44 24 10          	lea    eax,[esp+0x10]
  c6880e:	50                   	push   eax
  c6880f:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  c68813:	51                   	push   ecx
  c68814:	83 ec 08             	sub    esp,0x8
  c68817:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c6881b:	8b cf                	mov    ecx,edi
  c6881d:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  c68821:	d9 1c 24             	fstp   DWORD PTR [esp]
  c68824:	e8 17 e6 e4 ff       	call   0xab6e40
  c68829:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  c6882f:	0f 57 c0             	xorps  xmm0,xmm0
  c68832:	0f 2f c8             	comiss xmm1,xmm0
  c68835:	72 25                	jb     0xc6885c
  c68837:	f3 0f 2a 97 74 01 00 00 	cvtsi2ss xmm2,DWORD PTR [edi+0x174]
  c6883f:	0f 2f d1             	comiss xmm2,xmm1
  c68842:	72 18                	jb     0xc6885c
  c68844:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  c6884a:	0f 2f c8             	comiss xmm1,xmm0
  c6884d:	72 0d                	jb     0xc6885c
  c6884f:	f3 0f 2a 87 78 01 00 00 	cvtsi2ss xmm0,DWORD PTR [edi+0x178]
  c68857:	0f 2f c1             	comiss xmm0,xmm1
  c6885a:	73 12                	jae    0xc6886e
  c6885c:	83 c6 04             	add    esi,0x4
  c6885f:	3b f3                	cmp    esi,ebx
  c68861:	75 9d                	jne    0xc68800
  c68863:	5f                   	pop    edi
  c68864:	5e                   	pop    esi
  c68865:	33 c0                	xor    eax,eax
  c68867:	5b                   	pop    ebx
  c68868:	83 c4 08             	add    esp,0x8
  c6886b:	c2 08 00             	ret    0x8
  c6886e:	8b c7                	mov    eax,edi
  c68870:	5f                   	pop    edi
  c68871:	5e                   	pop    esi
  c68872:	5b                   	pop    ebx
  c68873:	83 c4 08             	add    esp,0x8
  c68876:	c2 08 00             	ret    0x8
