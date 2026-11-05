/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 source-room query. Obtain source position through target virtual+24, query the already
   bound partition using X/Z. Absent service/pointee preserves room+1C and caller byte. Null query
   writes room0 but preserves the byte. Nonnull query copies record+0C and writes only CEBF30 AL
   into the caller byte. Physical RET4/void; incidental EAX is not a Boolean query result. CEBF30
   predicate meaning and source-list admission are not established here. Decompiler fStack_44 is a
   stack-alias projection, not a proven uninitialized input; Listing copies the returned16-byte
   buffer and passes X/Z. */

void __thiscall LightInterest_QuerySourceRoomRecord(void *this,undefined1 *param_1)

{
  int *piVar1;
  undefined1 uVar2;
  int iVar3;
  float fStack_44;
  undefined4 local_40;
  float fStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_30;
  float fStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_20;
  float fStack_1c;
  undefined4 uStack_18;
  
  (**(code **)(**(int **)((int)this + 0x24) + 0x24))(&local_40);
  piVar1 = *(int **)((int)this + 0x14);
  if ((piVar1 != (int *)0x0) && (*piVar1 != 0)) {
    uStack_30 = local_40;
    fStack_2c = fStack_3c;
    uStack_28 = uStack_38;
    uStack_20 = local_40;
    fStack_1c = fStack_3c;
    uStack_18 = uStack_38;
    iVar3 = RoomPartition_QueryWorldXZ((void *)*piVar1,fStack_44,fStack_3c);
    if (iVar3 != 0) {
      *(undefined4 *)((int)this + 0x1c) = *(undefined4 *)(iVar3 + 0xc);
      uVar2 = FUN_00cebf30(iVar3);
      *param_1 = uVar2;
      return;
    }
    *(undefined4 *)((int)this + 0x1c) = 0;
  }
  return;
}

