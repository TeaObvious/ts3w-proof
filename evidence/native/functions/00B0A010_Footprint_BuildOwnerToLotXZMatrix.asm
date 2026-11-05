# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00b0a010, 0x00b0a059); analyst name Footprint_BuildOwnerToLotXZMatrix.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b0a010 <.text+0x709010>:
  b0a010:	8b 0d 34 e0 1e 01    	mov    ecx,DWORD PTR ds:0x11ee034
  b0a016:	85 c9                	test   ecx,ecx
  b0a018:	56                   	push   esi
  b0a019:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  b0a01d:	74 0b                	je     0xb0a02a
  b0a01f:	8d 46 18             	lea    eax,[esi+0x18]
  b0a022:	50                   	push   eax
  b0a023:	e8 88 4b 18 00       	call   0xc8ebb0
  b0a028:	eb 02                	jmp    0xb0a02c
  b0a02a:	33 c0                	xor    eax,eax
  b0a02c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  b0a030:	d9 44 24 14          	fld    DWORD PTR [esp+0x14]
  b0a034:	51                   	push   ecx
  b0a035:	6a 00                	push   0x0
  b0a037:	83 ec 0c             	sub    esp,0xc
  b0a03a:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  b0a03e:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  b0a042:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b0a046:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  b0a04a:	d9 1c 24             	fstp   DWORD PTR [esp]
  b0a04d:	50                   	push   eax
  b0a04e:	56                   	push   esi
  b0a04f:	e8 1c fc ff ff       	call   0xb09c70
  b0a054:	83 c4 1c             	add    esp,0x1c
  b0a057:	5e                   	pop    esi
  b0a058:	c3                   	ret
