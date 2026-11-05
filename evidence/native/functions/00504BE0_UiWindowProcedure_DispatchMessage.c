/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_00504be0. Physical ECX procedure plus IWindow/message words/RET8. Generic
   dispatch reads message+8. Case14 calls primary+74 with IWindow and payload+18 transform receiver,
   then clears AL. Case1000/1001 invoke attach/detach virtuals and set AL1; upper bits are not a
   uniform32-bit status. Vtable target provenance distinguishes this protocol from Window primary
   dispatch504810. */

uint __thiscall UiWindowProcedure_DispatchMessage(void *this,undefined4 param_1,undefined4 *param_2)

{
  uint uVar1;
  undefined4 uVar2;
  
  uVar1 = param_2[2];
  if (uVar1 < 0x1001) {
    if (uVar1 == 0x1000) {
      uVar2 = (**(code **)(*(int *)this + 0x78))(param_1);
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
    switch(uVar1) {
    case 1:
      uVar2 = (**(code **)(*(int *)this + 0x2c))(param_1,param_2[3],param_2[4],param_2[5]);
      return uVar2;
    case 2:
      uVar2 = (**(code **)(*(int *)this + 0x30))(param_1,param_2[3],param_2[4],param_2[5]);
      return uVar2;
    case 3:
      uVar2 = (**(code **)(*(int *)this + 0x24))(param_1,param_2[3],param_2[4],param_2[5]);
      return uVar2;
    case 4:
      uVar2 = (**(code **)(*(int *)this + 0x28))(param_1,param_2[3],param_2[4],param_2[5]);
      return uVar2;
    case 5:
      uVar2 = (**(code **)(*(int *)this + 0x34))(param_1,param_2[3],*(undefined2 *)(param_2 + 4));
      return uVar2;
    case 6:
      uVar2 = (**(code **)(*(int *)this + 0x38))
                        (param_1,param_2[3],param_2[4],param_2[6],param_2[5]);
      return uVar2;
    case 7:
      uVar2 = (**(code **)(*(int *)this + 0x3c))
                        (param_1,param_2[3],param_2[4],param_2[6],param_2[5]);
      return uVar2;
    case 8:
      uVar2 = (**(code **)(*(int *)this + 0x40))(param_1,param_2[3],param_2[4],param_2[5]);
      return uVar2;
    case 9:
      uVar2 = (**(code **)(*(int *)this + 0x44))
                        (param_1,param_2[3],param_2[4],param_2[5],param_2[6]);
      return uVar2;
    case 10:
      uVar2 = (**(code **)(*(int *)this + 0x58))(param_1,param_2[3],param_2[6]);
      return uVar2;
    case 0xb:
      uVar2 = (**(code **)(*(int *)this + 0x5c))(param_1,param_2[3],param_2[6]);
      return uVar2;
    case 0xc:
      uVar2 = (**(code **)(*(int *)this + 0x60))(param_1);
      return uVar2;
    case 0xf:
      param_2 = (undefined4 *)(**(code **)(*(int *)this + 0x70))(param_1,param_2[6]);
      break;
    case 0x10:
      uVar2 = (**(code **)(*(int *)this + 0x68))(param_1);
      return uVar2;
    case 0x11:
      uVar2 = (**(code **)(*(int *)this + 0x6c))(param_1);
      return uVar2;
    case 0x13:
      uVar2 = (**(code **)(*(int *)this + 100))(param_1,param_2[3],param_2[4],param_2[6]);
      return uVar2;
    case 0x14:
      uVar1 = (**(code **)(*(int *)this + 0x74))(param_1,param_2[6]);
      return uVar1 & 0xffffff00;
    case 0x16:
      uVar2 = (**(code **)(*(int *)this + 0x80))(param_1,*param_2,param_2[3]);
      return uVar2;
    case 0x17:
      uVar2 = (**(code **)(*(int *)this + 0x84))(param_1,*param_2,param_2[3],param_2);
      return uVar2;
    case 0x18:
      uVar2 = (**(code **)(*(int *)this + 0x88))(param_1,param_2[3],param_2[4]);
      return uVar2;
    case 0x19:
      uVar2 = (**(code **)(*(int *)this + 0x8c))(param_1,param_2[3],param_2[4]);
      return uVar2;
    case 0x1a:
      uVar2 = (**(code **)(*(int *)this + 0x90))(param_1,param_2[3],param_2[6]);
      return uVar2;
    case 0x1b:
      uVar2 = (**(code **)(*(int *)this + 0x94))(param_1,param_2[3],param_2[6]);
      return uVar2;
    case 0x1c:
      uVar2 = (**(code **)(*(int *)this + 0x48))(param_1,param_2[3],param_2[4]);
      return uVar2;
    case 0x1d:
      uVar2 = (**(code **)(*(int *)this + 0x4c))(param_1,param_2[3],param_2[4]);
      return uVar2;
    case 0x1e:
      uVar2 = (**(code **)(*(int *)this + 0x50))
                        (param_1,param_2[3],param_2[4],param_2[5],param_2[6]);
      return uVar2;
    case 0x1f:
      uVar2 = (**(code **)(*(int *)this + 0x54))(param_1,param_2[3],param_2[4],param_2[5]);
      return uVar2;
    }
  }
  else if (uVar1 == 0x1001) {
    uVar2 = (**(code **)(*(int *)this + 0x7c))(param_1);
    return CONCAT31((int3)((uint)uVar2 >> 8),1);
  }
  return (uint)param_2 & 0xffffff00;
}

