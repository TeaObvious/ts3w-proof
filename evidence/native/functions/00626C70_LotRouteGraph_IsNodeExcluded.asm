# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00626c70,0x00626cc8); analyst name LotRouteGraph_IsNodeExcluded.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00626c70 <.text+0x225c70>:
  626c70:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  626c74:	8b 08                	mov    ecx,DWORD PTR [eax]
  626c76:	8b d1                	mov    edx,ecx
  626c78:	81 e2 f0 ff 00 00    	and    edx,0xfff0
  626c7e:	81 fa f0 ff 00 00    	cmp    edx,0xfff0
  626c84:	74 3d                	je     0x626cc3
  626c86:	8b c1                	mov    eax,ecx
  626c88:	c1 e8 10             	shr    eax,0x10
  626c8b:	8b d0                	mov    edx,eax
  626c8d:	c1 e2 04             	shl    edx,0x4
  626c90:	03 d0                	add    edx,eax
  626c92:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  626c96:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [eax+0x90]
  626c9c:	8d 04 90             	lea    eax,[eax+edx*4]
  626c9f:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  626ca2:	2b 50 04             	sub    edx,DWORD PTR [eax+0x4]
  626ca5:	0f b7 c9             	movzx  ecx,cx
  626ca8:	c1 fa 02             	sar    edx,0x2
  626cab:	3b ca                	cmp    ecx,edx
  626cad:	73 14                	jae    0x626cc3
  626caf:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  626cb2:	8b 0c 88             	mov    ecx,DWORD PTR [eax+ecx*4]
  626cb5:	85 c9                	test   ecx,ecx
  626cb7:	74 0a                	je     0x626cc3
  626cb9:	8a 41 58             	mov    al,BYTE PTR [ecx+0x58]
  626cbc:	d0 e8                	shr    al,1
  626cbe:	24 01                	and    al,0x1
  626cc0:	c2 08 00             	ret    0x8
  626cc3:	32 c0                	xor    al,al
  626cc5:	c2 08 00             	ret    0x8
