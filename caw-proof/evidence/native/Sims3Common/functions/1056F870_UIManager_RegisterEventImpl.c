/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_RegisterEventImpl. Export ordinal(s):
   1141. Entry VA: 0x1056f870. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006BF. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_RegisterEventImpl(uint param_1)

{
  int *piVar1;
  uint unaff_retaddr;
  
                    /* 0x56f870  1141  UIManager_RegisterEventImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (piVar1 != (int *)0x0) {
        FUN_10533cd0(DAT_10c7b1fc,piVar1,unaff_retaddr);
      }
    }
  }
  return;
}

