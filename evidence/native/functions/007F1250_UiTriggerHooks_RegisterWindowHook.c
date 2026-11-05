/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst description; PC 1.67. Register a window trigger hook through the existing allocator at
   receiver + 0x3C0 and initializer 0x007F1090; initializer status is tested in AL. Adds bit mask
   0x10 to the supplied low-byte flags. Successful registration calls window virtual + 0x108 with
   receiver + 0x3D0. When the mode argument is 1 it also registers receiver + 0x3D4, calls window
   virtual + 0x14 followed by returned-object virtual + 0x54 with literal 2, and activates the
   allocated handle only on window equality. Literal 2 is not identified as the managed InputContext
   enum. Returns the allocated UInt32 handle or 0; ECX receiver plus six stack DWORD slots, RET
   0x18. No ordering/focus-policy conclusion is inferred beyond these branches;
   initializer/notification helpers remain unresolved. Current inferred parameter types are
   retained, not an ABI correction. */

uint __thiscall
UiTriggerHooks_RegisterWindowHook
          (void *this,uint param_1,undefined4 param_2,int *param_3,int param_4,undefined4 param_5,
          byte param_6)

{
  uint uVar1;
  undefined4 uVar2;
  int *piVar3;
  
  uVar1 = FUN_007f0f30((void *)((int)this + 0x3c0),(int)this);
  uVar2 = FUN_007f1090(this,uVar1,param_1,param_2,param_3,param_4,param_5,param_6 | 0x10);
  if ((char)uVar2 != '\0') {
    (**(code **)(*param_3 + 0x108))(*(undefined4 *)((int)this + 0x3d0));
    if (param_4 == 1) {
      (**(code **)(*param_3 + 0x108))(*(undefined4 *)((int)this + 0x3d4));
      piVar3 = (int *)(**(code **)(*param_3 + 0x14))();
      piVar3 = (int *)(**(code **)(*piVar3 + 0x54))(2);
      if (piVar3 == param_3) {
        UiTriggerHooks_ActivateByHandle(this);
      }
    }
    return uVar1;
  }
  return 0;
}

