# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007570c0, 0x00757112); analyst name RouteGoal_Delete.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007570c0 <.text+0x3560c0>:
  7570c0:	56                   	push   esi
  7570c1:	8b f1                	mov    esi,ecx
  7570c3:	c7 06 98 54 00 01    	mov    DWORD PTR [esi],0x1005498
  7570c9:	c7 46 04 88 54 00 01 	mov    DWORD PTR [esi+0x4],0x1005488
  7570d0:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  7570d3:	85 c0                	test   eax,eax
  7570d5:	74 09                	je     0x7570e0
  7570d7:	50                   	push   eax
  7570d8:	e8 03 d4 d8 ff       	call   0x4e44e0
  7570dd:	83 c4 04             	add    esp,0x4
  7570e0:	8d 4e 18             	lea    ecx,[esi+0x18]
  7570e3:	e8 08 8d ff ff       	call   0x74fdf0
  7570e8:	f6 44 24 08 01       	test   BYTE PTR [esp+0x8],0x1
  7570ed:	c7 46 04 40 2a 05 01 	mov    DWORD PTR [esi+0x4],0x1052a40
  7570f4:	c7 46 04 78 4a ff 00 	mov    DWORD PTR [esi+0x4],0xff4a78
  7570fb:	c7 06 80 2b fa 00    	mov    DWORD PTR [esi],0xfa2b80
  757101:	74 09                	je     0x75710c
  757103:	56                   	push   esi
  757104:	e8 d7 d3 d8 ff       	call   0x4e44e0
  757109:	83 c4 04             	add    esp,0x4
  75710c:	8b c6                	mov    eax,esi
  75710e:	5e                   	pop    esi
  75710f:	c2 04 00             	ret    0x4
