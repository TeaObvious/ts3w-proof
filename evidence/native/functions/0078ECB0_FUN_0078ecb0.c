/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void __thiscall FUN_0078ecb0(void *this,undefined1 param_1)

{
  int *piVar1;
  uint unaff_ESI;
  undefined **ppuStack_2c;
  undefined ***pppuStack_28;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  undefined1 local_10;
  
  pppuStack_28 = (undefined ***)0x78ecbb;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    local_10 = param_1;
    pppuStack_28 = local_20;
    ppuStack_2c = *(undefined ***)((int)this + 0x14);
    local_20[0] = &PTR_FUN_00fba6f4;
    local_16 = 1;
    local_18 = 0;
    (**(code **)(*piVar1 + 0x124))(*(undefined4 *)((int)this + 0x10));
    ppuStack_2c = &PTR_FUN_00fba6f4;
    if ((unaff_ESI & 4) != 0) {
      FUN_004f5760(&ppuStack_2c,'\0');
    }
  }
  return;
}

