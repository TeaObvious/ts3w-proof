/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156558 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_FacialBlendGetNameImpl [assembly=ScriptCore token=0x06000348;
   handle: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CASUtils::CASUtils_FacialBlendGetNameImpl(undefined **param_1)

{
  int *piVar1;
  int iVar2;
  uint unaff_EDI;
  undefined **ppuStack_2c;
  undefined4 uStack_8;
  
  if (((uint)param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  ppuStack_2c = (undefined **)0x5ab9e3;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  ppuStack_2c = param_1;
  iVar2 = (**(code **)(*piVar1 + 0xcc))();
  if ((iVar2 != 0) && ((*(int *)(iVar2 + 0x2c) - *(int *)(iVar2 + 0x28) & 0xfffffffeU) != 0)) {
    FUN_005ab2a0(&stack0xffffffdc,(void *)(iVar2 + 0x28));
    (**(code **)(*piVar1 + 0x50))(&stack0xffffffdc,&stack0x00000000);
    ppuStack_2c = &PTR_FUN_00fba6f4;
    if ((unaff_EDI & 4) != 0) {
      FUN_004f5760(&ppuStack_2c,'\0');
    }
    return uStack_8;
  }
  return 0;
}

