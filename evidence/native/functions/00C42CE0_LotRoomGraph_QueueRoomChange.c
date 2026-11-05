/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Queue8byte ID/room record. For discriminator0: flagfalse9251D9D2,
   flagnonzero5251D88C; original16bit input and switches retained. Queueing is separate fromC413F0
   message submission. RET8. */

void __thiscall LotRoomGraph_QueueRoomChange(void *this,undefined2 param_1,char param_2)

{
  int *piVar1;
  int local_8;
  int local_4;
  
  if (*(int *)((int)this + 4) != 0) {
    switch(*(undefined4 *)(*(int *)((int)this + 4) + 0xc)) {
    case 0:
      local_8 = (-(uint)(param_2 != '\0') & 0xbffffeba) + 0x9251d9d2;
      break;
    case 1:
      local_8 = (-(uint)(param_2 != '\0') & 0x7fffff94) + 0xb251d9ec;
      break;
    case 2:
      local_8 = (-(uint)(param_2 != '\0') & 0x9fffff98) + 0x9251d9e0;
      break;
    case 3:
      local_8 = (-(uint)(param_2 != '\0') & 0xffffffeb) + 0xa29bdcc;
      break;
    default:
      goto switchD_00c42d01_default;
    }
    if (local_8 != 0) {
      local_4 = CONCAT22(local_4._2_2_,param_1);
      piVar1 = *(int **)((int)this + 0x50);
      if (piVar1 < *(int **)((int)this + 0x54)) {
        *(int **)((int)this + 0x50) = piVar1 + 2;
        if (piVar1 != (int *)0x0) {
          *piVar1 = local_8;
          piVar1[1] = local_4;
          return;
        }
      }
      else {
        FUN_0040c540((void *)((int)this + 0x4c),piVar1,&local_8);
      }
    }
  }
switchD_00c42d01_default:
  return;
}

