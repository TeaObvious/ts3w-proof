/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_RequestLerpToTarget. Export ordinal(s):
   297. Entry VA: 0x1052f8b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A2B. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Camera_RequestLerpToTarget(void)

{
  int iVar1;
  int *piVar2;
  void *this;
  void *this_00;
  void *this_01;
  float in_stack_00000010;
  char in_stack_00000014;
  
                    /* 0x52f8b0  297  Camera_RequestLerpToTarget */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        this_00 = (void *)(**(code **)(*piVar2 + 0xc))(0x4d394edb);
        this_01 = (void *)(**(code **)(*piVar2 + 0xc))(0x14bc619b);
        if (this != (void *)0x0) {
          FUN_10767030(this,(float *)&stack0xffffffd4,in_stack_00000010,in_stack_00000014,'\x01',
                       '\0','\x01');
          return;
        }
        if (this_00 != (void *)0x0) {
          FUN_1076c6e0((int)this_00);
          FUN_1076c920(this_00,(float *)&stack0xffffffd4,in_stack_00000010);
          return;
        }
        if (this_01 != (void *)0x0) {
          FUN_1075a0e0(this_01,(float *)&stack0xffffffd4,in_stack_00000010);
        }
      }
    }
  }
  return;
}

