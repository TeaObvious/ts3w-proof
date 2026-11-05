/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0108d128 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.PersistImports::Serializer_WriteFastFields [assembly=ScriptCore token=0x06000CAF; obj:
   System.Object, fastFields: ScriptCore.PersistFastField[], fastStreamHandle: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1
ScriptCore_PersistImports__Serializer_WriteFastFields(int param_1,int param_2,uint param_3)

{
  int iVar1;
  undefined4 uVar2;
  byte readSucceeded;
  void *stream;
  int iVar3;
  undefined4 *puVar4;
  undefined1 auStack_18 [8];
  int *piStack_10;
  uint uStack_8;
  undefined1 uStack_4;
  
  stream = (void *)StreamHost_ResolveTaggedStreamAndCache(param_3);
  if (stream == (void *)0x0) {
    return 0;
  }
  StreamReader_Construct(auStack_18,stream,1);
  iVar3 = *(int *)(param_2 + 8);
  if (0 < iVar3) {
    puVar4 = (undefined4 *)(param_2 + 0x10);
    do {
      iVar1 = puVar4[1];
      if (-1 < iVar1) {
        switch(*puVar4) {
        case 2:
        case 3:
        case 0xb:
          readSucceeded = Stream_WriteByte((undefined *)piStack_10,*(byte *)(iVar1 + param_1));
          break;
        default:
          goto switchD_00d832a1_caseD_4;
        case 7:
        case 10:
        case 0xf:
          uVar2 = *(undefined4 *)(iVar1 + 4 + param_1);
          readSucceeded =
               FUN_004de0c0(piStack_10,
                            CONCAT26((short)((uint)uVar2 >> 0x10),
                                     CONCAT24((short)uVar2,*(undefined4 *)(iVar1 + param_1))),
                            uStack_8);
          break;
        case 8:
        case 0xd:
          readSucceeded = Stream_WriteUInt16(piStack_10,*(ushort *)(iVar1 + param_1),uStack_8);
          break;
        case 9:
        case 0xc:
        case 0xe:
          readSucceeded = Stream_WriteUInt32(piStack_10,*(uint *)(iVar1 + param_1),uStack_8);
        }
        StreamReader_AccumulateStatus(auStack_18,readSucceeded);
      }
switchD_00d832a1_caseD_4:
      puVar4 = puVar4 + 2;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  StreamReader_ReleaseAuxiliary(auStack_18);
  return uStack_4;
}

