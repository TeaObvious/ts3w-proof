/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f30 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_SetItemOrderInCollectionImpl [assembly=ScriptCore
   token=0x06000BFD; collectionId: System.UInt64, itemKeys: System.Byte[], itemPresetIds:
   System.UInt32[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.UserToolUtils::UserToolUtils_SetItemOrderInCollectionImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  void *this;
  char cVar1;
  int *piVar2;
  undefined4 unaff_ESI;
  int local_54;
  int local_50;
  int iStack_4c;
  int iStack_48;
  undefined1 auStack_3c [24];
  int aiStack_24 [7];
  uint uStack_8;
  uint uStack_4;
  
  this = DAT_011d9ac8;
  if (DAT_011d9ac8 != (void *)0x0) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar2 + 0x70))(param_3,&local_50);
    if (&local_54 != (int *)0x0) {
      FUN_004ded90(aiStack_24,unaff_ESI,&local_54);
      FUN_007d93e0(auStack_3c,aiStack_24,1);
      FUN_007d9500(&iStack_4c,(undefined4 *)&stack0xffffffa8);
      cVar1 = FUN_007d9930(&iStack_4c,auStack_3c);
      if ((cVar1 != '\0') &&
         ((**(code **)(*piVar2 + 0x6c))(param_1,&local_50,&local_54),
         local_54 == iStack_48 - iStack_4c >> 4)) {
        FUN_007df7f0(this,uStack_8,uStack_4,&iStack_4c,local_50);
      }
      if (iStack_4c != 0) {
        FUN_004e44e0(iStack_4c);
      }
      FUN_007d7990((int)auStack_3c);
    }
  }
  return;
}

