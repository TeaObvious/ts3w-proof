# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00c0cb80, 0x00c0cc2f); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c0cb80 <.text+0x80bb80>:
  c0cb80:	83 ec 14             	sub    esp,0x14
  c0cb83:	66 83 7c 24 20 03    	cmp    WORD PTR [esp+0x20],0x3
  c0cb89:	55                   	push   ebp
  c0cb8a:	56                   	push   esi
  c0cb8b:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  c0cb8f:	57                   	push   edi
  c0cb90:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  c0cb94:	8b e9                	mov    ebp,ecx
  c0cb96:	76 7f                	jbe    0xc0cc17
  c0cb98:	57                   	push   edi
  c0cb99:	8d 44 24 14          	lea    eax,[esp+0x14]
  c0cb9d:	50                   	push   eax
  c0cb9e:	56                   	push   esi
  c0cb9f:	e8 dc 0d 8d ff       	call   0x4dd980
  c0cba4:	57                   	push   edi
  c0cba5:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  c0cba9:	51                   	push   ecx
  c0cbaa:	56                   	push   esi
  c0cbab:	e8 d0 0d 8d ff       	call   0x4dd980
  c0cbb0:	57                   	push   edi
  c0cbb1:	8d 54 24 34          	lea    edx,[esp+0x34]
  c0cbb5:	52                   	push   edx
  c0cbb6:	56                   	push   esi
  c0cbb7:	e8 c4 0d 8d ff       	call   0x4dd980
  c0cbbc:	57                   	push   edi
  c0cbbd:	8d 44 24 44          	lea    eax,[esp+0x44]
  c0cbc1:	50                   	push   eax
  c0cbc2:	56                   	push   esi
  c0cbc3:	e8 b8 0d 8d ff       	call   0x4dd980
  c0cbc8:	57                   	push   edi
  c0cbc9:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  c0cbcd:	33 c0                	xor    eax,eax
  c0cbcf:	51                   	push   ecx
  c0cbd0:	56                   	push   esi
  c0cbd1:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  c0cbd5:	c7 44 24 60 01 00 00 	mov    DWORD PTR [esp+0x60],0x1
  c0cbdc:	00 
  c0cbdd:	c7 44 24 48 01 00 00 	mov    DWORD PTR [esp+0x48],0x1
  c0cbe4:	00 
  c0cbe5:	88 44 24 68          	mov    BYTE PTR [esp+0x68],al
  c0cbe9:	e8 92 0d 8d ff       	call   0x4dd980
  c0cbee:	57                   	push   edi
  c0cbef:	8d 54 24 64          	lea    edx,[esp+0x64]
  c0cbf3:	52                   	push   edx
  c0cbf4:	56                   	push   esi
  c0cbf5:	e8 86 0d 8d ff       	call   0x4dd980
  c0cbfa:	83 c4 48             	add    esp,0x48
  c0cbfd:	57                   	push   edi
  c0cbfe:	8d 44 24 10          	lea    eax,[esp+0x10]
  c0cc02:	50                   	push   eax
  c0cc03:	56                   	push   esi
  c0cc04:	e8 77 0d 8d ff       	call   0x4dd980
  c0cc09:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  c0cc0d:	51                   	push   ecx
  c0cc0e:	56                   	push   esi
  c0cc0f:	e8 4c 0c 8d ff       	call   0x4dd860
  c0cc14:	83 c4 14             	add    esp,0x14
  c0cc17:	57                   	push   edi
  c0cc18:	56                   	push   esi
  c0cc19:	8d 8d c0 2e 00 00    	lea    ecx,[ebp+0x2ec0]
  c0cc1f:	e8 dc 42 f5 ff       	call   0xb60f00
  c0cc24:	5f                   	pop    edi
  c0cc25:	5e                   	pop    esi
  c0cc26:	b0 01                	mov    al,0x1
  c0cc28:	5d                   	pop    ebp
  c0cc29:	83 c4 14             	add    esp,0x14
  c0cc2c:	c2 0c 00             	ret    0xc
