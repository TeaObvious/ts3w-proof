/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00ceb6ee) */
/* WARNING: Type propagation algorithm not settling */
/* Verified PC 1.67 registration table at 0x01189f28 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_SetCollectionOrderImpl [assembly=ScriptCore
   token=0x06000BFC; newOrder: System.UInt64[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.UserToolUtils::UserToolUtils_SetCollectionOrderImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  char *local_18 [6];
  
  this = DAT_011d9ac8;
  if (DAT_011d9ac8 != (void *)0x0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar1 + 0x68))(param_1);
    if (0 < (int)(local_18 + 1)) {
      local_18[0] = (char *)0x0;
      local_18[1] = (char *)0x0;
      local_18[2] = "Scratch/UserToolHost/SetCollectionOrder";
      FUN_007def60(&stack0xffffffe4,local_18,(int)(local_18 + (int)(local_18 + 1) * 2));
      FUN_007e07f0(this,(undefined4 *)&stack0xffffffe4);
    }
  }
  return;
}

