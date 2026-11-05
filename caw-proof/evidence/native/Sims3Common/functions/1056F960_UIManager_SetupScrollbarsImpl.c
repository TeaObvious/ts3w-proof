/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetupScrollbarsImpl. Export ordinal(s):
   1162. Entry VA: 0x1056f960. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006C2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_SetupScrollbarsImpl(uint param_1)

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
  
  piVar1 = (int *)FUN_1055b120();
  if (((param_1 & 0xff000000) == 0x30000000) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(), piVar1 != (int *)0x0)) {
    uStack_10 = 0xeeee8218;
    piVar1 = (int *)(**(code **)(*piVar1 + 0xc))();
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0xd0))(auStack_4);
      piVar2 = (int *)(**(code **)(*piVar1 + 0xd4))(&uStack_10);
      if (unaff_EDI != (int *)*piVar2) {
        do {
          if (((int *)((int)unaff_EDI + DAT_10b8f860) != (int *)0x0) &&
             (piVar2 = (int *)(**(code **)(*(int *)((int)unaff_EDI + DAT_10b8f860) + 0xc))
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
          FUN_105ddac0(this,piVar1,unaff_EDI,param_1);
          return;
        }
      }
      this_00 = FUN_10937870(0x18,4,"UI/ScrollAreaWinProc",(int *)0x0);
      if (this_00 != (uint *)0x0) {
        uVar4 = FUN_105dd8a0(this_00,unaff_EDI,param_1);
        (**(code **)(*piVar1 + 0x108))(uVar4);
        return;
      }
      (**(code **)(*piVar1 + 0x108))(0);
    }
  }
  return;
}

