# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x009635c0, 0x00963628).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

009635c0 <.text+0x5625c0>:
  9635c0:	53                   	push   ebx
  9635c1:	56                   	push   esi
  9635c2:	8b f1                	mov    esi,ecx
  9635c4:	c7 06 c0 cf fe 00    	mov    DWORD PTR [esi],0xfecfc0
  9635ca:	c7 46 04 a4 bb 02 01 	mov    DWORD PTR [esi+0x4],0x102bba4
  9635d1:	33 c0                	xor    eax,eax
  9635d3:	8d 4e 08             	lea    ecx,[esi+0x8]
  9635d6:	87 01                	xchg   DWORD PTR [ecx],eax
  9635d8:	f3 0f 10 05 20 5b 04 	movss  xmm0,DWORD PTR ds:0x1045b20
  9635df:	01
  9635e0:	33 db                	xor    ebx,ebx
  9635e2:	8d 4e 18             	lea    ecx,[esi+0x18]
  9635e5:	c7 06 10 5c 04 01    	mov    DWORD PTR [esi],0x1045c10
  9635eb:	c7 46 04 08 5c 04 01 	mov    DWORD PTR [esi+0x4],0x1045c08
  9635f2:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  9635f5:	f3 0f 11 46 10       	movss  DWORD PTR [esi+0x10],xmm0
  9635fa:	e8 a1 9a b3 ff       	call   0x49d0a0
  9635ff:	89 5e 34             	mov    DWORD PTR [esi+0x34],ebx
  963602:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  963605:	88 5e 30             	mov    BYTE PTR [esi+0x30],bl
  963608:	88 5e 14             	mov    BYTE PTR [esi+0x14],bl
  96360b:	88 5e 15             	mov    BYTE PTR [esi+0x15],bl
  96360e:	c7 46 20 10 00 00 00 	mov    DWORD PTR [esi+0x20],0x10
  963615:	c7 46 28 10 22 96 00 	mov    DWORD PTR [esi+0x28],0x962210
  96361c:	89 76 2c             	mov    DWORD PTR [esi+0x2c],esi
  96361f:	c6 46 31 fe          	mov    BYTE PTR [esi+0x31],0xfe
  963623:	8b c6                	mov    eax,esi
  963625:	5e                   	pop    esi
  963626:	5b                   	pop    ebx
  963627:	c3                   	ret
