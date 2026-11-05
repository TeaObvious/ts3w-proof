/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156718 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderGetSkinToneRampKeyImpl [assembly=ScriptCore
   token=0x06000381; handle: System.UInt32; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_CASUtils__CASUtils_SimBuilderGetSkinToneRampKeyImpl(undefined4 *param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 unaff_ESI;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if ((piVar1 != (int *)0x0) && ((param_2 & 0xff000000) == 0x35000000)) {
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_2);
    if (iVar2 != 0) {
      if (*(void **)(iVar2 + 0x20) != (void *)0x0) {
        FUN_005ca260(*(void **)(iVar2 + 0x20),(undefined4 *)&stack0xffffffec);
        param_1[1] = uStack_8;
        param_1[2] = unaff_ESI;
        *param_1 = uStack_c;
        param_1[3] = uStack_10;
        return param_1;
      }
      param_1[1] = 0;
      *param_1 = 0;
      param_1[2] = 0;
      param_1[3] = 0;
    }
  }
  return param_1;
}

