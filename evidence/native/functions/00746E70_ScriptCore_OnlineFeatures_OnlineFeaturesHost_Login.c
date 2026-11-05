/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011615e0 (original PC 1.67 TS3W.exe).
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
  char *pcVar6;
  int *piVar7;
  char *unaff_ESI;
  undefined1 *puVar8;
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
  if ((((piVar1 != (int *)0x0) && (param_1 != 0)) && (param_2 != 0)) &&
     (puStack_34 != (undefined1 *)0x0)) {
    pcStack_14 = "Services/OnlineFeaturesHost";
    puStack_20 = &DAT_011c8e54;
    puStack_1c = &DAT_011c8e54;
    puStack_18 = &DAT_011c8e55;
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
    ppiVar3 = FUN_004f3cc0(&puStack_34,pWVar2,0xffffffff,(char *)0x0);
    piVar7 = (int *)&DAT_011c8e54;
    if (ppiVar3 != &piStack_24) {
      FUN_00405910(&piStack_24,*ppiVar3,(undefined1 *)ppiVar3[1]);
      piVar7 = piStack_24;
    }
    if ((1 < (int)puStack_2c - (int)puStack_34) && (puStack_34 != (undefined1 *)0x0)) {
      FUN_004e44e0((int)puStack_34);
    }
    pcStack_28 = "Services/OnlineFeaturesHost";
    puStack_34 = &DAT_011c8e54;
    puStack_30 = &DAT_011c8e54;
    puStack_2c = &DAT_011c8e55;
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
    puVar4 = FUN_004f3cc0(&puStack_18,pWVar2,0xffffffff,(char *)0x0);
    pcVar6 = &DAT_011c8e54;
    puVar8 = &DAT_011c8e55;
    if (puVar4 != (undefined4 *)&stack0xffffffc8) {
      FUN_00405910(&stack0xffffffc8,(void *)*puVar4,(undefined1 *)puVar4[1]);
      pcVar6 = unaff_ESI;
      puVar8 = puStack_30;
    }
    if ((1 < iStack_10 - (int)puStack_18) && (puStack_18 != (undefined *)0x0)) {
      FUN_004e44e0((int)puStack_18);
    }
    iVar5 = FUN_0088c390(unaff_EBX,piVar7,pcVar6);
    if ((1 < (int)puVar8 - (int)pcVar6) && (pcVar6 != (char *)0x0)) {
      FUN_004e44e0((int)pcVar6);
    }
    if ((1 < (int)puStack_20 - (int)piVar7) && (piVar7 != (int *)0x0)) {
      FUN_004e44e0((int)piVar7);
    }
    return iVar5;
  }
  return 1;
}

