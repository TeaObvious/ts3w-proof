# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939610,0x0093965f); analyst name ParameterTable_FindFirstHashExactType.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939610 <.text+0x538610>:
  939610:	53                   	push   ebx
  939611:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  939615:	56                   	push   esi
  939616:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  939619:	33 d2                	xor    edx,edx
  93961b:	85 f6                	test   esi,esi
  93961d:	7e 20                	jle    0x93963f
  93961f:	55                   	push   ebp
  939620:	57                   	push   edi
  939621:	8b 39                	mov    edi,DWORD PTR [ecx]
  939623:	8d 04 16             	lea    eax,[esi+edx*1]
  939626:	d1 f8                	sar    eax,1
  939628:	8b e8                	mov    ebp,eax
  93962a:	c1 e5 04             	shl    ebp,0x4
  93962d:	39 1c 2f             	cmp    DWORD PTR [edi+ebp*1],ebx
  939630:	73 05                	jae    0x939637
  939632:	8d 50 01             	lea    edx,[eax+0x1]
  939635:	eb 02                	jmp    0x939639
  939637:	8b f0                	mov    esi,eax
  939639:	3b d6                	cmp    edx,esi
  93963b:	7c e6                	jl     0x939623
  93963d:	5f                   	pop    edi
  93963e:	5d                   	pop    ebp
  93963f:	3b 51 04             	cmp    edx,DWORD PTR [ecx+0x4]
  939642:	7d 14                	jge    0x939658
  939644:	8b 01                	mov    eax,DWORD PTR [ecx]
  939646:	c1 e2 04             	shl    edx,0x4
  939649:	03 c2                	add    eax,edx
  93964b:	39 18                	cmp    DWORD PTR [eax],ebx
  93964d:	75 09                	jne    0x939658
  93964f:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  939652:	3b 4c 24 10          	cmp    ecx,DWORD PTR [esp+0x10]
  939656:	74 02                	je     0x93965a
  939658:	33 c0                	xor    eax,eax
  93965a:	5e                   	pop    esi
  93965b:	5b                   	pop    ebx
  93965c:	c2 08 00             	ret    0x8
