# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

00ec1920  8bc1  MOV EAX,ECX
00ec1922  c700784aff00  MOV dword ptr [EAX],0xff4a78
00ec1928  33c9  XOR ECX,ECX
00ec192a  8d5004  LEA EDX,[EAX + 0x4]
00ec192d  870a  XCHG dword ptr [EDX],ECX
00ec192f  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00ec1933  8b542408  MOV EDX,dword ptr [ESP + 0x8]
00ec1937  c74008c0cffe00  MOV dword ptr [EAX + 0x8],0xfecfc0
00ec193e  c7400c8c2bfa00  MOV dword ptr [EAX + 0xc],0xfa2b8c
00ec1945  c7401054b4f900  MOV dword ptr [EAX + 0x10],0xf9b454
00ec194c  c74014e42afe00  MOV dword ptr [EAX + 0x14],0xfe2ae4
00ec1953  894818  MOV dword ptr [EAX + 0x18],ECX
00ec1956  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00ec195a  c70018320f01  MOV dword ptr [EAX],0x10f3218
00ec1960  c7400808320f01  MOV dword ptr [EAX + 0x8],0x10f3208
00ec1967  c7400cf8310f01  MOV dword ptr [EAX + 0xc],0x10f31f8
00ec196e  c74010ec310f01  MOV dword ptr [EAX + 0x10],0x10f31ec
00ec1975  c74014e8310f01  MOV dword ptr [EAX + 0x14],0x10f31e8
00ec197c  89501c  MOV dword ptr [EAX + 0x1c],EDX
00ec197f  894820  MOV dword ptr [EAX + 0x20],ECX
00ec1982  c20c00  RET 0xc
