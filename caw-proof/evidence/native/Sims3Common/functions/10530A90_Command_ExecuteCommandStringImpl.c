/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Command_ExecuteCommandStringImpl. Export
   ordinal(s): 312. Entry VA: 0x10530a90. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600029E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl Command_ExecuteCommandStringImpl(int param_1)

{
  int *piVar1;
  short *psVar2;
  void *this;
  uint uVar3;
  
                    /* 0x530a90  312  Command_ExecuteCommandStringImpl */
  piVar1 = (int *)FUN_1055b120();
  if (param_1 != 0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    piVar1 = (int *)0x0;
    if (psVar2 != (short *)0x0) {
      this = (void *)FUN_10387250();
      piVar1 = (int *)0x0;
      if (this != (void *)0x0) {
        uVar3 = FUN_10388650(this,psVar2);
        return uVar3;
      }
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

