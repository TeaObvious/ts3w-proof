# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0064f7d0,0x0064f8df); analyst name Portal_Initialize.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0064f7d0 <.text+0x24e7d0>:
  64f7d0:	8b c1                	mov    eax,ecx
  64f7d2:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  64f7d6:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  64f7d9:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  64f7dd:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  64f7e0:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  64f7e4:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  64f7e7:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  64f7ed:	c7 00 c8 e0 fe 00    	mov    DWORD PTR [eax],0xfee0c8
  64f7f3:	f3 0f 11 40 14       	movss  DWORD PTR [eax+0x14],xmm0
  64f7f8:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  64f7fe:	f3 0f 11 40 18       	movss  DWORD PTR [eax+0x18],xmm0
  64f803:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  64f807:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
  64f80a:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  64f810:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  64f815:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  64f819:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  64f81c:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  64f820:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  64f826:	f3 0f 11 40 24       	movss  DWORD PTR [eax+0x24],xmm0
  64f82b:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  64f831:	f3 0f 11 40 2c       	movss  DWORD PTR [eax+0x2c],xmm0
  64f836:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  64f839:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
  64f83c:	0f b7 51 0c          	movzx  edx,WORD PTR [ecx+0xc]
  64f840:	66 89 50 34          	mov    WORD PTR [eax+0x34],dx
  64f844:	0f b7 51 10          	movzx  edx,WORD PTR [ecx+0x10]
  64f848:	66 89 50 36          	mov    WORD PTR [eax+0x36],dx
  64f84c:	0f b7 51 14          	movzx  edx,WORD PTR [ecx+0x14]
  64f850:	66 89 50 38          	mov    WORD PTR [eax+0x38],dx
  64f854:	0f b7 49 12          	movzx  ecx,WORD PTR [ecx+0x12]
  64f858:	66 89 48 3a          	mov    WORD PTR [eax+0x3a],cx
  64f85c:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  64f860:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  64f863:	89 50 3c             	mov    DWORD PTR [eax+0x3c],edx
  64f866:	0f b7 51 0c          	movzx  edx,WORD PTR [ecx+0xc]
  64f86a:	66 89 50 40          	mov    WORD PTR [eax+0x40],dx
  64f86e:	0f b7 51 10          	movzx  edx,WORD PTR [ecx+0x10]
  64f872:	66 89 50 42          	mov    WORD PTR [eax+0x42],dx
  64f876:	0f b7 51 14          	movzx  edx,WORD PTR [ecx+0x14]
  64f87a:	0f 57 c0             	xorps  xmm0,xmm0
  64f87d:	66 89 50 44          	mov    WORD PTR [eax+0x44],dx
  64f881:	0f b7 49 12          	movzx  ecx,WORD PTR [ecx+0x12]
  64f885:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  64f889:	66 89 48 46          	mov    WORD PTR [eax+0x46],cx
  64f88d:	b9 ff ff 00 00       	mov    ecx,0xffff
  64f892:	66 89 48 48          	mov    WORD PTR [eax+0x48],cx
  64f896:	66 89 48 4a          	mov    WORD PTR [eax+0x4a],cx
  64f89a:	33 c9                	xor    ecx,ecx
  64f89c:	38 4c 24 38          	cmp    BYTE PTR [esp+0x38],cl
  64f8a0:	89 48 4c             	mov    DWORD PTR [eax+0x4c],ecx
  64f8a3:	f3 0f 11 40 50       	movss  DWORD PTR [eax+0x50],xmm0
  64f8a8:	f3 0f 11 40 54       	movss  DWORD PTR [eax+0x54],xmm0
  64f8ad:	66 89 48 58          	mov    WORD PTR [eax+0x58],cx
  64f8b1:	89 48 5c             	mov    DWORD PTR [eax+0x5c],ecx
  64f8b4:	89 48 60             	mov    DWORD PTR [eax+0x60],ecx
  64f8b7:	89 48 64             	mov    DWORD PTR [eax+0x64],ecx
  64f8ba:	c7 40 68 a8 e0 fe 00 	mov    DWORD PTR [eax+0x68],0xfee0a8
  64f8c1:	89 50 6c             	mov    DWORD PTR [eax+0x6c],edx
  64f8c4:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  64f8c8:	89 50 78             	mov    DWORD PTR [eax+0x78],edx
  64f8cb:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  64f8cf:	89 48 70             	mov    DWORD PTR [eax+0x70],ecx
  64f8d2:	89 50 7c             	mov    DWORD PTR [eax+0x7c],edx
  64f8d5:	74 05                	je     0x64f8dc
  64f8d7:	66 83 48 58 01       	or     WORD PTR [eax+0x58],0x1
  64f8dc:	c2 44 00             	ret    0x44
