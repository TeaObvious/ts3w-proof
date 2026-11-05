/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. cdecl(stream,outUInt64,UInt32 endianFlag), THREE stack
   args. Read8 bytes through virtual+30; ALfalse if actualcount!=8. FullDWORD flag==1 preserves
   native little-endian, otherwise swap64. Short read may already modify part of output; no rollback
   here. */

bool __cdecl Stream_ReadUInt64(void *stream,ulonglong *outUInt64,uint endianFlag)

{
  uint uVar1;
  ulonglong uVar2;
  
  uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,outUInt64,8);
  if (uVar1 == 8) {
    if (endianFlag != 1) {
      uVar2 = FUN_004dd710((uint)*outUInt64,*(uint *)((int)outUInt64 + 4));
      *outUInt64 = uVar2;
    }
    return true;
  }
  return false;
}

