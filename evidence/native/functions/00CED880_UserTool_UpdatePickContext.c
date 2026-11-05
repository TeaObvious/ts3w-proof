/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX tool, four stack words, RET10hex. Complete pick/fallback flow publishes current context
   at+38/+3C/+40/+44 and boundary flags; it does not store object-tool raw anchor+B8. PressD07300
   calls this before copying existing raw anchor. Virtual pick and tool boundary hooks remain
   dynamic. */

void __thiscall
UserTool_UpdatePickContext
          (void *this,undefined4 param_1,int param_2,int param_3,undefined4 *param_4)

{
  undefined1 uVar1;
  char cVar2;
  void *pvVar3;
  undefined4 uVar4;
  int iVar5;
  char unaff_SI;
  int unaff_EDI;
  undefined4 *puVar6;
  undefined4 uStack_b0;
  float *pfStack_ac;
  float fStack_a8;
  float fStack_a4;
  undefined4 local_90;
  float local_8c;
  float local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined1 local_7c;
  undefined1 local_7b;
  undefined1 local_7a;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  float local_6c;
  undefined1 local_68;
  undefined1 local_67;
  undefined1 local_66;
  
  local_90 = 0;
  local_8c = FLOAT_00fab218;
  local_88 = FLOAT_00fab218;
  local_84 = 0;
  local_80._0_1_ = 0;
  local_80._1_1_ = 1;
  local_80._2_1_ = 1;
  local_7b = 0;
  local_7a = 0;
  local_78 = 0;
  local_74 = 0;
  local_70 = 0;
  local_6c = 0.0;
  local_68 = 0;
  local_67 = 0;
  local_66 = 0;
  if (param_4 != (undefined4 *)0x0) {
    puVar6 = &local_80;
    for (iVar5 = 8; iVar5 != 0; iVar5 = iVar5 + -1) {
      *puVar6 = *param_4;
      param_4 = param_4 + 1;
      puVar6 = puVar6 + 1;
    }
  }
  if (*(char *)((int)this + 0x48) != '\0') {
    local_78 = *(undefined4 *)((int)this + 0x4c);
    local_7b = 1;
  }
  local_7c = *(undefined1 *)((int)this + 0x4a);
  local_80._3_1_ = *(undefined1 *)((int)this + 0x49);
  fStack_a4 = 0.0;
  fStack_a8 = 0.0;
  pfStack_ac = &local_8c;
  cVar2 = (**(code **)(*(int *)this + 0x48))(param_2,param_3,&local_80);
  uStack_b0._3_1_ = (char)((uint)&local_90 >> 0x18);
  uVar1 = uStack_b0._3_1_;
  uStack_b0 = (uint)CONCAT11(uStack_b0._3_1_,cVar2) << 0x10;
  if (cVar2 != '\0') {
    if (*(float **)((int)this + 0xc) != (float *)0x0) {
      uStack_b0 = (uint)CONCAT11(uVar1,*(float **)((int)this + 0xc) == pfStack_ac) << 0x10;
    }
    if (uStack_b0._2_1_ != '\0') {
      if ((*(char *)((int)this + 0x48) == '\0') && (unaff_EDI < *(int *)((int)this + 0x50))) {
        cVar2 = (**(code **)(*(int *)this + 0x48))
                          (param_2,param_3,&stack0xffffff64,&pfStack_ac,&fStack_a8,0,0);
        uVar1 = uStack_b0._3_1_;
        uStack_b0 = (uint)CONCAT11(uStack_b0._3_1_,cVar2) << 0x10;
        if (cVar2 == '\0') goto LAB_00ced9b0;
        if (*(float **)((int)this + 0xc) != (float *)0x0) {
          uStack_b0 = (uint)CONCAT11(uVar1,*(float **)((int)this + 0xc) == pfStack_ac) << 0x10;
        }
      }
      if (uStack_b0._2_1_ != '\0') goto LAB_00ceda71;
    }
  }
LAB_00ced9b0:
  if ((*(char *)((int)this + 0x37) != '\0') && (cVar2 = FUN_00cced20(), cVar2 != '\0')) {
    Lot_WorldPositionToPortalLocalXZLevel
              (*(void **)((int)this + 0xc),&local_7c,(TS3WPortalXZLevel *)&fStack_a8);
    pfStack_ac = *(float **)((int)this + 0xc);
    unaff_EDI = unaff_EDI + 1;
    uStack_b0 = CONCAT13(1,(undefined3)uStack_b0);
  }
  if ((uStack_b0._2_1_ == '\0') && (uStack_b0._3_1_ == '\0')) {
    if (unaff_SI != '\0') {
      pvVar3 = (void *)0x0;
      if (local_8c != 0.0 || local_88 != 0.0) {
        pvVar3 = ObjectRegistry_GetGlobal();
        pvVar3 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(local_88,local_8c));
      }
      uVar4 = FUN_00ccf390(this,param_2,param_3,&local_6c,(int)pvVar3,(char)local_84,(float *)0x0,
                           (float *)0x0);
      if ((char)uVar4 != '\0') {
        (**(code **)(*(int *)this + 0x70))(&local_6c);
      }
    }
    if (*(char *)((int)this + 0x34) == '\0') {
      return;
    }
    (**(code **)(*(int *)this + 0x6c))();
    *(undefined1 *)((int)this + 0x34) = 0;
    return;
  }
LAB_00ceda71:
  if (*(char *)((int)this + 0x34) == '\0') {
    (**(code **)(*(int *)this + 0x68))();
    *(undefined1 *)((int)this + 0x34) = 1;
  }
  *(float *)((int)this + 0x3c) = fStack_a8;
  *(float **)((int)this + 0x38) = pfStack_ac;
  *(float *)((int)this + 0x40) = fStack_a4;
  *(int *)((int)this + 0x44) = unaff_EDI;
  *(undefined1 *)((int)this + 0x35) = 1;
  *(char *)((int)this + 0x36) = uStack_b0._3_1_;
  return;
}

