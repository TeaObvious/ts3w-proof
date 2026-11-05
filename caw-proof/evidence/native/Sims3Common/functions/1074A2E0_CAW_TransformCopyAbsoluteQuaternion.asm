# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original CAW1.22.10 Sims3Common.dll function envelope; paired actual annotated Ghidra C: 1074A2E0_CAW_TransformCopyAbsoluteQuaternion.c.

Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

1074a2e0 <.text+0x7492e0>:
1074a2e0:	55                                              	push   ebp
1074a2e1:	8b ec                                           	mov    ebp,esp
1074a2e3:	83 e4 f0                                        	and    esp,0xfffffff0
1074a2e6:	83 ec 20                                        	sub    esp,0x20
1074a2e9:	8d 04 24                                        	lea    eax,[esp]
1074a2ec:	50                                              	push   eax
1074a2ed:	e8 9e fe ff ff                                  	call   0x1074a190
1074a2f2:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
1074a2f5:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1074a2f8:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
1074a2fb:	8b e5                                           	mov    esp,ebp
1074a2fd:	5d                                              	pop    ebp
1074a2fe:	c2 04 00                                        	ret    0x4
