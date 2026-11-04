PC 1.67 TS3W.exe; reference_id: ts3w-pc-1.67; identity: evidence/reference.json.
Current Ghidra analyst name: RegisterMessageListener.
Complete existing Ghidra stored body union: [0044C640,0044C698] inclusive; 89 owned bytes / 32 instruction starts.
Original PE bytes and independent objdump instruction starts match this Listing.

Builds a 20-byte listener record and passes it with the event ID to virtual +44. Nonnull listener
   required. The low-byte retain flag controls optional listener virtual +8 when dispatcher +B4 is
   enabled. Analyst-assigned name.

0044c640	83ec14	SUB ESP, 0x14
0044c643	56	PUSH ESI
0044c644	8bf1	MOV ESI, ECX
0044c646	8b4c241c	MOV ECX, dword ptr [ESP + 0x1c]
0044c64a	33d2	XOR EDX, EDX
0044c64c	3bca	CMP ECX, EDX
0044c64e	7442	JZ 0x0044c692
0044c650	3896b4000000	CMP byte ptr [ESI + 0xb4], DL
0044c656	8b442428	MOV EAX, dword ptr [ESP + 0x28]
0044c65a	89442408	MOV dword ptr [ESP + 0x8], EAX
0044c65e	8a442424	MOV AL, byte ptr [ESP + 0x24]
0044c662	894c2404	MOV dword ptr [ESP + 0x4], ECX
0044c666	8844240c	MOV byte ptr [ESP + 0xc], AL
0044c66a	89542410	MOV dword ptr [ESP + 0x10], EDX
0044c66e	89542414	MOV dword ptr [ESP + 0x14], EDX
0044c672	740b	JZ 0x0044c67f
0044c674	3ac2	CMP AL, DL ; AA0640 supplies retain flag 0, so its floor listener does not acquire a reference in this wrapper, even though the dispatcher defaults +B4=1.
0044c676	7407	JZ 0x0044c67f
0044c678	8b11	MOV EDX, dword ptr [ECX]
0044c67a	8b4208	MOV EAX, dword ptr [EDX + 0x8]
0044c67d	ffd0	CALL EAX
0044c67f	8b442420	MOV EAX, dword ptr [ESP + 0x20]
0044c683	8b16	MOV EDX, dword ptr [ESI] ; Concrete dispatcher vtable 00FA2B00 slot +44 is 44D070. The record stores the listener pointer; actual ID-map insertion and ordering are in that body.
0044c685	8b5244	MOV EDX, dword ptr [EDX + 0x44]
0044c688	50	PUSH EAX
0044c689	8d4c2408	LEA ECX, [ESP + 0x8]
0044c68d	51	PUSH ECX
0044c68e	8bce	MOV ECX, ESI
0044c690	ffd2	CALL EDX
0044c692	5e	POP ESI
0044c693	83c414	ADD ESP, 0x14
0044c696	c21000	RET 0x10
