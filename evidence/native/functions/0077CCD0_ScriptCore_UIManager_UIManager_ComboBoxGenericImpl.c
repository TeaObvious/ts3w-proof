/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162fe8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_ComboBoxGenericImpl [assembly=ScriptCore token=0x06000E38;
   winHandle: System.UInt32, funcID: System.UInt32, index: System.Int32, value: System.String;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static PC1.67 original combo-control comparison; no execution. PC1.67 static combo command
   comparison. Physical cdecl reads handle/command/index/value from four incoming stack words;
   retained inferred C shows only two parameters and is not repaired. After high-byte30 handle
   admission, resolves interface2F5528D9, converts string through global interface+58 before
   command-range dispatch. Commands0..10 bind
   Add/Insert/Remove/Clear/Set/Has/Count/Selection/SetSelection/width/IsOpen;
   Insert/Remove/Clear/Set/SetSelection frontend response1 ignores child low-byte failure.
   Count/selection tail-dispatch distinct+3C/+40 slots; IsOpen normalizes AL; width service
   command15 result uses CVTTSS2SI. Full actual body426bytes175Listing is distinct from
   retained480-byte canonical raw window, which also contains jump-table/alignment data. Managed
   tag/audio/enumerator policy remains original; current caption/event/modal surrogate differences
   are qualified. */

uint __cdecl ScriptCore.UIManager::UIManager_ComboBoxGenericImpl(uint param_1,undefined4 param_2)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  undefined4 unaff_retaddr;
  float fVar7;
  undefined4 uStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))(), piVar3 != (int *)0x0)) &&
     (piVar3 = (int *)(**(code **)(*piVar3 + 0xc))(0x2f5528d9), piVar3 != (int *)0x0)) {
    uVar4 = (**(code **)(*piVar2 + 0x58))(param_2);
    switch(uStack_4) {
    case 0:
      (**(code **)(*piVar3 + 0x20))(uVar4);
      iVar5 = (**(code **)(*piVar3 + 0x3c))();
      return iVar5 - 1;
    case 1:
      (**(code **)(*piVar3 + 0x24))(unaff_retaddr,uVar4);
      return 1;
    case 2:
      (**(code **)(*piVar3 + 0x28))(unaff_retaddr);
      return 1;
    case 3:
      (**(code **)(*piVar3 + 0x2c))();
      return 1;
    case 4:
      (**(code **)(*piVar3 + 0x30))(unaff_retaddr,uVar4);
      return 1;
    case 5:
      uVar6 = (**(code **)(*piVar3 + 0x38))(uVar4);
      return uVar6;
    case 6:
                    /* WARNING: Could not recover jumptable at 0x0077cddc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar6 = (**(code **)(*piVar3 + 0x3c))();
      return uVar6;
    case 7:
                    /* WARNING: Could not recover jumptable at 0x0077cdea. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      uVar6 = (**(code **)(*piVar3 + 0x40))();
      return uVar6;
    case 8:
      (**(code **)(*piVar3 + 0x44))(unaff_retaddr,1);
      return 1;
    case 9:
      piVar2 = (int *)FUN_0050af90();
      iVar5 = *piVar2;
      fVar7 = 0.0;
      uVar4 = (**(code **)(*piVar3 + 0x10))(&stack0xffffffd8);
      uVar4 = (**(code **)(*piVar3 + 0x10))(uVar4);
      (**(code **)(iVar5 + 0x10))(uVar4);
      return (int)fVar7;
    case 10:
      cVar1 = (**(code **)(*piVar3 + 0x90))();
      return (uint)(cVar1 != '\0');
    }
  }
  return 0;
}

