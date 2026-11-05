/* PC1.67 original static contract. ECX lot; output aligned32B pose in one stack argument/RET4.
   Quaternion XYZW=(0,sin(lot+1A0 /2),0,cos(lot+1A0 /2)); copy translation Float4 from lot+190.
   Physical EAX is output pointer despite provisional void C return. No inversion/transposition
   here; lot rotation uses Y-up and original x87 FSIN/FCOS rounded to binary32. */

void __thiscall Lot_GetLocalToWorldPose(void *this,float *param_1)

{
  undefined4 uVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float10 fVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  float local_60;
  
  uVar1 = *(undefined4 *)((int)this + 0x1a0);
  auVar6._4_4_ = uVar1;
  auVar6._0_4_ = uVar1;
  auVar6._8_4_ = uVar1;
  auVar6._12_4_ = uVar1;
  auVar7._8_4_ = 0x40000000;
  auVar7._0_8_ = 0x4000000040000000;
  auVar7._12_4_ = 0x40000000;
  auVar7 = divps(auVar6,auVar7);
  local_60 = auVar7._0_4_;
  fVar5 = (float10)fsin((float10)local_60);
  fVar2 = (float)fVar5;
  fVar5 = (float10)fcos((float10)local_60);
  *param_1 = fVar2 * 0.0;
  param_1[1] = fVar2 * 1.0;
  param_1[2] = fVar2 * 0.0;
  param_1[3] = (float)fVar5;
  fVar2 = *(float *)((int)this + 0x194);
  fVar3 = *(float *)((int)this + 0x198);
  fVar4 = *(float *)((int)this + 0x19c);
  param_1[4] = *(float *)((int)this + 400);
  param_1[5] = fVar2;
  param_1[6] = fVar3;
  param_1[7] = fVar4;
  return;
}
