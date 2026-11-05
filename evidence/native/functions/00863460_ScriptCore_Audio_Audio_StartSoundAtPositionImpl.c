/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01167770 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Audio::Audio_StartSoundAtPositionImpl [assembly=ScriptCore token=0x060011D9; name:
   System.String, position: Sims3.SimIFace.Vector3; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.Audio::Audio_StartSoundAtPositionImpl
          (uint param_1,float param_2,undefined4 param_3,float param_4)

{
  int *piVar1;
  ushort *inputCodeUnits;
  undefined4 uVar2;
  void *this;
  void *this_00;
  int iVar3;
  int *piVar4;
  LotXZLevel LStack_118;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  float fVar5;
  undefined4 uVar6;
  uint uVar7;
  byte *pbVar8;
  float afStack_e0 [2];
  byte *pbStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_cc;
  undefined8 uStack_c8;
  undefined4 uStack_ac;
  float fStack_a8;
  undefined4 uStack_a4;
  float fStack_a0;
  float fStack_9c;
  byte abStack_94 [144];
  
  if ((DAT_011d9c40 == 0) || (piVar4 = (int *)(DAT_011d9c40 + -0x27bd0), piVar4 == (int *)0x0)) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar7 = 0x80;
  inputCodeUnits = (ushort *)(**(code **)(*piVar1 + 0x58))();
  uStack_108 = 0x8634ad;
  CodeUnits16_EncodeBoundedBytes(abStack_94,inputCodeUnits,param_1,uVar7);
  pbVar8 = abStack_94;
  uStack_c8 = (**(code **)(*piVar4 + 0x118))();
  uVar2 = (**(code **)(*piVar4 + 0x28))();
  fStack_a8 = param_2;
  uStack_a4 = param_3;
  fStack_a0 = param_4;
  fStack_9c = param_2;
  uStack_ac = uVar2;
  if (DAT_011edbc4 == (void *)0x0) {
    this = (void *)0x0;
  }
  else {
    this = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,param_2,param_4);
    if ((this != (void *)0x0) && (*(char *)((int)this + 0x444) != '\0')) {
      Lot_GetAttachedWorldQuaternionTranslation(this,afStack_e0 + -2);
    }
  }
  uVar6 = 0x3475365;
  (**(code **)(*piVar4 + 0x44))();
  uStack_108 = 0x3475381;
  uStack_10c = 0x8635e6;
  fVar5 = (float)uStack_c8;
  (**(code **)(*piVar4 + 0x50))();
  LStack_118.level = 0x3475385;
  LStack_118.z = 1.2325313e-38;
  uStack_10c = uVar2;
  (**(code **)(*piVar4 + 0x4c))();
  LStack_118.z = fVar5;
  uStack_d4 = 0xffffffff;
  LStack_118.x = 5.8576773e-37;
  fVar5 = LStack_118.z;
  pbStack_d8 = pbVar8;
  (**(code **)(*piVar4 + 0x48))();
  (**(code **)(*piVar4 + 0x48))(0x3475395,uStack_cc);
  (**(code **)(*piVar4 + 0x48))(0x3475398,uStack_108);
  if (this == (void *)0x0) {
    this_00 = (void *)0x0;
  }
  else {
    this_00 = *(void **)((int)this + 0x298);
  }
  if (this_00 != (void *)0x0) {
    LStack_118.x = -1.0;
    LStack_118.z = -1.0;
    LStack_118.level = 0;
    Lot_WorldPositionToLocalLocation(this,(float *)&pbStack_d8,&LStack_118);
    LotRoom_ResolveForLocalLocation(this_00,&LStack_118.x,0,1);
    iVar3 = LStack_118.level;
    uVar7 = Lot_TestNextLevelAtLocalLocation(this,&LStack_118,1);
    if ((char)uVar7 != '\0') {
      LStack_118.level = LStack_118.level + 1;
      iVar3 = iVar3 + 1;
      LotRoom_ResolveForLocalLocation(*(void **)((int)this + 0x298),&LStack_118.x,0,1);
    }
    (**(code **)(*piVar4 + 0x58))(0x2081b4e6,this);
    (**(code **)(*piVar4 + 0x48))(0x5dbed967,(float)(int)fVar5);
    (**(code **)(*piVar4 + 0x48))(0x39ff78d1,(float)iVar3);
  }
  (**(code **)(*piVar4 + 0x68))();
  return uVar6;
}

