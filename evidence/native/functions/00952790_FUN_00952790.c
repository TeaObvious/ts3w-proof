/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original analyst note.
   ECX Steering component plus stream-context and component-descriptor stackwords, RET8; lowAL only is Boolean, not normalized upperEAX. Version is UInt16 descriptor+4:0 skips; otherwise local32 read, six-case table at952A64 accepts0..5 into+94; unsigned>5 preserves existing+94. Kind2 also owner-dependentB03460->+DC. Stream status checked AFTER state-switch, no rollback. >=5+100,>=4+E8 else legacy93D700/5ECCD0 derivation;>=2 optional pose then component+8 virtual30;>=3+E0 andzero+E4;>=6 bytes104/105,word106,word108 via existing helpers. Full pose/body/resource/primitive codec/lifetime open; C local pointers/in_EAX are not semantic state types. */
uint __thiscall FUN_00952790(void *this,void *param_1,int param_2)

{
  bool bVar1;
  void *in_EAX;
  void *extraout_EAX;
  void *this_00;
  void *extraout_EAX_00;
  void *extraout_EAX_01;
  void *extraout_EAX_02;
  void *extraout_EAX_03;
  void *extraout_EAX_04;
  char local_39;
  void *local_38;
  void *local_34;
  uint local_30 [11];
  
  if (*(short *)(param_2 + 4) == 0) goto LAB_00952a58;
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_34,
                            *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  in_EAX = local_34;
  switch(local_34) {
  case (void *)0x0:
    *(undefined4 *)((int)this + 0x94) = 0;
    break;
  case (void *)0x1:
    *(undefined4 *)((int)this + 0x94) = 1;
    break;
  case (void *)0x2:
    *(undefined4 *)((int)this + 0x94) = 2;
    in_EAX = (void *)0x0;
    if (*(void **)((int)this + 4) != (void *)0x0) {
      in_EAX = (void *)FUN_00b03460(*(void **)((int)this + 4));
      *(char *)((int)this + 0xdc) = (char)in_EAX;
    }
    break;
  case (void *)0x3:
    *(undefined4 *)((int)this + 0x94) = 3;
    break;
  case (void *)0x4:
    *(undefined4 *)((int)this + 0x94) = 4;
    break;
  case (void *)0x5:
    *(undefined4 *)((int)this + 0x94) = 5;
  }
  if (*(char *)((int)param_1 + 0x14) == '\0') goto LAB_0095283e;
  if (4 < *(ushort *)(param_2 + 4)) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0x100),
                              *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    in_EAX = extraout_EAX;
    if (*(char *)((int)param_1 + 0x14) == '\0') goto LAB_0095283e;
  }
  if (*(ushort *)(param_2 + 4) < 4) {
    if (*(void **)((int)this + 4) == (void *)0x0) {
      this_00 = (void *)0x0;
    }
    else {
      this_00 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011dd484);
    }
    in_EAX = (void *)FUN_005ebac0();
    local_38 = in_EAX;
    if ((this_00 != (void *)0x0) && (in_EAX != (void *)0x0)) {
      local_30[0] = 0;
      local_30[1] = 0;
      local_30[2] = 0;
      local_30[3] = 0;
      FUN_0093d700(this_00,local_30);
      in_EAX = (void *)FUN_005eccd0(local_38,(int *)local_30);
      *(void **)((int)this + 0xe8) = in_EAX;
      goto LAB_009528fb;
    }
  }
  else {
    bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)((int)this + 0xe8),
                              *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    in_EAX = *(void **)((int)this + 0xe8);
LAB_009528fb:
    *(void **)(*(int *)((int)this + 0x10c) + 0xb8) = in_EAX;
  }
  if (1 < *(ushort *)(param_2 + 4)) {
    local_39 = '\0';
    bVar1 = Stream_ReadBoolean(*(void **)((int)param_1 + 8),&local_39);
    StreamReader_AccumulateStatus(param_1,bVar1);
    in_EAX = extraout_EAX_00;
    if (*(char *)((int)param_1 + 0x14) == '\0') goto LAB_0095283e;
    if (local_39 != '\0') {
      in_EAX = (void *)FUN_007d7b60(param_1,local_30 + 4);
      if ((*(char *)((int)param_1 + 0x14) == '\0') ||
         (in_EAX = (void *)FUN_007d7c20(param_1,local_30), *(char *)((int)param_1 + 0x14) == '\0'))
      goto LAB_0095283e;
      in_EAX = (void *)(**(code **)(*(int *)((int)this + 8) + 0x30))(local_30 + 4,local_30);
    }
  }
  if (2 < *(ushort *)(param_2 + 4)) {
    if (*(char *)((int)param_1 + 0x14) == '\0') goto LAB_0095283e;
    local_38 = (void *)0x0;
    StreamReader_ReadUInt32Into(param_1,(uint *)&local_38);
    in_EAX = extraout_EAX_01;
    if (*(char *)((int)param_1 + 0x14) == '\0') goto LAB_0095283e;
    *(void **)((int)this + 0xe0) = local_38;
    *(undefined4 *)((int)this + 0xe4) = 0;
  }
  if (*(int *)((int)this + 0x10c) != 0) {
    in_EAX = (void *)0x0;
    if ((*(int *)((int)this + 0xe8) != 0) &&
       (in_EAX = (void *)FUN_0055dd90(*(int *)((int)this + 0xe8)), (char)in_EAX == '\0')) {
      in_EAX = (void *)FUN_00952520((int)this);
    }
  }
  if ((*(ushort *)(param_2 + 4) < 6) ||
     ((((StreamReader_ReadByteInto(param_1,(uchar *)((int)this + 0x104)), in_EAX = extraout_EAX_02,
        *(char *)((int)param_1 + 0x14) != '\0' &&
        (StreamReader_ReadByteInto(param_1,(uchar *)((int)this + 0x105)), in_EAX = extraout_EAX_03,
        *(char *)((int)param_1 + 0x14) != '\0')) &&
       (in_EAX = (void *)FUN_0056d0e0(param_1,(ushort *)((int)this + 0x106)),
       *(char *)((int)param_1 + 0x14) != '\0')) &&
      (StreamReader_ReadUInt32Into(param_1,(uint *)((int)this + 0x108)), in_EAX = extraout_EAX_04,
      *(char *)((int)param_1 + 0x14) != '\0')))) {
LAB_00952a58:
    return CONCAT31((int3)((uint)in_EAX >> 8),1);
  }
LAB_0095283e:
  return (uint)in_EAX & 0xffffff00;
}

