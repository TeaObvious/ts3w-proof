# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00c057b0,0x00c0584f); analyst name LotRoomSeedTree_GetOrInsertLocation.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c057b0 <.text+0x8047b0>:
  c057b0:	83 ec 28             	sub    esp,0x28
  c057b3:	56                   	push   esi
  c057b4:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  c057b8:	57                   	push   edi
  c057b9:	56                   	push   esi
  c057ba:	8d 44 24 38          	lea    eax,[esp+0x38]
  c057be:	50                   	push   eax
  c057bf:	8b f9                	mov    edi,ecx
  c057c1:	e8 ca ee 11 00       	call   0xd24690
  c057c6:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  c057ca:	8d 4f 04             	lea    ecx,[edi+0x4]
  c057cd:	3b c1                	cmp    eax,ecx
  c057cf:	74 11                	je     0xc057e2
  c057d1:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c057d4:	3b 48 14             	cmp    ecx,DWORD PTR [eax+0x14]
  c057d7:	77 6b                	ja     0xc05844
  c057d9:	72 07                	jb     0xc057e2
  c057db:	8b 16                	mov    edx,DWORD PTR [esi]
  c057dd:	3b 50 10             	cmp    edx,DWORD PTR [eax+0x10]
  c057e0:	73 62                	jae    0xc05844
  c057e2:	8b 16                	mov    edx,DWORD PTR [esi]
  c057e4:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  c057ec:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  c057f0:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  c057f3:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  c057f7:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  c057fd:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  c05801:	33 c9                	xor    ecx,ecx
  c05803:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  c05807:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  c0580d:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  c05811:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  c05815:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  c05819:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  c0581d:	88 4c 24 34          	mov    BYTE PTR [esp+0x34],cl
  c05821:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  c05825:	51                   	push   ecx
  c05826:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
  c0582a:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  c0582e:	52                   	push   edx
  c0582f:	51                   	push   ecx
  c05830:	8b cc                	mov    ecx,esp
  c05832:	89 01                	mov    DWORD PTR [ecx],eax
  c05834:	8d 44 24 40          	lea    eax,[esp+0x40]
  c05838:	50                   	push   eax
  c05839:	8b cf                	mov    ecx,edi
  c0583b:	e8 50 f3 ff ff       	call   0xc04b90
  c05840:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  c05844:	5f                   	pop    edi
  c05845:	83 c0 18             	add    eax,0x18
  c05848:	5e                   	pop    esi
  c05849:	83 c4 28             	add    esp,0x28
  c0584c:	c2 04 00             	ret    0x4
