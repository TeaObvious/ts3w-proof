# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095f890 <.text+0x55e890>:
  95f890:	55                   	push   ebp
  95f891:	8b ec                	mov    ebp,esp
  95f893:	83 e4 f0             	and    esp,0xfffffff0
  95f896:	83 ec 5c             	sub    esp,0x5c
  95f899:	56                   	push   esi
  95f89a:	8b f1                	mov    esi,ecx
  95f89c:	83 7e 14 00          	cmp    DWORD PTR [esi+0x14],0x0
  95f8a0:	74 05                	je     0x95f8a7
  95f8a2:	e8 a9 ea ff ff       	call   0x95e350
  95f8a7:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  95f8aa:	c1 e8 0f             	shr    eax,0xf
  95f8ad:	a8 01                	test   al,0x1
  95f8af:	74 07                	je     0x95f8b8
  95f8b1:	8b ce                	mov    ecx,esi
  95f8b3:	e8 88 fc ff ff       	call   0x95f540
  95f8b8:	f7 46 08 00 00 1e 00 	test   DWORD PTR [esi+0x8],0x1e0000
  95f8bf:	74 09                	je     0x95f8ca
  95f8c1:	6a 00                	push   0x0
  95f8c3:	8b ce                	mov    ecx,esi
  95f8c5:	e8 c6 ed ff ff       	call   0x95e690
  95f8ca:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  95f8cd:	8b 0d c0 9f 1e 01    	mov    ecx,DWORD PTR ds:0x11e9fc0
  95f8d3:	85 48 2c             	test   DWORD PTR [eax+0x2c],ecx
  95f8d6:	74 4c                	je     0x95f924
  95f8d8:	f6 46 08 01          	test   BYTE PTR [esi+0x8],0x1
  95f8dc:	75 46                	jne    0x95f924
  95f8de:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  95f8e1:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  95f8e4:	8d 54 24 10          	lea    edx,[esp+0x10]
  95f8e8:	52                   	push   edx
  95f8e9:	c7 44 24 14 9b 22 28 	mov    DWORD PTR [esp+0x14],0xe128229b
  95f8f0:	e1 
  95f8f1:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  95f8f8:	00 
  95f8f9:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  95f8fd:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  95f901:	c7 44 24 24 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  95f908:	00 
  95f909:	e8 72 3a d3 ff       	call   0x693380
  95f90e:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  95f912:	83 c4 04             	add    esp,0x4
  95f915:	85 c9                	test   ecx,ecx
  95f917:	74 0b                	je     0x95f924
  95f919:	8b 01                	mov    eax,DWORD PTR [ecx]
  95f91b:	8b 00                	mov    eax,DWORD PTR [eax]
  95f91d:	8d 54 24 20          	lea    edx,[esp+0x20]
  95f921:	52                   	push   edx
  95f922:	ff d0                	call   eax
  95f924:	b0 01                	mov    al,0x1
  95f926:	5e                   	pop    esi
  95f927:	8b e5                	mov    esp,ebp
  95f929:	5d                   	pop    ebp
  95f92a:	c2 04 00             	ret    0x4
