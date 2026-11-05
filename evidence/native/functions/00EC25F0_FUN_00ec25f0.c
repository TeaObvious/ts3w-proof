/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void __cdecl FUN_00ec25f0(int param_1)

{
  int *piVar1;
  undefined4 *this;
  int *piVar2;
  uint unaff_ESI;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  undefined1 local_10;
  
  piVar1 = (int *)FUN_007693a0();
  if (piVar1 != (int *)0x0) {
    local_20[0] = &PTR_FUN_00fba6f4;
    local_10 = 1;
    local_16 = 1;
    local_18 = 0;
    this = FUN_0076ae20();
    if (this == (undefined4 *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = FUN_005addc0(this,*(undefined4 *)(param_1 + 8),*(undefined4 *)(param_1 + 0xc),
                            (int)local_20);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    (**(code **)(*piVar1 + 0x1c))(0x30290f0,piVar2);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
    }
    if ((unaff_ESI & 4) != 0) {
      FUN_004f5760(&stack0xffffffd0,'\0');
    }
  }
  return;
}

