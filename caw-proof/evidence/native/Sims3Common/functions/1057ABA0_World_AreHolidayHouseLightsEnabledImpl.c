/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_AreHolidayHouseLightsEnabledImpl. Export
   ordinal(s): 1258. Entry VA: 0x1057aba0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BC5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl World_AreHolidayHouseLightsEnabledImpl(int param_1,int param_2)

{
  int iVar1;
  uint in_EAX;
  int *piVar2;
  
                    /* 0x57aba0  1258  World_AreHolidayHouseLightsEnabledImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar2 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if ((piVar2 != (int *)0x0) && (iVar1 = piVar2[0xab], in_EAX = 0, iVar1 != 0)) {
      return CONCAT31((int3)((uint)iVar1 >> 8),*(undefined1 *)(iVar1 + 0x90));
    }
  }
  return in_EAX & 0xffffff00;
}

