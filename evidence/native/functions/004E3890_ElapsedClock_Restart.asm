# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x004e3890 ElapsedClock_Restart
# Complete Ghidra body [004e3890, 004e38d1] inclusive; 26 instructions, 66 bytes.
# Binary identity: ../../../README.md. One original-byte-bearing objdump listing follows.
# Actual annotations and inferred ABI caveats: 004E3890_ElapsedClock_Restart.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

004e3890 <.text+0xe2890>:
  4e3890:	83 ec 08                                        	sub    esp,0x8
  4e3893:	33 c0                                           	xor    eax,eax
  4e3895:	56                                              	push   esi
  4e3896:	8b f1                                           	mov    esi,ecx
  4e3898:	83 7e 10 01                                     	cmp    DWORD PTR [esi+0x10],0x1
  4e389c:	89 06                                           	mov    DWORD PTR [esi],eax
  4e389e:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  4e38a1:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  4e38a4:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  4e38a7:	75 0c                                           	jne    0x4e38b5
  4e38a9:	0f 31                                           	rdtsc
  4e38ab:	89 06                                           	mov    DWORD PTR [esi],eax
  4e38ad:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  4e38b0:	5e                                              	pop    esi
  4e38b1:	83 c4 08                                        	add    esp,0x8
  4e38b4:	c3                                              	ret
  4e38b5:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  4e38b9:	50                                              	push   eax
  4e38ba:	ff 15 bc 63 f9 00                               	call   DWORD PTR ds:0xf963bc
  4e38c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  4e38c4:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  4e38c8:	89 0e                                           	mov    DWORD PTR [esi],ecx
  4e38ca:	89 56 04                                        	mov    DWORD PTR [esi+0x4],edx
  4e38cd:	5e                                              	pop    esi
  4e38ce:	83 c4 08                                        	add    esp,0x8
  4e38d1:	c3                                              	ret
