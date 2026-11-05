/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156588 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_CompoundBlendGetNameImpl [assembly=ScriptCore token=0x0600035A;
   handle: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CASUtils::CASUtils_CompoundBlendGetNameImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  int unaff_EDI;
  int iStack_30;
  undefined **appuStack_2c [2];
  byte abStack_24 [28];
  undefined4 uStack_8;
  
  if ((param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar2 = (**(code **)(*piVar1 + 0xcc))();
  if (iVar2 != 0) {
    FUN_00408df0(&stack0xffffffcc,(undefined4 *)(iVar2 + 0x28));
    if ((iStack_30 - unaff_EDI & 0xfffffffeU) != 0) {
      FUN_005ab2a0(abStack_24,&stack0xffffffcc);
      (**(code **)(*piVar1 + 0x50))(abStack_24,&stack0x00000000);
      appuStack_2c[0] = &PTR_FUN_00fba6f4;
      if ((abStack_24[0] & 4) != 0) {
        FUN_004f5760(appuStack_2c,'\0');
      }
      if ((2 < (int)(unaff_EDI - param_1 & 0xfffffffe)) && (param_1 != 0)) {
        FUN_004e44e0(param_1);
      }
      return uStack_8;
    }
    if ((2 < (int)((int)appuStack_2c[0] - unaff_EDI & 0xfffffffeU)) && (unaff_EDI != 0)) {
      FUN_004e44e0(unaff_EDI);
    }
  }
  return 0;
}

