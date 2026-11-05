/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ObjectDesigner_EndDesigningImpl. Export
   ordinal(s): 1476. Entry VA: 0x10579250. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C65. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_ObjectDesigner_EndDesigningImpl(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  short *psVar2;
  void *this;
  char unaff_retaddr;
  
                    /* 0x579250  1476  World_ObjectDesigner_EndDesigningImpl */
  piVar1 = (int *)FUN_1055b120();
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
  this = (void *)FUN_100f8460();
  FUN_100fbc40(this,unaff_retaddr,psVar2);
  return;
}

