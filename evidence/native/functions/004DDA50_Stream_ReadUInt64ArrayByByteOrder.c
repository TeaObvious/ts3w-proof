/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl FOUR words stream/output/count/byteOrder, caller ADD ESP10hex (A766DA). Virtual
   read30 exact count*8, ALfalse on short read. Fourth word atoriginalESP+10 controls swap unless1.
   Previous threeparameter signature incorrectly treated output pointer as byteOrder. No EOF test.
    */

bool __cdecl
Stream_ReadUInt64ArrayByByteOrder(undefined *stream,undefined *output,uint count,uint byteOrder)

{
  int iVar1;
  undefined8 uVar2;
  
  iVar1 = (**(code **)(*(int *)stream + 0x30))(output,count * 8);
  if (iVar1 != count * 8) {
    return false;
  }
  if (output != (undefined *)0x1) {
    for (; count != 0; count = count - 1) {
      uVar2 = FUN_004dd710(*(uint *)output,*(uint *)((int)output + 4));
      *(undefined8 *)output = uVar2;
      output = (undefined *)((int)output + 8);
    }
  }
  return true;
}

