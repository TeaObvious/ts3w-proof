/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetSegmentEndDirection. Export ordinal(s):
   663. Entry VA: 0x10548350. Original managed P/Invoke MethodDef(s): ScriptCore:0x060001BD. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl Route_GetSegmentEndDirection(uint param_1,undefined4 param_2,undefined4 *param_3)

{
  uint in_EAX;
  int *this;
  undefined4 uVar1;
  undefined4 uVar2;
  
                    /* 0x548350  663  Route_GetSegmentEndDirection */
  if (DAT_10c78944 != (void *)0x0) {
    this = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    in_EAX = 0;
    if (this != (int *)0x0) {
      (**(code **)(*this + 0x10))();
      uVar1 = FUN_10544ae0(this,param_2,param_3);
      uVar2 = (**(code **)(*this + 0x14))();
      return CONCAT31((int3)((uint)uVar2 >> 8),(char)uVar1);
    }
  }
  return in_EAX & 0xffffff00;
}

