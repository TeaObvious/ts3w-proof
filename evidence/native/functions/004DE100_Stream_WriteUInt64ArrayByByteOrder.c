/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl fourwords stream/input/count/byteOrder. byteOrder1 writes full count*8 via
   virtual38; otherwise swaps each uint64 through4DD710 then writes8. ALstatus; no count<=255 test:
   caller stores count byte separately but passes full vector length. */

bool __cdecl
Stream_WriteUInt64ArrayByByteOrder(undefined *stream,undefined *input,uint count,uint byteOrder)

{
  char cVar1;
  undefined8 uVar2;
  undefined8 local_8;
  
  if (byteOrder == 1) {
    cVar1 = (**(code **)(*(int *)stream + 0x38))(input,count * 8);
    if (cVar1 != '\0') {
      return true;
    }
  }
  else {
    if (count == 0) {
      return true;
    }
    while( true ) {
      count = count - 1;
      uVar2 = FUN_004dd710(*(uint *)input,*(uint *)((int)input + 4));
      input = (undefined *)((int)input + 8);
      local_8 = uVar2;
      cVar1 = (**(code **)(*(int *)stream + 0x38))(&local_8,8);
      if (cVar1 == '\0') break;
      if (count == 0) {
        return true;
      }
    }
  }
  return false;
}

