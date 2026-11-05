/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original analyst note.
   ECX Steering plus context/descriptor words RET8, meaningfulALstatus. Calls932950(descriptor,6), whose actual3instructions store LOW16 to descriptor+4. Writes+94/+100/+E8, optional body-query06FAFAF6 pose via9524C0, +E0,bytes104/105,word106,+108 with successive stream status checks. E0/108 use FLD/FSTP into Float32 writer helper5662B0, not proof raw UInt32/NaN bit preservation. Source helper names alone do not establish full endian/primitive format; pose capture/restore and ignored auxiliary fields remain separate from host steering classification. */
bool __thiscall FUN_00952a80(void *this,void *param_1,void *param_2)

{
  byte bVar1;
  bool readSucceeded;
  int iVar2;
  int *piVar3;
  void *this_00;
  byte local_44;
  uint local_30 [7];
  float fStack_14;
  
  FUN_00932950(param_2,6);
  bVar1 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 0x94),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    bVar1 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x100),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    if (*(char *)((int)param_1 + 0x14) != '\0') {
      bVar1 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0xe8),
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar1);
      if (*(char *)((int)param_1 + 0x14) != '\0') {
        local_30[0] = 0;
        local_30[1] = 0;
        local_30[2] = 0;
        local_30[3] = 0;
        local_44 = 0;
        local_30[4] = 0;
        local_30[5] = 0;
        local_30[6] = 0;
        fStack_14 = 1.0;
        iVar2 = AnimationRenderState_GetWorldMatrices((int)this + 8);
        if (iVar2 != 0) {
          piVar3 = (int *)AnimationRenderState_GetWorldMatrices((int)this + 8);
          this_00 = (void *)(**(code **)(*piVar3 + 4))(0x6fafaf6);
          if (this_00 != (void *)0x0) {
            local_44 = 1;
            FUN_009524c0(this_00,local_30,local_30 + 4);
          }
        }
        readSucceeded = Stream_WriteBoolean(*(void **)((int)param_1 + 8),local_44);
        StreamReader_AccumulateStatus(param_1,readSucceeded);
        if (*(char *)((int)param_1 + 0x14) != '\0') {
          if (local_44 != 0) {
            FUN_007d7b90(param_1,local_30);
            if (*(char *)((int)param_1 + 0x14) == '\0') {
              return false;
            }
            FUN_007d7c50(param_1,local_30 + 4);
            if (*(char *)((int)param_1 + 0x14) == '\0') {
              return false;
            }
          }
          FUN_005662b0(param_1,*(undefined4 *)((int)this + 0xe0));
          if ((((*(char *)((int)param_1 + 0x14) != '\0') &&
               (StreamContext_WriteByte(param_1,*(byte *)((int)this + 0x104)),
               *(char *)((int)param_1 + 0x14) != '\0')) &&
              (StreamContext_WriteByte(param_1,*(byte *)((int)this + 0x105)),
              *(char *)((int)param_1 + 0x14) != '\0')) &&
             (FUN_005bee10(param_1,*(ushort *)((int)this + 0x106)),
             *(char *)((int)param_1 + 0x14) != '\0')) {
            FUN_005662b0(param_1,*(undefined4 *)((int)this + 0x108));
            return *(char *)((int)param_1 + 0x14) != '\0';
          }
        }
      }
    }
  }
  return false;
}

