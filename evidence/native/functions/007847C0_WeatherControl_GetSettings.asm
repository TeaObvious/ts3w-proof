# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007847c0 <.text+0x3837c0>:
  7847c0:	a1 c4 db 1e 01       	mov    eax,ds:0x11edbc4
  7847c5:	81 ec c0 00 00 00    	sub    esp,0xc0
  7847cb:	85 c0                	test   eax,eax
  7847cd:	74 05                	je     0x7847d4
  7847cf:	8b 48 74             	mov    ecx,DWORD PTR [eax+0x74]
  7847d2:	eb 02                	jmp    0x7847d6
  7847d4:	33 c9                	xor    ecx,ecx
  7847d6:	33 c0                	xor    eax,eax
  7847d8:	85 c9                	test   ecx,ecx
  7847da:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  7847de:	0f 84 40 02 00 00    	je     0x784a24
  7847e4:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  7847eb:	00 
  7847ec:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  7847f3:	00 
  7847f4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  7847f8:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  7847fc:	88 44 24 2c          	mov    BYTE PTR [esp+0x2c],al
  784800:	56                   	push   esi
  784801:	8d 44 24 0c          	lea    eax,[esp+0xc]
  784805:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  78480b:	0f 57 c0             	xorps  xmm0,xmm0
  78480e:	50                   	push   eax
  78480f:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  784815:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  78481b:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  784821:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  784827:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  78482d:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  784833:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  784839:	c6 44 24 3c 01       	mov    BYTE PTR [esp+0x3c],0x1
  78483e:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  784844:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  78484a:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  784850:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  784856:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  78485c:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  784862:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  784868:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  78486e:	e8 5d 51 5e 00       	call   0xd699d0
  784873:	db 44 24 0c          	fild   DWORD PTR [esp+0xc]
  784877:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  78487b:	85 c9                	test   ecx,ecx
  78487d:	7d 06                	jge    0x784885
  78487f:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  784885:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  784889:	d9 5c 24 68          	fstp   DWORD PTR [esp+0x68]
  78488d:	85 d2                	test   edx,edx
  78488f:	db 44 24 18          	fild   DWORD PTR [esp+0x18]
  784893:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  784899:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  78489f:	7d 06                	jge    0x7848a7
  7848a1:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  7848a7:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  7848ad:	d9 5c 24 70          	fstp   DWORD PTR [esp+0x70]
  7848b1:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  7848b5:	db 44 24 44          	fild   DWORD PTR [esp+0x44]
  7848b9:	85 c0                	test   eax,eax
  7848bb:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  7848c1:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  7848c7:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  7848cd:	7d 06                	jge    0x7848d5
  7848cf:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  7848d5:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  7848d9:	d9 5c 24 7c          	fstp   DWORD PTR [esp+0x7c]
  7848dd:	85 c9                	test   ecx,ecx
  7848df:	db 44 24 48          	fild   DWORD PTR [esp+0x48]
  7848e3:	7d 06                	jge    0x7848eb
  7848e5:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  7848eb:	0f b7 54 24 4c       	movzx  edx,WORD PTR [esp+0x4c]
  7848f0:	d9 9c 24 80 00 00 00 	fstp   DWORD PTR [esp+0x80]
  7848f7:	0f b6 44 24 38       	movzx  eax,BYTE PTR [esp+0x38]
  7848fc:	0f b6 4c 24 30       	movzx  ecx,BYTE PTR [esp+0x30]
  784901:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  784905:	f3 0f 11 84 24 84 00 	movss  DWORD PTR [esp+0x84],xmm0
  78490c:	00 00 
  78490e:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  784914:	f3 0f 11 84 24 88 00 	movss  DWORD PTR [esp+0x88],xmm0
  78491b:	00 00 
  78491d:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  784923:	f3 0f 11 84 24 8c 00 	movss  DWORD PTR [esp+0x8c],xmm0
  78492a:	00 00 
  78492c:	f3 0f 10 44 24 28    	movss  xmm0,DWORD PTR [esp+0x28]
  784932:	f3 0f 11 84 24 90 00 	movss  DWORD PTR [esp+0x90],xmm0
  784939:	00 00 
  78493b:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  784941:	f3 0f 11 84 24 94 00 	movss  DWORD PTR [esp+0x94],xmm0
  784948:	00 00 
  78494a:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  784950:	f3 0f 11 84 24 98 00 	movss  DWORD PTR [esp+0x98],xmm0
  784957:	00 00 
  784959:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  78495d:	f3 0f 11 84 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm0
  784964:	00 00 
  784966:	f3 0f 10 44 24 3c    	movss  xmm0,DWORD PTR [esp+0x3c]
  78496c:	f3 0f 11 84 24 a0 00 	movss  DWORD PTR [esp+0xa0],xmm0
  784973:	00 00 
  784975:	f3 0f 10 44 24 50    	movss  xmm0,DWORD PTR [esp+0x50]
  78497b:	f3 0f 11 84 24 a4 00 	movss  DWORD PTR [esp+0xa4],xmm0
  784982:	00 00 
  784984:	f3 0f 10 44 24 54    	movss  xmm0,DWORD PTR [esp+0x54]
  78498a:	f3 0f 11 84 24 a8 00 	movss  DWORD PTR [esp+0xa8],xmm0
  784991:	00 00 
  784993:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  784999:	f3 0f 11 84 24 ac 00 	movss  DWORD PTR [esp+0xac],xmm0
  7849a0:	00 00 
  7849a2:	f3 0f 10 44 24 58    	movss  xmm0,DWORD PTR [esp+0x58]
  7849a8:	f3 0f 11 84 24 b0 00 	movss  DWORD PTR [esp+0xb0],xmm0
  7849af:	00 00 
  7849b1:	f3 0f 2a c1          	cvtsi2ss xmm0,ecx
  7849b5:	f3 0f 11 84 24 b4 00 	movss  DWORD PTR [esp+0xb4],xmm0
  7849bc:	00 00 
  7849be:	f3 0f 10 44 24 5c    	movss  xmm0,DWORD PTR [esp+0x5c]
  7849c4:	f3 0f 11 84 24 b8 00 	movss  DWORD PTR [esp+0xb8],xmm0
  7849cb:	00 00 
  7849cd:	f3 0f 10 44 24 60    	movss  xmm0,DWORD PTR [esp+0x60]
  7849d3:	f3 0f 11 84 24 bc 00 	movss  DWORD PTR [esp+0xbc],xmm0
  7849da:	00 00 
  7849dc:	f3 0f 10 44 24 64    	movss  xmm0,DWORD PTR [esp+0x64]
  7849e2:	f3 0f 11 84 24 c0 00 	movss  DWORD PTR [esp+0xc0],xmm0
  7849e9:	00 00 
  7849eb:	e8 a0 49 fe ff       	call   0x769390
  7849f0:	8b f0                	mov    esi,eax
  7849f2:	8b 16                	mov    edx,DWORD PTR [esi]
  7849f4:	8b 92 8c 00 00 00    	mov    edx,DWORD PTR [edx+0x8c]
  7849fa:	6a 17                	push   0x17
  7849fc:	8d 44 24 0c          	lea    eax,[esp+0xc]
  784a00:	50                   	push   eax
  784a01:	8b ce                	mov    ecx,esi
  784a03:	ff d2                	call   edx
  784a05:	8b 06                	mov    eax,DWORD PTR [esi]
  784a07:	8b 80 a8 00 00 00    	mov    eax,DWORD PTR [eax+0xa8]
  784a0d:	6a 17                	push   0x17
  784a0f:	6a 00                	push   0x0
  784a11:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  784a15:	51                   	push   ecx
  784a16:	8d 54 24 14          	lea    edx,[esp+0x14]
  784a1a:	52                   	push   edx
  784a1b:	8b ce                	mov    ecx,esi
  784a1d:	ff d0                	call   eax
  784a1f:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  784a23:	5e                   	pop    esi
  784a24:	81 c4 c0 00 00 00    	add    esp,0xc0
  784a2a:	c3                   	ret
