# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007499e0, 0x00749a1a); analyst name FootprintPolygonVector_Destroy.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007499e0 <.text+0x3489e0>:
  7499e0:	53                   	push   ebx
  7499e1:	56                   	push   esi
  7499e2:	8b d9                	mov    ebx,ecx
  7499e4:	8b 33                	mov    esi,DWORD PTR [ebx]
  7499e6:	57                   	push   edi
  7499e7:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  7499ea:	3b f7                	cmp    esi,edi
  7499ec:	73 19                	jae    0x749a07
  7499ee:	8b ff                	mov    edi,edi
  7499f0:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  7499f3:	85 c0                	test   eax,eax
  7499f5:	74 09                	je     0x749a00
  7499f7:	50                   	push   eax
  7499f8:	e8 e3 aa d9 ff       	call   0x4e44e0
  7499fd:	83 c4 04             	add    esp,0x4
  749a00:	83 c6 40             	add    esi,0x40
  749a03:	3b f7                	cmp    esi,edi
  749a05:	72 e9                	jb     0x7499f0
  749a07:	8b 1b                	mov    ebx,DWORD PTR [ebx]
  749a09:	85 db                	test   ebx,ebx
  749a0b:	74 09                	je     0x749a16
  749a0d:	53                   	push   ebx
  749a0e:	e8 cd aa d9 ff       	call   0x4e44e0
  749a13:	83 c4 04             	add    esp,0x4
  749a16:	5f                   	pop    edi
  749a17:	5e                   	pop    esi
  749a18:	5b                   	pop    ebx
  749a19:	c3                   	ret
