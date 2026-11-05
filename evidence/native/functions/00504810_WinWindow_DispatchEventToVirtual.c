/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: dispatch message IDs 6/7/8 to primary +3c/+40/+44; not caller managed/native
   admission order.
   Coordinates in the event payload pass through FLD/FSTP. Down/up receive four stack words; move
   receives three. This establishes the selected virtual dispatch only; outer managed/native
   callbacks and consuming-child/ancestor ordering remain unproved.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

uint __thiscall WinWindow_DispatchEventToVirtual(void *this,undefined4 *param_1)

{
  uint uVar1;
  
  switch(param_1[2]) {
  case 1:
    uVar1 = (**(code **)(*(int *)this + 0x30))(param_1[3],param_1[4],param_1[5]);
    return uVar1;
  case 2:
    uVar1 = (**(code **)(*(int *)this + 0x34))(param_1[3],param_1[4],param_1[5]);
    return uVar1;
  case 3:
    uVar1 = (**(code **)(*(int *)this + 0x28))(param_1[3],param_1[4],param_1[5]);
    return uVar1;
  case 4:
    uVar1 = (**(code **)(*(int *)this + 0x2c))(param_1[3],param_1[4],param_1[5]);
    return uVar1;
  case 5:
    uVar1 = (**(code **)(*(int *)this + 0x38))(param_1[3],*(undefined2 *)(param_1 + 4));
    return uVar1;
  case 6:
    uVar1 = (**(code **)(*(int *)this + 0x3c))(param_1[3],param_1[4],param_1[6],param_1[5]);
    return uVar1;
  case 7:
    uVar1 = (**(code **)(*(int *)this + 0x40))(param_1[3],param_1[4],param_1[6],param_1[5]);
    return uVar1;
  case 8:
    uVar1 = (**(code **)(*(int *)this + 0x44))(param_1[3],param_1[4],param_1[5]);
    return uVar1;
  case 9:
    uVar1 = (**(code **)(*(int *)this + 0x48))(param_1[3],param_1[4],param_1[5],param_1[6]);
    return uVar1;
  case 10:
    uVar1 = (**(code **)(*(int *)this + 0x5c))(param_1[3],param_1[6]);
    return uVar1;
  case 0xb:
    uVar1 = (**(code **)(*(int *)this + 100))(param_1[3],param_1[6]);
    return uVar1;
  case 0xc:
    uVar1 = (**(code **)(*(int *)this + 0x68))();
    return uVar1;
  case 0xf:
    uVar1 = (**(code **)(*(int *)this + 0x78))(param_1[6]);
    return uVar1 & 0xffffff00;
  case 0x10:
    uVar1 = (**(code **)(*(int *)this + 0x6c))();
LAB_00504a98:
    return uVar1 & 0xffffff00;
  case 0x11:
    uVar1 = (**(code **)(*(int *)this + 0x70))();
    return uVar1 & 0xffffff00;
  case 0x13:
    uVar1 = (**(code **)(*(int *)this + 0x74))(param_1[3],param_1[4],param_1[6]);
    if ((char)uVar1 != '\0') goto LAB_00504a98;
    break;
  case 0x14:
    uVar1 = (**(code **)(*(int *)this + 0x7c))(param_1[6]);
    return uVar1 & 0xffffff00;
  case 0x15:
    uVar1 = (**(code **)(*(int *)this + 0x60))(param_1[3],param_1[6]);
    return uVar1;
  case 0x16:
    uVar1 = (**(code **)(*(int *)this + 0x80))(*param_1,param_1[3]);
    return uVar1;
  case 0x17:
    uVar1 = (**(code **)(*(int *)this + 0x84))(*param_1,param_1[3],param_1);
    return uVar1;
  case 0x18:
    uVar1 = (**(code **)(*(int *)this + 0x88))(param_1[3],param_1[4]);
    return uVar1;
  case 0x19:
    uVar1 = (**(code **)(*(int *)this + 0x8c))(param_1[3],param_1[4]);
    return uVar1;
  case 0x1a:
    uVar1 = (**(code **)(*(int *)this + 0x90))(param_1[3],param_1[6]);
    return uVar1;
  case 0x1b:
    uVar1 = (**(code **)(*(int *)this + 0x94))(param_1[3],param_1[6]);
    return uVar1;
  case 0x1c:
    uVar1 = (**(code **)(*(int *)this + 0x4c))(param_1[3],param_1[4]);
    return uVar1;
  case 0x1d:
    uVar1 = (**(code **)(*(int *)this + 0x50))(param_1[3],param_1[4]);
    return uVar1;
  case 0x1e:
    uVar1 = (**(code **)(*(int *)this + 0x54))(param_1[3],param_1[4],param_1[5],param_1[6]);
    return uVar1;
  case 0x1f:
    uVar1 = (**(code **)(*(int *)this + 0x58))(param_1[3],param_1[4],param_1[5]);
    return uVar1;
  }
  uVar1 = FUN_005155e0(this,(int)param_1);
  return uVar1;
}

