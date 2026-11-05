# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00b53170,0x00b531cd); analyst name LotPartition_ClearRoomMarkerSeed.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b53170 <.text+0x752170>:
  b53170:	33 c0                	xor    eax,eax
  b53172:	56                   	push   esi
  b53173:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  b53177:	83 fe 03             	cmp    esi,0x3
  b5317a:	0f 95 c0             	setne  al
  b5317d:	57                   	push   edi
  b5317e:	8b f9                	mov    edi,ecx
  b53180:	83 e8 01             	sub    eax,0x1
  b53183:	83 e0 02             	and    eax,0x2
  b53186:	8b 4c 87 44          	mov    ecx,DWORD PTR [edi+eax*4+0x44]
  b5318a:	85 c9                	test   ecx,ecx
  b5318c:	74 3a                	je     0xb531c8
  b5318e:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  b53192:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  b53196:	52                   	push   edx
  b53197:	50                   	push   eax
  b53198:	56                   	push   esi
  b53199:	e8 12 11 0b 00       	call   0xc042b0
  b5319e:	0f b7 c0             	movzx  eax,ax
  b531a1:	66 3d ff ff          	cmp    ax,0xffff
  b531a5:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  b531a9:	74 15                	je     0xb531c0
  b531ab:	83 fe 04             	cmp    esi,0x4
  b531ae:	75 10                	jne    0xb531c0
  b531b0:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  b531b4:	51                   	push   ecx
  b531b5:	8d 8f 10 02 00 00    	lea    ecx,[edi+0x210]
  b531bb:	e8 60 5e ff ff       	call   0xb49020
  b531c0:	56                   	push   esi
  b531c1:	8b cf                	mov    ecx,edi
  b531c3:	e8 f8 fe ff ff       	call   0xb530c0
  b531c8:	5f                   	pop    edi
  b531c9:	5e                   	pop    esi
  b531ca:	c2 0c 00             	ret    0xc
