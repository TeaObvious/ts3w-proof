/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Additional physical qualification: cdecl handle/hSetting/vSetting/plainRETvoid. Handle high-byte30000000 validation before object/query. Before7EC490, iterates direct children, queries scrollbar interface2EF0C885, obtains IWindow and rewrites ID to8EF24284 for orientation1 else8EF24283. Thus later ID-based exclusion must not be studied without this admission. Searches existing window-proc type034DEC59, updating via7ECCE0; otherwise allocates18 bytes and constructs7ECAC0 before AddProc. Existing bounded384byte export reused; unaff_EDI/stack aliases do not establish missing inputs or a wider failure guarantee. */

/* Verified PC 1.67 registration table at 0x01162f58 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_SetupScrollbarsImpl [assembly=ScriptCore token=0x06000E27;
   winHandle: System.UInt32, hScrollbarSetting: System.UInt32, vScrollbarSetting: System.UInt32;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_SetupScrollbarsImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  void *this;
  uint *this_00;
  int *unaff_EDI;
  undefined4 uVar4;
  undefined4 uStack_10;
  undefined1 auStack_4 [4];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((param_1 & 0xff000000) == 0x30000000) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(), piVar1 != (int *)0x0)) {
    uStack_10 = 0xeeee8218;
    piVar1 = (int *)(**(code **)(*piVar1 + 0xc))();
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0xd0))(auStack_4);
      piVar2 = (int *)(**(code **)(*piVar1 + 0xd4))(&uStack_10);
      if (unaff_EDI != (int *)*piVar2) {
        do {
          if (((int *)((int)unaff_EDI + DAT_00fbba94) != (int *)0x0) &&
             (piVar2 = (int *)(**(code **)(*(int *)((int)unaff_EDI + DAT_00fbba94) + 0xc))
                                        (0x2ef0c885), piVar2 != (int *)0x0)) {
            iVar3 = (**(code **)(*piVar2 + 0x18))();
            if (iVar3 == 1) {
              piVar2 = (int *)(**(code **)(*piVar2 + 0x10))();
              uVar4 = 0x8ef24284;
            }
            else {
              piVar2 = (int *)(**(code **)(*piVar2 + 0x10))();
              uVar4 = 0x8ef24283;
            }
            (**(code **)(*piVar2 + 0x54))(uVar4);
          }
          unaff_EDI = (int *)*unaff_EDI;
          piVar2 = (int *)(**(code **)(*piVar1 + 0xd4))(&stack0xffffffec);
        } while (unaff_EDI != (int *)*piVar2);
      }
      for (this = (void *)(**(code **)(*piVar1 + 0x110))(0); this != (void *)0x0;
          this = (void *)(**(code **)(*piVar1 + 0x110))(this)) {
        iVar3 = (**(code **)(*(int *)((int)this + 4) + 0x14))();
        if (iVar3 == 0x34dec59) {
          FUN_007ecce0(this,piVar1,unaff_EDI,param_1);
          return;
        }
      }
      this_00 = FUN_005050b0(0x18,4,"UI/ScrollAreaWinProc",(int *)0x0);
      if (this_00 != (uint *)0x0) {
        uVar4 = FUN_007ecac0(this_00,unaff_EDI,param_1);
        (**(code **)(*piVar1 + 0x108))(uVar4);
        return;
      }
      (**(code **)(*piVar1 + 0x108))(0);
    }
  }
  return;
}

