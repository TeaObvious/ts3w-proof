/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 physical UInt16 block reader ABI): Actual cdecl FOUR stackDWORDs are stream
   pointer, output-unit pointer, UInt32 unitCount, endianFlag; plainRET caller cleanup, AL Boolean
   success. After this body pushesEBX/ESI/EDI, fourth physical input is atESP+1C. LEAEBX,[EDI+EDI]
   supplies raw32 byteCount=2*unitCount to stream virtual+30; equality of returned byte count
   establishes success. On success, endianFlag!=1 swaps each UInt16 viaROLCX,8; flag1 preserves
   little-endian units. 7D96B0 caller supplies context endian word as the fourth input and reads its
   UInt32 unit count first. The previous three-formal inference omitted the physical fourth word.
   The scoped physical ABI correction now records UInt32 unitCount at stack+0C and UInt32 endianFlag
   at stack+10 under cdecl, preserving the first two pointer types/storage and the existing UInt32
   return. The endian comparison is against endianFlag, not the output pointer. AL is the Boolean
   status; the UInt32 return type does not establish meaningful upper return bits. Original
   body/bounds/bytes are unchanged. Managed structural projection checks unitCount<=remaining/2
   before multiplying; unsafe native wrap/allocation/status is not host-valid-input policy.
   
   Physical indirect call at4DD939: ECX is stream from entryESP+4; two pushed DWORDs are output
   pointer and raw32 byteCount=2*unitCount. No caller stack ADD follows; the subsequent three
   saved-register POPs and plain RET require the indirect target to pop8. A callsite-local
   __thiscall UInt32 ByteStream_ReadBytes(void* receiver,void* output,UInt32 byteCount) override
   records only this proven ECX/RET8 contract. Returned EAX is compared with byteCount. It restores
   local stack propagation so CMP at4DD944 reads endianFlag at currentESP+1C (entryESP+10), rather
   than the earlier erroneous output-pointer expression. Global vtable/callee types and all other
   callsites remain unchanged; opaque pointers do not establish foreign structure layouts. */

uint __cdecl
Stream_ReadUtf16UnitsEndian(int *param_1,ushort *param_2,uint unitCount,uint endianFlag)

{
  uint uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x30))(param_1,param_2,unitCount * 2);
  if (uVar1 == unitCount * 2) {
    uVar1 = 1;
    if ((endianFlag != 1) && (unitCount != 0)) {
      do {
        unitCount = unitCount - 1;
        *param_2 = *param_2 << 8 | *param_2 >> 8;
        param_2 = param_2 + 1;
      } while (unitCount != 0);
      return uVar1;
    }
  }
  else {
    uVar1 = uVar1 & 0xffffff00;
  }
  return uVar1;
}

