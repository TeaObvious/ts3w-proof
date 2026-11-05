/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00ce8f0a) */
/* WARNING: Removing unreachable block (ram,0x00ce8f0e) */
/* Verified PC 1.67 registration table at 0x01189f08 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_CreateNewCollectionImpl [assembly=ScriptCore
   token=0x06000BF8; collectionName: System.String, flags: System.UInt32, iconInstanceID:
   System.UInt64, iconGroupID: System.UInt32, iconTypeID: System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8
ScriptCore_UserToolUtils__UserToolUtils_CreateNewCollectionImpl
          (uint param_1,uint param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
  short sVar1;
  void *this;
  int *piVar2;
  short *psVar3;
  short *psVar4;
  undefined8 uVar5;
  uint uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  this = DAT_011d9ac8;
  if ((((DAT_011d9ac8 != (void *)0x0) &&
       (piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC(), param_1 != 0)) &&
      (piVar2 != (int *)0x0)) &&
     (psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_1), psVar3 != (short *)0x0)) {
    sVar1 = *psVar3;
    psVar4 = psVar3;
    while (sVar1 != 0) {
      psVar4 = psVar4 + 1;
      sVar1 = *psVar4;
    }
    FUN_00408d60(&stack0xffffffdc,psVar3,psVar3 + ((int)psVar4 - (int)psVar3 >> 1));
    uStack_14 = param_2;
    uStack_10 = param_3;
    uStack_c = param_5;
    uStack_8 = param_4;
    uVar5 = FUN_007e0da0(this,(uint *)&stack0xffffffdc,&uStack_14,param_1);
    return uVar5;
  }
  return 0;
}

