# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x008aaae0, 0x008aab39).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

008aaae0 <.text+0x4a9ae0>:
  8aaae0:	80 79 1c 00          	cmp    BYTE PTR [ecx+0x1c],0x0
  8aaae4:	74 50                	je     0x8aab36
  8aaae6:	8b 41 18             	mov    eax,DWORD PTR [ecx+0x18]
  8aaae9:	85 c0                	test   eax,eax
  8aaaeb:	74 49                	je     0x8aab36
  8aaaed:	83 f8 04             	cmp    eax,0x4
  8aaaf0:	74 44                	je     0x8aab36
  8aaaf2:	83 f8 06             	cmp    eax,0x6
  8aaaf5:	74 3f                	je     0x8aab36
  8aaaf7:	f3 0f 10 41 20       	movss  xmm0,DWORD PTR [ecx+0x20]
  8aaafc:	f3 0f 58 44 24 04    	addss  xmm0,DWORD PTR [esp+0x4]
  8aab02:	f3 0f 11 41 20       	movss  DWORD PTR [ecx+0x20],xmm0
  8aab07:	7d 2d                	jge    0x8aab36
  8aab09:	0f 57 c0             	xorps  xmm0,xmm0
  8aab0c:	b2 01                	mov    dl,0x1
  8aab0e:	8b ff                	mov    edi,edi
  8aab10:	8b 41 18             	mov    eax,DWORD PTR [ecx+0x18]
  8aab13:	83 f8 04             	cmp    eax,0x4
  8aab16:	74 1e                	je     0x8aab36
  8aab18:	f3 0f 10 49 20       	movss  xmm1,DWORD PTR [ecx+0x20]
  8aab1d:	0f 2f 0c 81          	comiss xmm1,DWORD PTR [ecx+eax*4]
  8aab21:	76 13                	jbe    0x8aab36
  8aab23:	83 c0 01             	add    eax,0x1
  8aab26:	83 f8 06             	cmp    eax,0x6
  8aab29:	88 51 1c             	mov    BYTE PTR [ecx+0x1c],dl
  8aab2c:	f3 0f 11 41 20       	movss  DWORD PTR [ecx+0x20],xmm0
  8aab31:	89 41 18             	mov    DWORD PTR [ecx+0x18],eax
  8aab34:	7c da                	jl     0x8aab10
  8aab36:	c2 04 00             	ret    0x4
