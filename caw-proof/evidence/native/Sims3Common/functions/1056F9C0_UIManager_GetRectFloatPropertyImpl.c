/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetRectFloatPropertyImpl. Export
   ordinal(s): 1109. Entry VA: 0x1056f9c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006C8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_GetRectFloatPropertyImpl(uint param_1)

{
  char cVar1;
  int *piVar2;
  void *this;
  undefined4 *unaff_retaddr;
  int iStack_5c;
  undefined4 uStack_50;
  undefined4 *puStack_4c;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [12];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [40];
  int iStack_4;
  
  piVar2 = (int *)FUN_1055b120();
  if (((param_1 & 0xff000000) == 0x30000000) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(), piVar2 != (int *)0x0)) {
    iStack_5c = -0x113a7c7e;
    piVar2 = (int *)(**(code **)(*piVar2 + 0xc))();
    if (piVar2 != (int *)0x0) {
      ppuStack_30 = &PTR_LAB_10b20c18;
      FUN_1091d570(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
      (**(code **)(*piVar2 + 0x10))(auStack_40);
      this = (void *)FUN_10943d20(auStack_44,&iStack_5c,iStack_4,&ppuStack_34);
      if ((this != (void *)0x0) &&
         (cVar1 = FUN_10943b20(this,&uStack_50,(int)&iStack_5c,&ppuStack_34), cVar1 != '\0')) {
        *unaff_retaddr = *puStack_4c;
        unaff_retaddr[1] = puStack_4c[1];
        unaff_retaddr[2] = puStack_4c[2];
        unaff_retaddr[3] = puStack_4c[3];
      }
      ppuStack_34 = &PTR_LAB_10b20c18;
      FUN_1091d660(&ppuStack_30);
    }
  }
  return;
}

