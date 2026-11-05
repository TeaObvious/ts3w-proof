/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x005abbe4) */
/* WARNING: Removing unreachable block (ram,0x005abbe8) */
/* WARNING: Removing unreachable block (ram,0x005abbf9) */
/* WARNING: Removing unreachable block (ram,0x005abc4b) */
/* WARNING: Removing unreachable block (ram,0x005abc56) */
/* WARNING: Removing unreachable block (ram,0x005abc68) */
/* WARNING: Removing unreachable block (ram,0x005abc6c) */
/* WARNING: Removing unreachable block (ram,0x005abc75) */
/* Verified PC 1.67 registration table at 0x011566c8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimOutfitGetPartPresetImpl [assembly=ScriptCore token=0x06000376;
   handle: System.UInt32, key: Sims3.SimIFace.ResourceKey; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.CASUtils::CASUtils_SimOutfitGetPartPresetImpl
          (undefined **param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int *piVar1;
  void *this;
  int iStack_34;
  undefined4 uStack_30;
  undefined **ppuStack_2c;
  undefined4 uStack_28;
  
  if (((uint)param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar1 + 0xcc))();
    if (this != (void *)0x0) {
      iStack_34 = param_3;
      uStack_30 = param_4;
      ppuStack_2c = param_1;
      uStack_28 = param_2;
      FUN_005e67b0(this,&iStack_34,(undefined **)&stack0xffffffbc);
    }
    return 0;
  }
  return 0;
}

