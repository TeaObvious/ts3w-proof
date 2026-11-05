# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0093d010, 0x0093d08d); analyst name AnimationComponent_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093d010 <.text+0x53c010>:
  93d010:	33 c0                	xor    eax,eax
  93d012:	56                   	push   esi
  93d013:	8b f1                	mov    esi,ecx
  93d015:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  93d019:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  93d01c:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  93d01f:	c7 46 08 3c 43 04 01 	mov    DWORD PTR [esi+0x8],0x104433c
  93d026:	c7 46 0c 6c 43 04 01 	mov    DWORD PTR [esi+0xc],0x104436c
  93d02d:	c7 46 10 a8 42 04 01 	mov    DWORD PTR [esi+0x10],0x10442a8
  93d034:	c7 06 34 44 04 01    	mov    DWORD PTR [esi],0x1044434
  93d03a:	c7 46 08 04 44 04 01 	mov    DWORD PTR [esi+0x8],0x1044404
  93d041:	c7 46 0c ec 43 04 01 	mov    DWORD PTR [esi+0xc],0x10443ec
  93d048:	c7 46 10 a0 43 04 01 	mov    DWORD PTR [esi+0x10],0x10443a0
  93d04f:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  93d052:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  93d055:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  93d058:	c7 46 2c 08 00 00 00 	mov    DWORD PTR [esi+0x2c],0x8
  93d05f:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  93d062:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  93d065:	88 46 38             	mov    BYTE PTR [esi+0x38],al
  93d068:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  93d06b:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  93d06e:	a1 fc a0 1e 01       	mov    eax,ds:0x11ea0fc
  93d073:	85 41 2c             	test   DWORD PTR [ecx+0x2c],eax
  93d076:	74 0f                	je     0x93d087
  93d078:	8b 0d 7c d4 1d 01    	mov    ecx,DWORD PTR ds:0x11dd47c
  93d07e:	51                   	push   ecx
  93d07f:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  93d082:	e8 49 72 ff ff       	call   0x9342d0
  93d087:	8b c6                	mov    eax,esi
  93d089:	5e                   	pop    esi
  93d08a:	c2 04 00             	ret    0x4
