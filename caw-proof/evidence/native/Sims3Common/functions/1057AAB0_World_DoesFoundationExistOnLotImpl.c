/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DoesFoundationExistOnLotImpl. Export
   ordinal(s): 1292. Entry VA: 0x1057aab0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BC2. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl World_DoesFoundationExistOnLotImpl(int param_1,int param_2)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  
                    /* 0x57aab0  1292  World_DoesFoundationExistOnLotImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      uVar2 = FUN_1007bfe0((int)piVar1);
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

