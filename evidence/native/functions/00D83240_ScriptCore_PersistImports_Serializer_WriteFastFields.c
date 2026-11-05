/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0108d128 (original PC 1.67 TS3W.exe).
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
  byte bVar2;
  int *piVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined1 auStack_18 [8];
  int *piStack_10;
  int iStack_8;
  undefined1 uStack_4;
  
  piVar3 = (int *)FUN_00774e80(param_3);
  if (piVar3 == (int *)0x0) {
    return 0;
  }
  FUN_007d93e0(auStack_18,piVar3,1);
  iVar4 = *(int *)(param_2 + 8);
  if (0 < iVar4) {
    puVar5 = (undefined4 *)(param_2 + 0x10);
    do {
      iVar1 = puVar5[1];
      if (-1 < iVar1) {
        switch(*puVar5) {
        case 2:
        case 3:
        case 0xb:
          bVar2 = FUN_004dde30(piStack_10);
          break;
        default:
          goto switchD_00d832a1_caseD_4;
        case 7:
        case 10:
        case 0xf:
          bVar2 = FUN_004de0c0(piStack_10,
                               CONCAT44(*(undefined4 *)(iVar1 + 4 + param_1),
                                        *(undefined4 *)(iVar1 + param_1)),iStack_8);
          break;
        case 8:
        case 0xd:
          bVar2 = FUN_004dde70(piStack_10,(uint)*(ushort *)(iVar1 + param_1),iStack_8);
          break;
        case 9:
        case 0xc:
        case 0xe:
          bVar2 = FUN_004ddf70(piStack_10,*(uint *)(iVar1 + param_1),iStack_8);
        }
        FUN_007d79f0(auStack_18,bVar2);
      }
switchD_00d832a1_caseD_4:
      puVar5 = puVar5 + 2;
      iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
  }
  FUN_007d7990((int)auStack_18);
  return uStack_4;
}

