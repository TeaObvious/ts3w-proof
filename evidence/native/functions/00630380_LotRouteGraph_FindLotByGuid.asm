# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00630380,0x006303af); analyst name LotRouteGraph_FindLotByGuid.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00630380 <.text+0x22f380>:
  630380:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  630384:	56                   	push   esi
  630385:	8b f1                	mov    esi,ecx
  630387:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  63038b:	50                   	push   eax
  63038c:	51                   	push   ecx
  63038d:	8b ce                	mov    ecx,esi
  63038f:	e8 cc 8f ff ff       	call   0x629360
  630394:	84 c0                	test   al,al
  630396:	75 06                	jne    0x63039e
  630398:	33 c0                	xor    eax,eax
  63039a:	5e                   	pop    esi
  63039b:	c2 08 00             	ret    0x8
  63039e:	8d 54 24 08          	lea    edx,[esp+0x8]
  6303a2:	52                   	push   edx
  6303a3:	8d 4e 48             	lea    ecx,[esi+0x48]
  6303a6:	e8 25 ef ff ff       	call   0x62f2d0
  6303ab:	5e                   	pop    esi
  6303ac:	c2 08 00             	ret    0x8
