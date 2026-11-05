/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00ce9002) */
/* WARNING: Removing unreachable block (ram,0x00ce9006) */
/* Verified PC 1.67 registration table at 0x01189f10 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_ModifyCollectionInfoImpl [assembly=ScriptCore
   token=0x06000BF9; collectionId: System.UInt64, collectionName: System.String, flags:
   System.UInt32, iconInstanceID: System.UInt64, iconGroupID: System.UInt32, iconTypeID:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.UserToolUtils::UserToolUtils_ModifyCollectionInfoImpl
          (uint param_1,undefined4 param_2,uint param_3,uint param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7)

{
  short sVar1;
  void *this;
  int *in_EAX;
  short *psVar2;
  undefined4 uVar3;
  short *psVar4;
  uint unaff_retaddr;
  uint uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  this = DAT_011d9ac8;
  if (((DAT_011d9ac8 != (void *)0x0) &&
      (in_EAX = (int *)GetGlobalInterfacePointer_11D5BBC(), param_3 != 0)) && (in_EAX != (int *)0x0)
     ) {
    psVar2 = (short *)(**(code **)(*in_EAX + 0x58))(param_3);
    in_EAX = (int *)0x0;
    if (psVar2 != (short *)0x0) {
      sVar1 = *psVar2;
      psVar4 = psVar2;
      while (sVar1 != 0) {
        psVar4 = psVar4 + 1;
        sVar1 = *psVar4;
      }
      FUN_00408d60(&stack0xffffffdc,psVar2,psVar2 + ((int)psVar4 - (int)psVar2 >> 1));
      uStack_10 = param_5;
      uStack_14 = param_4;
      uStack_c = param_7;
      uStack_8 = param_6;
      uVar3 = FUN_007deb70(this,unaff_retaddr,param_1,(undefined4 *)&stack0xffffffdc,&uStack_14,
                           param_3);
      return CONCAT31(0x11c8e,(char)uVar3);
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

