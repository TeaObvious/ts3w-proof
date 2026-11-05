/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011615a8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_CheckConnectionURL [assembly=ScriptCore
   token=0x06000634; url: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_OnlineFeatures__OnlineFeaturesHost_CheckConnectionURL(undefined4 param_1)

{
  undefined1 uVar1;
  int *piVar2;
  LPCWSTR pWVar3;
  undefined1 **ppuVar4;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 uVar5;
  undefined1 *unaff_EBX;
  int iVar6;
  undefined1 *puVar7;
  undefined1 *allocation;
  undefined1 *apuStack_1c [2];
  char *apcStack_14 [2];
  int iStack_c;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d5068 == 0) {
    iVar6 = 0;
  }
  else {
    iVar6 = DAT_011d5068 + -8;
  }
  if ((piVar2 == (int *)0x0) || (iVar6 == 0)) {
    return (uint)piVar2 & 0xffffff00;
  }
  apcStack_14[0] = "Services/OnlineFeaturesHost";
  apuStack_1c[0] = &DAT_011c8e54;
  pWVar3 = (LPCWSTR)(**(code **)(*piVar2 + 0x58))(param_1);
  ppuVar4 = Utf_ConvertWideSpanToByteStorage(apcStack_14,pWVar3,0xffffffff,(char *)0x0);
  puVar7 = &DAT_011c8e55;
  allocation = &DAT_011c8e54;
  if (ppuVar4 != apuStack_1c + -2) {
    FUN_00405910(apuStack_1c + -2,*ppuVar4,ppuVar4[1]);
    puVar7 = apuStack_1c[0];
    allocation = unaff_EBX;
  }
  if ((1 < iStack_c - (int)apcStack_14[0]) && (apcStack_14[0] != (char *)0x0)) {
    Memory_FreeIfNonNull(apcStack_14[0]);
  }
  uVar1 = FUN_00887410(iVar6);
  uVar5 = extraout_var;
  if ((1 < (int)puVar7 - (int)allocation) && (allocation != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(allocation);
    uVar5 = extraout_var_00;
  }
  return CONCAT31(uVar5,uVar1);
}

