# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0093cfa0, 0x0093d00b); analyst name AnimationComponentRuntime_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093cfa0 <.text+0x53bfa0>:
  93cfa0:	56                   	push   esi
  93cfa1:	8b f1                	mov    esi,ecx
  93cfa3:	e8 58 fe ff ff       	call   0x93ce00
  93cfa8:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  93cfb0:	6a 00                	push   0x0
  93cfb2:	6a 00                	push   0x0
  93cfb4:	6a 00                	push   0x0
  93cfb6:	6a 00                	push   0x0
  93cfb8:	68 84 43 04 01       	push   0x1044384
  93cfbd:	6a 18                	push   0x18
  93cfbf:	c7 86 b4 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0xb4],0x0
  93cfc9:	f3 0f 11 86 b8 00 00 00 	movss  DWORD PTR [esi+0xb8],xmm0
  93cfd1:	f3 0f 11 86 bc 00 00 00 	movss  DWORD PTR [esi+0xbc],xmm0
  93cfd9:	e8 22 75 ba ff       	call   0x4e4500
  93cfde:	83 c4 18             	add    esp,0x18
  93cfe1:	85 c0                	test   eax,eax
  93cfe3:	74 18                	je     0x93cffd
  93cfe5:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  93cfe9:	51                   	push   ecx
  93cfea:	8b c8                	mov    ecx,eax
  93cfec:	e8 9f 72 c4 ff       	call   0x584290
  93cff1:	89 86 b0 00 00 00    	mov    DWORD PTR [esi+0xb0],eax
  93cff7:	8b c6                	mov    eax,esi
  93cff9:	5e                   	pop    esi
  93cffa:	c2 04 00             	ret    0x4
  93cffd:	33 c0                	xor    eax,eax
  93cfff:	89 86 b0 00 00 00    	mov    DWORD PTR [esi+0xb0],eax
  93d005:	8b c6                	mov    eax,esi
  93d007:	5e                   	pop    esi
  93d008:	c2 04 00             	ret    0x4
