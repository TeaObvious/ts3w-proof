/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack string review. cdecl four arguments, returns output string.
   SentinelFFFFFFFF computes byte strlen. Calls generic converter004F40F0 with source
   encoding8,target10h and16-bit output buffer. Original call operands confirm byte input; previous
   LPCWSTR type was wrong. ASCII conversion and output width established; complete malformed/non-BMP
   encoding contract not reviewed. */

void * __cdecl
EaString_FromUtf8Bytes(void *outWideString,byte *inputBytes,uint byteCount,byte *allocationTag)

{
  uint uVar1;
  LPWSTR allocation;
  byte *local_408;
  uint local_404;
  WCHAR local_400 [512];
  
  if (byteCount == 0xffffffff) {
    byteCount = FUN_004fe2a0((char *)inputBytes);
  }
  local_404 = 0x200;
  uVar1 = FUN_004f40f0((LPCWSTR)inputBytes,byteCount,8,local_400,&local_404,0x10);
  if (byteCount <= uVar1) {
    if (allocationTag != (byte *)0x0) {
      local_408 = allocationTag;
      FUN_004f3af0(outWideString,local_400,(int)(local_400 + local_404),&local_408);
      return outWideString;
    }
    local_408 = (byte *)0xfba558;
    FUN_004f3af0(outWideString,local_400,(int)(local_400 + local_404),&local_408);
    return outWideString;
  }
  local_404 = byteCount;
  allocation = (LPWSTR)FUN_004e4500(-(uint)((int)((ulonglong)byteCount * 2 >> 0x20) != 0) |
                                    (uint)((ulonglong)byteCount * 2),allocationTag,0);
  FUN_004f40f0((LPCWSTR)inputBytes,byteCount,8,allocation,&local_404,0x10);
  local_408 = allocationTag;
  if (allocationTag == (byte *)0x0) {
    local_408 = (byte *)0xfba558;
  }
  FUN_004f3af0(outWideString,allocation,(int)(allocation + local_404),&local_408);
  Memory_FreeIfNonNull(allocation);
  return outWideString;
}

