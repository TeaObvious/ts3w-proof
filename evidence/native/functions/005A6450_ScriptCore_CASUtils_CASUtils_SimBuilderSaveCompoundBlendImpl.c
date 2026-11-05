/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011563a8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderSaveCompoundBlendImpl [assembly=ScriptCore
   token=0x0600031C; handle: System.UInt32, region: System.UInt32, packageName: System.String;
   return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.CASUtils::CASUtils_SimBuilderSaveCompoundBlendImpl
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x58))(param_4);
    if (((uint)param_1 & 0xff000000) == 0x35000000) {
      iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
      if (iVar2 != 0) {
        FUN_005e0640((undefined4 *)&stack0xffffffe8);
        *param_1 = uStack_10;
        param_1[1] = uStack_c;
        param_1[2] = unaff_EDI;
        param_1[3] = unaff_ESI;
      }
    }
    return param_1;
  }
  return param_1;
}

