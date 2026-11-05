# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004f37c0 <.text+0xf27c0>:
  4f37c0:	83 ec 08             	sub    esp,0x8
  4f37c3:	53                   	push   ebx
  4f37c4:	56                   	push   esi
  4f37c5:	8b f1                	mov    esi,ecx
  4f37c7:	8b 06                	mov    eax,DWORD PTR [esi]
  4f37c9:	0b 46 04             	or     eax,DWORD PTR [esi+0x4]
  4f37cc:	8b 5e 0c             	mov    ebx,DWORD PTR [esi+0xc]
  4f37cf:	57                   	push   edi
  4f37d0:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
  4f37d3:	74 4e                	je     0x4f3823
  4f37d5:	83 7e 10 01          	cmp    DWORD PTR [esi+0x10],0x1
  4f37d9:	75 04                	jne    0x4f37df
  4f37db:	0f 31                	rdtsc
  4f37dd:	eb 13                	jmp    0x4f37f2
  4f37df:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  4f37e3:	51                   	push   ecx
  4f37e4:	ff 15 bc 63 f9 00    	call   DWORD PTR ds:0xf963bc
  4f37ea:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  4f37ee:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  4f37f2:	2b 06                	sub    eax,DWORD PTR [esi]
  4f37f4:	55                   	push   ebp
  4f37f5:	1b 56 04             	sbb    edx,DWORD PTR [esi+0x4]
  4f37f8:	8b c8                	mov    ecx,eax
  4f37fa:	8b c2                	mov    eax,edx
  4f37fc:	8b 15 14 c9 1c 01    	mov    edx,DWORD PTR ds:0x11cc914
  4f3802:	3b c2                	cmp    eax,edx
  4f3804:	72 16                	jb     0x4f381c
  4f3806:	8b 2d 10 c9 1c 01    	mov    ebp,DWORD PTR ds:0x11cc910
  4f380c:	77 04                	ja     0x4f3812
  4f380e:	3b cd                	cmp    ecx,ebp
  4f3810:	76 0a                	jbe    0x4f381c
  4f3812:	2b cd                	sub    ecx,ebp
  4f3814:	1b c2                	sbb    eax,edx
  4f3816:	03 f9                	add    edi,ecx
  4f3818:	13 d8                	adc    ebx,eax
  4f381a:	eb 06                	jmp    0x4f3822
  4f381c:	83 c7 01             	add    edi,0x1
  4f381f:	83 d3 00             	adc    ebx,0x0
  4f3822:	5d                   	pop    ebp
  4f3823:	8b c3                	mov    eax,ebx
  4f3825:	8b cb                	mov    ecx,ebx
  4f3827:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
  4f382b:	25 ff ff ff 7f       	and    eax,0x7fffffff
  4f3830:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  4f3834:	df 6c 24 0c          	fild   QWORD PTR [esp+0xc]
  4f3838:	81 e1 00 00 00 80    	and    ecx,0x80000000
  4f383e:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  4f3842:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
  4f3849:	00 
  4f384a:	df 6c 24 0c          	fild   QWORD PTR [esp+0xc]
  4f384e:	5f                   	pop    edi
  4f384f:	d9 e0                	fchs
  4f3851:	de c1                	faddp  st(1),st
  4f3853:	d8 4e 14             	fmul   DWORD PTR [esi+0x14]
  4f3856:	5e                   	pop    esi
  4f3857:	5b                   	pop    ebx
  4f3858:	83 c4 08             	add    esp,0x8
  4f385b:	c3                   	ret
