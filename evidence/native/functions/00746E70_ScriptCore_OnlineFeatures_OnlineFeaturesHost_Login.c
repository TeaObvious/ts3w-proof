/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011615e0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_Login [assembly=ScriptCore token=0x0600063B;
   username: System.String, password: System.String, errorMessage: System.String&;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_OnlineFeatures__OnlineFeaturesHost_Login(int param_1,int param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int **ppiVar3;
  undefined4 *puVar4;
  int iVar5;
  void *unaff_EBX;
  char *allocation;
  int *allocation_00;
  char *unaff_ESI;
  undefined1 *puVar6;
  undefined1 *puStack_34;
  undefined1 *puStack_30;
  undefined *puStack_2c;
  char *pcStack_28;
  int *piStack_24;
  undefined1 *puStack_20;
  undefined1 *puStack_1c;
  undefined *puStack_18;
  char *pcStack_14;
  int iStack_10;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d5068 == 0) {
    puStack_34 = (undefined1 *)0x0;
  }
  else {
    puStack_34 = (undefined1 *)(DAT_011d5068 + -8);
  }
  if ((((piVar1 == (int *)0x0) || (param_1 == 0)) || (param_2 == 0)) ||
     (puStack_34 == (undefined1 *)0x0)) {
    return 1;
  }
  pcStack_14 = "Services/OnlineFeaturesHost";
  puStack_20 = &DAT_011c8e54;
  puStack_1c = &DAT_011c8e54;
  puStack_18 = &DAT_011c8e55;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  ppiVar3 = Utf_ConvertWideSpanToByteStorage(&puStack_34,pWVar2,0xffffffff,(char *)0x0);
  allocation_00 = (int *)&DAT_011c8e54;
  if (ppiVar3 != &piStack_24) {
    FUN_00405910(&piStack_24,*ppiVar3,(undefined1 *)ppiVar3[1]);
    allocation_00 = piStack_24;
  }
  if ((1 < (int)puStack_2c - (int)puStack_34) && (puStack_34 != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(puStack_34);
  }
  pcStack_28 = "Services/OnlineFeaturesHost";
  puStack_34 = &DAT_011c8e54;
  puStack_30 = &DAT_011c8e54;
  puStack_2c = &DAT_011c8e55;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  puVar4 = Utf_ConvertWideSpanToByteStorage(&puStack_18,pWVar2,0xffffffff,(char *)0x0);
  allocation = &DAT_011c8e54;
  puVar6 = &DAT_011c8e55;
  if (puVar4 != (undefined4 *)((int)register0x00000010 + -0x38)) {
    FUN_00405910((undefined4 *)((int)register0x00000010 + -0x38),(void *)*puVar4,
                 (undefined1 *)puVar4[1]);
    allocation = unaff_ESI;
    puVar6 = puStack_30;
  }
  if ((1 < iStack_10 - (int)puStack_18) && (puStack_18 != (undefined *)0x0)) {
    Memory_FreeIfNonNull(puStack_18);
  }
  iVar5 = FUN_0088c390(unaff_EBX,allocation_00,allocation);
  if ((1 < (int)puVar6 - (int)allocation) && (allocation != (char *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  if ((1 < (int)puStack_20 - (int)allocation_00) && (allocation_00 != (int *)0x0)) {
    Memory_FreeIfNonNull(allocation_00);
  }
  return iVar5;
}

