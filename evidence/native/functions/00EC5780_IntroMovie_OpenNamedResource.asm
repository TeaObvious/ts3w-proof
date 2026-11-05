# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00ec5780 (IntroMovie_OpenNamedResource)
Complete function body: 0x00ec5780..0x00ec582e (exclusive end)
Ghidra body ranges: [[00ec5780, 00ec582d]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ec5780 <.text+0xac4780>:
  ec5780:	83 ec 10                                        	sub    esp,0x10
  ec5783:	55                                              	push   ebp
  ec5784:	56                                              	push   esi
  ec5785:	8b f1                                           	mov    esi,ecx
  ec5787:	e8 34 0d b1 ff                                  	call   0x9d64c0
  ec578c:	8b e8                                           	mov    ebp,eax
  ec578e:	85 ed                                           	test   ebp,ebp
  ec5790:	75 0a                                           	jne    0xec579c
  ec5792:	5e                                              	pop    esi
  ec5793:	32 c0                                           	xor    al,al
  ec5795:	5d                                              	pop    ebp
  ec5796:	83 c4 10                                        	add    esp,0x10
  ec5799:	c2 10 00                                        	ret    0x10
  ec579c:	53                                              	push   ebx
  ec579d:	57                                              	push   edi
  ec579e:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
  ec57a2:	8b c7                                           	mov    eax,edi
  ec57a4:	85 c0                                           	test   eax,eax
  ec57a6:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  ec57aa:	db 44 24 28                                     	fild   DWORD PTR [esp+0x28]
  ec57ae:	7d 06                                           	jge    0xec57b6
  ec57b0:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  ec57b6:	8b 5c 24 2c                                     	mov    ebx,DWORD PTR [esp+0x2c]
  ec57ba:	d9 5e 04                                        	fstp   DWORD PTR [esi+0x4]
  ec57bd:	8b cb                                           	mov    ecx,ebx
  ec57bf:	85 c9                                           	test   ecx,ecx
  ec57c1:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  ec57c5:	db 44 24 28                                     	fild   DWORD PTR [esp+0x28]
  ec57c9:	7d 06                                           	jge    0xec57d1
  ec57cb:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  ec57d1:	d9 5e 08                                        	fstp   DWORD PTR [esi+0x8]
  ec57d4:	e8 a7 a6 5e ff                                  	call   0x4afe80
  ec57d9:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  ec57dd:	33 f6                                           	xor    esi,esi
  ec57df:	56                                              	push   esi
  ec57e0:	68 f6 1a cc b1                                  	push   0xb1cc1af6
  ec57e5:	51                                              	push   ecx
  ec57e6:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  ec57ea:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  ec57ee:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  ec57f2:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  ec57f6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec57f8:	8b 92 80 00 00 00                               	mov    edx,DWORD PTR [edx+0x80]
  ec57fe:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  ec5802:	51                                              	push   ecx
  ec5803:	8b c8                                           	mov    ecx,eax
  ec5805:	ff d2                                           	call   edx
  ec5807:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  ec580b:	56                                              	push   esi
  ec580c:	56                                              	push   esi
  ec580d:	56                                              	push   esi
  ec580e:	53                                              	push   ebx
  ec580f:	57                                              	push   edi
  ec5810:	51                                              	push   ecx
  ec5811:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  ec5814:	56                                              	push   esi
  ec5815:	56                                              	push   esi
  ec5816:	56                                              	push   esi
  ec5817:	56                                              	push   esi
  ec5818:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  ec581c:	50                                              	push   eax
  ec581d:	8b cd                                           	mov    ecx,ebp
  ec581f:	e8 bc 21 b1 ff                                  	call   0x9d79e0
  ec5824:	5f                                              	pop    edi
  ec5825:	5b                                              	pop    ebx
  ec5826:	5e                                              	pop    esi
  ec5827:	5d                                              	pop    ebp
  ec5828:	83 c4 10                                        	add    esp,0x10
  ec582b:	c2 10 00                                        	ret    0x10
