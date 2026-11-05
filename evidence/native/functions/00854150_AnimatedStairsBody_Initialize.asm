# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00854150,0x008541c4); analyst name AnimatedStairsBody_Initialize.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00854150 <.text+0x453150>:
  854150:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  854154:	56                   	push   esi
  854155:	57                   	push   edi
  854156:	50                   	push   eax
  854157:	8b f1                	mov    esi,ecx
  854159:	e8 22 51 fe ff       	call   0x839280
  85415e:	c7 46 18 0c 2c fc 00 	mov    DWORD PTR [esi+0x18],0xfc2c0c
  854165:	8d 4e 1c             	lea    ecx,[esi+0x1c]
  854168:	c7 06 e8 83 02 01    	mov    DWORD PTR [esi],0x10283e8
  85416e:	c7 46 04 e4 83 02 01 	mov    DWORD PTR [esi+0x4],0x10283e4
  854175:	c7 46 18 d0 83 02 01 	mov    DWORD PTR [esi+0x18],0x10283d0
  85417c:	e8 3f d4 ef ff       	call   0x7515c0
  854181:	8d be 20 01 00 00    	lea    edi,[esi+0x120]
  854187:	8b cf                	mov    ecx,edi
  854189:	e8 52 5e 00 00       	call   0x859fe0
  85418e:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  854192:	33 c0                	xor    eax,eax
  854194:	89 86 44 01 00 00    	mov    DWORD PTR [esi+0x144],eax
  85419a:	89 8e 4c 01 00 00    	mov    DWORD PTR [esi+0x14c],ecx
  8541a0:	57                   	push   edi
  8541a1:	8b ce                	mov    ecx,esi
  8541a3:	89 86 48 01 00 00    	mov    DWORD PTR [esi+0x148],eax
  8541a9:	e8 72 50 fe ff       	call   0x839220
  8541ae:	8b 8e 4c 01 00 00    	mov    ecx,DWORD PTR [esi+0x14c]
  8541b4:	8b 11                	mov    edx,DWORD PTR [ecx]
  8541b6:	8b 42 2c             	mov    eax,DWORD PTR [edx+0x2c]
  8541b9:	6a 01                	push   0x1
  8541bb:	ff d0                	call   eax
  8541bd:	5f                   	pop    edi
  8541be:	8b c6                	mov    eax,esi
  8541c0:	5e                   	pop    esi
  8541c1:	c2 08 00             	ret    0x8
