/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_WindowScreenTransformImpl. Export
   ordinal(s): 1173. Entry VA: 0x1056f7b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006B3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_WindowScreenTransformImpl(uint param_1,char param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *unaff_retaddr;
  undefined4 uStack_18;
  uint uStack_14;
  undefined1 auStack_10 [8];
  undefined4 *puStack_8;
  
  uStack_14 = 0x1056d068;
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    uStack_14 = param_1;
    uStack_18 = 0x1056d089;
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
    if (piVar1 != (int *)0x0) {
      uStack_18 = 0xeeee8218;
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))();
      if (piVar1 != (int *)0x0) {
        if (param_2 != '\0') {
          puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xc4))(&uStack_18);
          *puStack_8 = *puVar2;
          puStack_8[1] = puVar2[1];
          return;
        }
        puVar2 = (undefined4 *)
                 (**(code **)(*piVar1 + 200))(auStack_10,*unaff_retaddr,unaff_retaddr[1]);
        *puStack_8 = *puVar2;
        puStack_8[1] = puVar2[1];
      }
    }
  }
  return;
}

