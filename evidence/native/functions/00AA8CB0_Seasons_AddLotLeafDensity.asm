# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00aa8cb0, 0x00aa8d23).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_AddLotLeafDensity (analyst-assigned)
Entry: 0x00aa8cb0
Ghidra body envelope: 0x00aa8cb0..0x00aa8d22 inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00aa8cb0 <.text+0x6a7cb0>:
  aa8cb0:	83 b9 d0 02 00 00 00 	cmp    DWORD PTR [ecx+0x2d0],0x0
  aa8cb7:	74 67                	je     0xaa8d20
  aa8cb9:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  aa8cbf:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  aa8cc6:	76 58                	jbe    0xaa8d20
  aa8cc8:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  aa8ccc:	8b 10                	mov    edx,DWORD PTR [eax]
  aa8cce:	f3 0f 59 05 34 41 fa 	mulss  xmm0,DWORD PTR ds:0xfa4134
  aa8cd5:	00
  aa8cd6:	53                   	push   ebx
  aa8cd7:	56                   	push   esi
  aa8cd8:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  aa8cdb:	3b d6                	cmp    edx,esi
  aa8cdd:	f3 0f 2c d8          	cvttss2si ebx,xmm0
  aa8ce1:	74 34                	je     0xaa8d17
  aa8ce3:	55                   	push   ebp
  aa8ce4:	57                   	push   edi
  aa8ce5:	0f be 42 01          	movsx  eax,BYTE PTR [edx+0x1]
  aa8ce9:	0f be 3a             	movsx  edi,BYTE PTR [edx]
  aa8cec:	c1 e0 06             	shl    eax,0x6
  aa8cef:	03 c7                	add    eax,edi
  aa8cf1:	8b b9 d0 02 00 00    	mov    edi,DWORD PTR [ecx+0x2d0]
  aa8cf7:	03 c7                	add    eax,edi
  aa8cf9:	0f b6 38             	movzx  edi,BYTE PTR [eax]
  aa8cfc:	bd ff 00 00 00       	mov    ebp,0xff
  aa8d01:	2b ef                	sub    ebp,edi
  aa8d03:	3b eb                	cmp    ebp,ebx
  aa8d05:	7e 04                	jle    0xaa8d0b
  aa8d07:	00 18                	add    BYTE PTR [eax],bl
  aa8d09:	eb 03                	jmp    0xaa8d0e
  aa8d0b:	c6 00 ff             	mov    BYTE PTR [eax],0xff
  aa8d0e:	83 c2 03             	add    edx,0x3
  aa8d11:	3b d6                	cmp    edx,esi
  aa8d13:	75 d0                	jne    0xaa8ce5
  aa8d15:	5f                   	pop    edi
  aa8d16:	5d                   	pop    ebp
  aa8d17:	5e                   	pop    esi
  aa8d18:	c6 81 d4 02 00 00 01 	mov    BYTE PTR [ecx+0x2d4],0x1
  aa8d1f:	5b                   	pop    ebx
  aa8d20:	c2 08 00             	ret    0x8
