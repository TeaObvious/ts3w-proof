/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00747602) */
/* WARNING: Removing unreachable block (ram,0x00747606) */
/* Verified PC 1.67 registration table at 0x01161678 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_OverrideInGameBrowserUrlXroads [assembly=ScriptCore
   token=0x0600064E; url: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.OnlineFeatures::OnlineFeaturesHost_OverrideInGameBrowserUrlXroads(int param_1)

{
  undefined2 *puVar1;
  int *piVar2;
  short *psVar3;
  int iVar4;
  undefined4 *puVar5;
  short *psVar6;
  undefined2 *puStack_24;
  undefined2 *puStack_20;
  int iStack_1c;
  char *pcStack_18;
  int aiStack_14 [2];
  int iStack_c;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar2 != (int *)0x0) && (param_1 != 0)) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x58))(param_1);
    puStack_24 = (undefined2 *)0x0;
    puStack_20 = (undefined2 *)0x0;
    iStack_1c = 0;
    pcStack_18 = "Services/OnlineFeaturesHost/pageUrl";
    FUN_0040b590(&puStack_24,psVar3);
    FUN_0040b590(&stack0xffffffcc,&DAT_00fba6c4);
    if (DAT_011d5068 == 0) {
      iVar4 = 0;
    }
    else {
      iVar4 = DAT_011d5068 + -8;
    }
    puVar5 = FUN_004f3b50(aiStack_14,*(LPCWSTR *)(iVar4 + 0xa8),0xffffffff,(char *)0x0);
    if (puVar5 != (undefined4 *)&stack0xffffffcc) {
      FUN_00408d60(&stack0xffffffcc,(void *)*puVar5,(undefined2 *)puVar5[1]);
    }
    if ((2 < (int)(iStack_c - aiStack_14[0] & 0xfffffffeU)) && (aiStack_14[0] != 0)) {
      FUN_004e44e0(aiStack_14[0]);
    }
    psVar3 = (short *)&DAT_01003c7c;
    do {
      psVar6 = psVar3;
      psVar3 = psVar6 + 1;
    } while (*psVar3 != 0);
    FUN_00408b90(&stack0xffffffcc,(undefined2 *)&DAT_01003c7c,
                 (undefined2 *)(&DAT_01003c7c + ((int)(psVar6 + -0x801e3d) >> 1) * 2));
    puVar1 = puStack_24;
    FUN_00408b90(&stack0xffffffcc,puStack_24,puStack_20);
    EnterCriticalSection((LPCRITICAL_SECTION)&DAT_011eb210);
    FUN_00408d60(&PTR_DAT_011828cc,(void *)0x0,(undefined2 *)0x0);
    LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011eb210);
    if ((2 < (int)(iStack_1c - (int)puVar1 & 0xfffffffeU)) && (puVar1 != (undefined2 *)0x0)) {
      FUN_004e44e0((int)puVar1);
    }
  }
  return;
}

