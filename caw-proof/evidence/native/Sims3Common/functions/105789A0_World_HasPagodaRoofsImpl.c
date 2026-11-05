/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasPagodaRoofsImpl. Export ordinal(s):
   1410. Entry VA: 0x105789a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CDF. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint World_HasPagodaRoofsImpl(void)

{
  void *this;
  uint in_EAX;
  undefined8 uVar1;
  int *piVar2;
  
  this = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
    piVar2 = (int *)0x0;
    uVar1 = FUN_10233750((int)DAT_10c700c4);
    piVar2 = FUN_10237010(this,(int)uVar1,(int)((ulonglong)uVar1 >> 0x20),piVar2);
    in_EAX = 0;
    if ((piVar2 != (int *)0x0) && (in_EAX = 0, (void *)piVar2[0xab] != (void *)0x0)) {
      in_EAX = FUN_10167090((void *)piVar2[0xab]);
    }
  }
  return in_EAX & 0xffffff00;
}

