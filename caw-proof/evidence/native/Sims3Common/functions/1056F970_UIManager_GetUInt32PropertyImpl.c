/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetUInt32PropertyImpl. Export
   ordinal(s): 1113. Entry VA: 0x1056f970. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006C4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetUInt32PropertyImpl(uint param_1)

{
  undefined4 uVar1;
  char cVar2;
  int *piVar3;
  void *this;
  int iStack_5c;
  uint uStack_58;
  undefined4 uStack_50;
  undefined4 *puStack_4c;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [12];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [40];
  int iStack_4;
  
  uStack_58 = 0x1056d509;
  piVar3 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    uStack_58 = param_1;
    iStack_5c = 0x1056d52e;
    piVar3 = (int *)(**(code **)(*piVar3 + 0xcc))();
    if (piVar3 != (int *)0x0) {
      iStack_5c = -0x113a7c7e;
      piVar3 = (int *)(**(code **)(*piVar3 + 0xc))();
      if (piVar3 != (int *)0x0) {
        ppuStack_30 = &PTR_LAB_10b20c18;
        FUN_1091d570(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
        (**(code **)(*piVar3 + 0x10))(auStack_40);
        this = (void *)FUN_10943d20(auStack_44,&iStack_5c,iStack_4,&ppuStack_34);
        if (this != (void *)0x0) {
          cVar2 = FUN_10943b20(this,&uStack_50,(int)&iStack_5c,&ppuStack_34);
          if (cVar2 != '\0') {
            uVar1 = *puStack_4c;
            ppuStack_34 = &PTR_LAB_10b20c18;
            FUN_1091d660(&ppuStack_30);
            return uVar1;
          }
        }
        ppuStack_34 = &PTR_LAB_10b20c18;
        FUN_1091d660(&ppuStack_30);
      }
    }
  }
  return 0;
}

