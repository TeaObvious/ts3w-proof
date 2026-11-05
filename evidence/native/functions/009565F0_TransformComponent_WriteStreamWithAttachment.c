/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX Transform receiver; physical RET8 cleans two
   stack words, although the existing inferred C exposes only the writer word at entryESP+4.
   Second-word role is not established. Writes position from+20h and quaternion from+10h,
   queries956340 for parent point/mode/occupancy, and writes parentGUID. A nonzero parent with
   point0 is serialized as parent0. For nonzero parent writes pointDWORD, then independent occupant
   Boolean, then bone-mode Boolean; returns accumulated writer status byte+14h. Physical caller
   pointers bind first query output to bone mode and second to occupancy. High EAX is not the
   Boolean contract. */

undefined1 __thiscall TransformComponent_WriteStreamWithAttachment(void *this,void *param_1)

{
  void *this_00;
  byte bVar1;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  FUN_007d7b90(param_1,(uint *)((int)this + 0x20));
  FUN_007d7c50(this_00,(uint *)((int)this + 0x10));
  iVar4 = 0;
  iVar5 = 0;
  param_1 = (void *)0x0;
  local_8 = local_8 & 0xffffff00;
  local_4 = local_4 & 0xffffff00;
  uVar3 = TransformComponent_QueryParentPointAndFlags
                    (this,(char *)&local_4,(undefined1 *)&local_8,(int *)&param_1);
  if ((char)uVar3 != '\0') {
    iVar5 = *(int *)(*(int *)((int)this + 0x30) + 8);
    iVar4 = *(int *)(*(int *)((int)this + 0x30) + 0xc);
    if ((iVar5 != 0 || iVar4 != 0) && (param_1 == (void *)0x0)) {
      iVar5 = 0;
      iVar4 = 0;
    }
  }
  bVar1 = FUN_004de0c0(*(int **)((int)this_00 + 8),CONCAT44(iVar4,iVar5),
                       *(int *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  if (iVar5 != 0 || iVar4 != 0) {
    bVar1 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),(uint)param_1,
                               *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
    bVar2 = Stream_WriteBoolean(*(void **)((int)this_00 + 8),(byte)local_8);
    StreamReader_AccumulateStatus(this_00,bVar2);
    bVar2 = Stream_WriteBoolean(*(void **)((int)this_00 + 8),(byte)local_4);
    StreamReader_AccumulateStatus(this_00,bVar2);
  }
  return *(undefined1 *)((int)this_00 + 0x14);
}

