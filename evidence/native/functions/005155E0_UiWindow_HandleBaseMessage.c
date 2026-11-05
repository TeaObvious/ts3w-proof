/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_005155e0. Physical ECX Window plus message/RET4. Message0D tails current
   primary+24 selfdraw using payload+18 DrawContext; other drawable/state/pick cases remain actual
   C. Indirect tail at515600 is dynamic and not claimed statically resolved. Message14 transform
   receiver is a different payload family. */

undefined4 __thiscall UiWindow_HandleBaseMessage(void *this,int param_1)

{
  undefined4 uVar1;
  uint uVar2;
  int local_28;
  int local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  float local_8;
  float local_4;
  
  uVar2 = *(uint *)(param_1 + 8);
  if (uVar2 == 0xd) {
                    /* WARNING: Could not recover jumptable at 0x00515600. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar1 = (**(code **)(*(int *)this + 0x24))();
    return uVar1;
  }
  if (uVar2 == 0x15) {
    if ((*(int **)((int)this + 0x204) != (int *)0x0) && (*(int *)(param_1 + 0xc) == 0)) {
      uVar1 = (**(code **)(**(int **)((int)this + 0x204) + 0x18))
                        (*(undefined4 *)(param_1 + 0x18),0,0);
      return uVar1;
    }
  }
  else if ((uVar2 == 0x13) && ((*(byte *)((int)this + 0x1f9) & 2) != 0)) {
    uVar2 = 0;
    if (*(int **)((int)this + 0x204) != (int *)0x0) {
      local_10 = 0;
      local_c = 0;
      local_8 = *(float *)((int)this + 0x48) - *(float *)((int)this + 0x40);
      local_4 = *(float *)((int)this + 0x4c) - *(float *)((int)this + 0x44);
      local_28 = (int)*(float *)(param_1 + 0xc);
      local_20 = 0;
      local_1c = 0;
      local_18 = 0;
      local_24 = (int)*(float *)(param_1 + 0x10);
      local_14 = 0xffffffff;
      uVar1 = (**(code **)(**(int **)((int)this + 0x204) + 0x14))(&local_10,&local_28,&local_20);
      **(undefined1 **)(param_1 + 0x18) = (char)uVar1;
      return CONCAT31((int3)((uint)uVar1 >> 8),1);
    }
  }
  else if ((uVar2 == 0xe) &&
          ((uVar2 = *(uint *)(param_1 + 0xc), uVar2 == 0xffffffff ||
           ((uVar2 == 1 &&
            ((((byte)*(undefined4 *)(param_1 + 0x14) ^ (byte)*(undefined4 *)(param_1 + 0x10)) & 1)
             != 0)))))) {
    uVar2 = FUN_00514f10(this);
  }
  return uVar2 & 0xffffff00;
}

