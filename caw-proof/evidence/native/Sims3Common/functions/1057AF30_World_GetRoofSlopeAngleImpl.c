/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetRoofSlopeAngleImpl. Export ordinal(s):
   1374. Entry VA: 0x1057af30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CDD. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 World_GetRoofSlopeAngleImpl(void)

{
  void *this;
  float10 fVar1;
  undefined8 uVar2;
  int *piVar3;
  undefined4 uStack_10;
  
  this = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
    piVar3 = (int *)0x0;
    uVar2 = FUN_10233750((int)DAT_10c700c4);
    piVar3 = FUN_10237010(this,(int)uVar2,(int)((ulonglong)uVar2 >> 0x20),piVar3);
    if ((piVar3 != (int *)0x0) && (piVar3[0xab] != 0)) {
      fVar1 = FUN_10163080(piVar3[0xab]);
      fVar1 = (float10)fpatan(fVar1 + fVar1,(float10)1);
      fVar1 = FUN_100c9820((float)(fVar1 * (float10)_DAT_10aba5d0));
      uStack_10 = (undefined4)(longlong)ROUND((float)fVar1);
      return uStack_10;
    }
  }
  return 0x2d;
}

