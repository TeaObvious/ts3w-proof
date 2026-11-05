/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing polygon contract): Analyst name. ECX36-byte polygonrecord; two
   physicalslotsRET8, streamused and suppliedserializerVersionunused. Clear/reserve rings,
   readUInt32ringcount, per-ringUInt32vertexcount and exact32-bitX/Zlanes, then four
   storedAABBwords+10..+1C and Boolean+20. Count loopsunsigned. InstructionCMP
   magnitude0x47800000/JNC clearsALLfourbounds when EITHER minimumlane magnitude>=65536,
   equivalently unsignedbits>477FFFFF; maximumlanes are not checked by that predicate. ReturnAL
   contextstatus. InferredUInt32 pointer/float aliases do not certify extra semantic clamps. */

byte __thiscall RoutingPolygon_ReadRingsAndBounds(void *this,void *stream,uint serializerVersion)

{
  int *piVar1;
  int iVar2;
  uint *puVar3;
  bool bVar4;
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint *local_24;
  uint local_20;
  uint *local_1c;
  void *local_18;
  undefined4 local_14;
  undefined4 local_10;
  char *local_c;
  
  local_34 = 0;
  bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),&local_34,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar4);
  FUN_006223a0(this);
  FUN_0080ba20(this,local_34);
  local_2c = 0;
  if (local_34 != 0) {
    do {
      piVar1 = *(int **)((int)this + 4);
      if (piVar1 < *(int **)((int)this + 8)) {
        *(int **)((int)this + 4) = piVar1 + 4;
        if (piVar1 != (int *)0x0) {
          *piVar1 = 0;
          piVar1[1] = 0;
          piVar1[2] = 0;
          piVar1[3] = (int)"Routing/PathPlan/FootprintPoly";
        }
      }
      else {
        local_18 = (void *)0x0;
        local_14 = 0;
        local_10 = 0;
        local_c = "Routing/PathPlan/FootprintPoly";
        FUN_00808140(this,piVar1,(int *)&local_18);
        if (local_18 != (void *)0x0) {
          Memory_FreeIfNonNull(local_18);
        }
      }
      iVar2 = *(int *)((int)this + 4);
      local_38 = 0;
      bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),&local_38,*(uint *)((int)stream + 0x10))
      ;
      StreamReader_AccumulateStatus(stream,bVar4);
      FUN_00818ea0((void *)(iVar2 + -0x10),local_38);
      local_30 = 0;
      if (local_38 != 0) {
        do {
          bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),&local_28,
                                    *(uint *)((int)stream + 0x10));
          StreamReader_AccumulateStatus(stream,bVar4);
          bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&local_24,
                                    *(uint *)((int)stream + 0x10));
          StreamReader_AccumulateStatus(stream,bVar4);
          puVar3 = *(uint **)(iVar2 + -0xc);
          local_20 = local_28;
          local_1c = local_24;
          if (puVar3 < *(uint **)(iVar2 + -8)) {
            *(uint **)(iVar2 + -0xc) = puVar3 + 2;
            if (puVar3 != (uint *)0x0) {
              *puVar3 = local_28;
              puVar3[1] = (uint)local_24;
            }
          }
          else {
            FUN_00405c10((void *)(iVar2 + -0x10),puVar3,&local_20);
          }
          local_30 = local_30 + 1;
        } while (local_30 < local_38);
      }
      local_2c = local_2c + 1;
    } while (local_2c < local_34);
  }
  puVar3 = (uint *)((int)this + 0x10);
  bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),puVar3,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar4);
  local_24 = (uint *)((int)this + 0x14);
  bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),local_24,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar4);
  bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 0x18),
                            *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar4);
  bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 0x1c),
                            *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar4);
  bVar4 = Stream_ReadBoolean(*(void **)((int)stream + 8),(void *)((int)this + 0x20));
  StreamReader_AccumulateStatus(stream,bVar4);
  if ((0x477fffff < (*puVar3 & 0x7fffffff)) || (0x477fffff < (*local_24 & 0x7fffffff))) {
    *puVar3 = 0;
    *(undefined4 *)((int)this + 0x14) = 0;
    *(undefined4 *)((int)this + 0x18) = 0;
    *(undefined4 *)((int)this + 0x1c) = 0;
  }
  return *(byte *)((int)stream + 0x14);
}

