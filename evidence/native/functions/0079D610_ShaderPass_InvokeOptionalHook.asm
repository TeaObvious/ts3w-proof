# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0079d610,0x0079d629); analyst name ShaderPass_InvokeOptionalHook.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079d610 <.text+0x39c610>:
  79d610:	8b 01                	mov    eax,DWORD PTR [ecx]
  79d612:	85 c0                	test   eax,eax
  79d614:	75 05                	jne    0x79d61b
  79d616:	32 c0                	xor    al,al
  79d618:	c2 04 00             	ret    0x4
  79d61b:	50                   	push   eax
  79d61c:	e8 ff da ff ff       	call   0x79b120
  79d621:	83 c4 04             	add    esp,0x4
  79d624:	b0 01                	mov    al,0x1
  79d626:	c2 04 00             	ret    0x4
