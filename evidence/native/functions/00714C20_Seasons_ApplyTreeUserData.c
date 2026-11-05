/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_ApplyTreeUserData:


/* Analyst-assigned name. Applies successfully parsed tree user-data fields to template. Fall colors
   require color0 and absent or nonzero luminance0; default luminance1, fallback color1=color0.
   Variation copied only if supplied. Snow params admitted only when parsed Z!=0. Parser failure
   prevents this body from publishing its seasonal fields. */

void __thiscall Seasons_ApplyTreeUserData(void *this,byte *param_1)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  uint uVar3;
  undefined4 extraout_ECX;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  float local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  float fStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  char local_20;
  char local_1f;
  char local_1e;
  char local_1d;
  char local_1c;
  char local_1b;

  local_80 = 0.0;
  local_7c = 0;
  local_78 = 0;
  local_74 = 6;
  local_70 = 1;
  local_6c = 0;
  local_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  fStack_54 = 0.0;
  local_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  local_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  uStack_2c = 0;
  fStack_28 = 0.0;
  uStack_24 = 0;
  local_20 = '\0';
  local_1f = '\0';
  local_1e = '\0';
  local_1d = '\0';
  local_1c = '\0';
  local_1b = '\0';
  uVar3 = Seasons_ParseTreeUserDataFields(param_1,&local_80);
  if ((char)uVar3 != '\0') {
    *(undefined4 *)((int)this + 0x174) = local_7c;
    *(undefined4 *)((int)this + 0x17c) = local_78;
    *(float *)((int)this + 0x178) = local_80;
    *(undefined1 *)((int)this + 0x170) = 0;
    uVar4 = extraout_ECX;
    if ((local_20 != '\0') &&
       ((uVar4 = CONCAT31((int3)((uint)extraout_ECX >> 8),local_1e), local_1e == '\0' ||
        (auVar1._4_4_ = -(uint)(fStack_54 == 0.0), auVar1._0_4_ = -(uint)(fStack_54 == 0.0),
        auVar1._8_4_ = -(uint)(fStack_54 == 0.0), auVar1._12_4_ = -(uint)(fStack_54 == 0.0),
        iVar5 = movmskps(local_78,auVar1), iVar5 != 0xf)))) {
      *(undefined4 *)((int)this + 0x130) = local_60;
      *(undefined4 *)((int)this + 0x134) = *(undefined4 *)((int)this + 0x134);
      *(undefined4 *)((int)this + 0x138) = *(undefined4 *)((int)this + 0x138);
      *(undefined4 *)((int)this + 0x13c) = *(undefined4 *)((int)this + 0x13c);
      *(undefined4 *)((int)this + 0x130) = *(undefined4 *)((int)this + 0x130);
      *(undefined4 *)((int)this + 0x134) = uStack_5c;
      *(undefined4 *)((int)this + 0x138) = *(undefined4 *)((int)this + 0x138);
      *(undefined4 *)((int)this + 0x13c) = *(undefined4 *)((int)this + 0x13c);
      *(undefined4 *)((int)this + 0x130) = *(undefined4 *)((int)this + 0x130);
      *(undefined4 *)((int)this + 0x134) = *(undefined4 *)((int)this + 0x134);
      *(undefined4 *)((int)this + 0x138) = uStack_58;
      *(undefined4 *)((int)this + 0x13c) = *(undefined4 *)((int)this + 0x13c);
      if (local_1e == '\0') {
        fStack_54 = 1.0;
      }
      *(undefined4 *)((int)this + 0x130) = *(undefined4 *)((int)this + 0x130);
      *(undefined4 *)((int)this + 0x134) = *(undefined4 *)((int)this + 0x134);
      *(undefined4 *)((int)this + 0x138) = *(undefined4 *)((int)this + 0x138);
      *(float *)((int)this + 0x13c) = fStack_54;
      if (local_1f == '\0') {
        uVar6 = *(undefined4 *)((int)this + 0x130);
        uVar7 = *(undefined4 *)((int)this + 0x134);
        uVar8 = *(undefined4 *)((int)this + 0x138);
        uStack_44 = *(undefined4 *)((int)this + 0x13c);
      }
      else {
        *(undefined4 *)((int)this + 0x140) = local_50;
        *(undefined4 *)((int)this + 0x144) = *(undefined4 *)((int)this + 0x144);
        *(undefined4 *)((int)this + 0x148) = *(undefined4 *)((int)this + 0x148);
        *(undefined4 *)((int)this + 0x14c) = *(undefined4 *)((int)this + 0x14c);
        *(undefined4 *)((int)this + 0x140) = *(undefined4 *)((int)this + 0x140);
        *(undefined4 *)((int)this + 0x144) = uStack_4c;
        *(undefined4 *)((int)this + 0x148) = *(undefined4 *)((int)this + 0x148);
        *(undefined4 *)((int)this + 0x14c) = *(undefined4 *)((int)this + 0x14c);
        *(undefined4 *)((int)this + 0x140) = *(undefined4 *)((int)this + 0x140);
        *(undefined4 *)((int)this + 0x144) = *(undefined4 *)((int)this + 0x144);
        *(undefined4 *)((int)this + 0x148) = uStack_48;
        *(undefined4 *)((int)this + 0x14c) = *(undefined4 *)((int)this + 0x14c);
        if (local_1d == '\0') {
          uStack_44 = 0x3f800000;
        }
        uVar6 = *(undefined4 *)((int)this + 0x140);
        uVar7 = *(undefined4 *)((int)this + 0x144);
        uVar8 = *(undefined4 *)((int)this + 0x148);
      }
      *(undefined4 *)((int)this + 0x140) = uVar6;
      *(undefined4 *)((int)this + 0x144) = uVar7;
      *(undefined4 *)((int)this + 0x148) = uVar8;
      *(undefined4 *)((int)this + 0x14c) = uStack_44;
      if (local_1c != '\0') {
        *(undefined4 *)((int)this + 0x150) = local_40;
        *(undefined4 *)((int)this + 0x154) = uStack_3c;
        *(undefined4 *)((int)this + 0x158) = uStack_38;
        *(undefined4 *)((int)this + 0x15c) = uStack_34;
      }
      *(undefined1 *)((int)this + 0x170) = 1;
    }
    *(undefined1 *)((int)this + 0x171) = 0;
    if ((local_1b != '\0') &&
       (auVar2._4_4_ = -(uint)(fStack_28 == 0.0), auVar2._0_4_ = -(uint)(fStack_28 == 0.0),
       auVar2._8_4_ = -(uint)(fStack_28 == 0.0), auVar2._12_4_ = -(uint)(fStack_28 == 0.0),
       iVar5 = movmskps(uVar4,auVar2), iVar5 != 0xf)) {
      *(undefined4 *)((int)this + 0x160) = local_30;
      *(undefined4 *)((int)this + 0x164) = uStack_2c;
      *(float *)((int)this + 0x168) = fStack_28;
      *(undefined4 *)((int)this + 0x16c) = uStack_24;
      *(undefined1 *)((int)this + 0x171) = 1;
    }
  }
  return;
}


