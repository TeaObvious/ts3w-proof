/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Removing unreachable block (ram,0x00747602) */
/* WARNING: Removing unreachable block (ram,0x00747606) */
/* Verified PC 1.67 registration table at 0x01161678 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_OverrideInGameBrowserUrlXroads [assembly=ScriptCore
   token=0x0600064E; url: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.OnlineFeatures::OnlineFeaturesHost_OverrideInGameBrowserUrlXroads(int param_1)

{
  undefined2 *allocation;
  int *piVar1;
  short *psVar2;
  int iVar3;
  undefined4 *puVar4;
  short *psVar5;
  undefined1 auStack_2e [2];
  undefined4 auStack_2c [2];
  undefined2 *puStack_24;
  undefined2 *puStack_20;
  int iStack_1c;
  char *pcStack_18;
  void *apvStack_14 [2];
  int iStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && (param_1 != 0)) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    puStack_24 = (undefined2 *)0x0;
    puStack_20 = (undefined2 *)0x0;
    iStack_1c = 0;
    pcStack_18 = "Services/OnlineFeaturesHost/pageUrl";
    FUN_0040b590(&puStack_24,psVar2);
    FUN_0040b590(auStack_2e + -6,&DAT_00fba6c4);
    if (DAT_011d5068 == 0) {
      iVar3 = 0;
    }
    else {
      iVar3 = DAT_011d5068 + -8;
    }
    puVar4 = EaString_FromUtf8Bytes(apvStack_14,*(byte **)(iVar3 + 0xa8),0xffffffff,(byte *)0x0);
    if (puVar4 != (undefined4 *)(auStack_2e + -6)) {
      FUN_00408d60(auStack_2e + -6,(void *)*puVar4,(undefined2 *)puVar4[1]);
    }
    if ((2 < (int)(iStack_c - (int)apvStack_14[0] & 0xfffffffeU)) && (apvStack_14[0] != (void *)0x0)
       ) {
      Memory_FreeIfNonNull(apvStack_14[0]);
    }
    psVar2 = (short *)&DAT_01003c7c;
    do {
      psVar5 = psVar2;
      psVar2 = psVar5 + 1;
    } while (*psVar2 != 0);
    FUN_00408b90(auStack_2e + -6,(undefined2 *)&DAT_01003c7c,
                 (undefined2 *)(&DAT_01003c7c + ((int)(psVar5 + -0x801e3d) >> 1) * 2));
    allocation = puStack_24;
    FUN_00408b90(auStack_2e + -6,puStack_24,puStack_20);
    EnterCriticalSection((LPCRITICAL_SECTION)&DAT_011eb210);
    FUN_00408d60(&PTR_DAT_011828cc,(void *)0x0,(undefined2 *)0x0);
    LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011eb210);
    if ((2 < (int)(iStack_1c - (int)allocation & 0xfffffffeU)) && (allocation != (undefined2 *)0x0))
    {
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

