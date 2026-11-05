/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasRoofsWhoseSlopesCantBeChangedImpl.
   Export ordinal(s): 1412. Entry VA: 0x10578990. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CDE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint World_HasRoofsWhoseSlopesCantBeChangedImpl(void)

{
  void *this;
  uint uVar1;
  uint in_EAX;
  undefined8 uVar2;
  int *piVar3;
  
  this = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
    piVar3 = (int *)0x0;
    uVar2 = FUN_10233750((int)DAT_10c700c4);
    piVar3 = FUN_10237010(this,(int)uVar2,(int)((ulonglong)uVar2 >> 0x20),piVar3);
    in_EAX = 0;
    if ((piVar3 != (int *)0x0) && (in_EAX = 0, (void *)piVar3[0xab] != (void *)0x0)) {
      uVar1 = FUN_101671b0((void *)piVar3[0xab]);
      return uVar1;
    }
  }
  return in_EAX & 0xffffff00;
}

