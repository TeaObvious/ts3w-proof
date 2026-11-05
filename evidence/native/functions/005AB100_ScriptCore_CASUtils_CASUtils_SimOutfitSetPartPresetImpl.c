/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x005ab1bb) */
/* WARNING: Removing unreachable block (ram,0x005ab1bf) */
/* Verified PC 1.67 registration table at 0x011566d0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimOutfitSetPartPresetImpl [assembly=ScriptCore token=0x06000377;
   handle: System.UInt32, key: Sims3.SimIFace.ResourceKey, presetString: System.String;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_SimOutfitSetPartPresetImpl
          (uint param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          int param_6)

{
  int *piVar1;
  short *psVar2;
  void *this;
  int iStack_18;
  undefined4 uStack_14;
  uint uStack_c;
  
  if (((param_1 & 0xff000000) == 0x35000000) && (param_6 != 0)) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_6);
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      iStack_18 = param_2;
      uStack_c = param_1;
      uStack_14 = param_3;
      FUN_0040b590(&stack0xffffffd8,psVar2);
      FUN_005e5950(this,&iStack_18,(undefined4 *)&stack0xffffffd8);
    }
  }
  return;
}

