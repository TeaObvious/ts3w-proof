/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Cdecl reader,key context,output preset. Require
   status and non-null context/output. Admitversion1/2, readsubsort andUInt32 outer extent; size0
   publishes empty preset. Otherwise seek suffix, readUInt8count, check2*count bytes and resolve
   UInt16handles. Restore body start, read42 block with external resolved keys, then restore
   suffix-end. Failed loads release retained preset; onlyALsuccess.
   
   Saved header consumer closure: allocation60hex, constructor005BFAC0 returns preset EAX
   at005C015F. Unsigned(version-1)<=1 accepts1/2; reads nextUInt32 DIRECTLY into preset+5C
   at005C0195..19B, then reads body-size. When size0, publishes the allocated preset to output and
   returns AL1 at005C01B3..1BE: saved subsort is retained even without complate body. Fixed envelope
   header is12bytes; enclosing lot Section2 adds2byte handle. Remaining indirect key-context/stream
   C aliases require instruction review; this plate establishes bounded field/header semantics, not
   full parser equivalence. */

byte __cdecl Preset_ReadContextEnvelope(void *param_1,void *param_2,undefined4 *param_3)

{
  void *this;
  void *this_00;
  undefined4 *puVar1;
  bool bVar2;
  void *this_01;
  int *this_02;
  uint uVar3;
  int offset;
  byte bVar4;
  int *piVar5;
  char *pcStack_24;
  uint uStack_20;
  uint uStack_1c;
  int iStack_18;
  int *local_14;
  void *apvStack_10 [4];
  
  puVar1 = param_3;
  this_00 = param_2;
  this = param_1;
  if (((*(char *)((int)param_1 + 0x14) == '\0') || (param_3 == (undefined4 *)0x0)) ||
     (param_2 == (void *)0x0)) {
    return 0;
  }
  this_01 = (void *)FUN_004e4500(0x60,"CAS/DesignModePresetResource/CreateFromStream",0);
  if (this_01 == (void *)0x0) {
    this_02 = (int *)0x0;
  }
  else {
    this_02 = (int *)DesignPreset_InitializeEmpty(this_01);
  }
  if (this_02 == (int *)0x0) {
    return 0;
  }
  local_14 = this_02;
  (**(code **)*this_02)();
  StreamReader_ReadUInt32Into(this,&uStack_1c);
  if (uStack_1c - 1 < 2) {
    StreamReader_ReadUInt32Into(this,(uint *)(this_02 + 0x17));
    StreamReader_ReadUInt32Into(this,&uStack_20);
    if (uStack_20 == 0) {
      *puVar1 = this_02;
      return 1;
    }
    iStack_18 = StreamContext_GetPositionAndMarkNegative(this);
    StreamContext_SeekWithSignedAbsoluteGuard(this,iStack_18 + uStack_20,0);
    if (*(char *)((int)this + 0x14) != '\0') {
      StreamReader_ReadByteInto(this,(uchar *)&param_1);
      bVar2 = StreamReader_CheckArrayBytes(this,(uint)param_1 & 0xff,2);
      if (!bVar2) {
        (**(code **)(*this_02 + 4))();
        return 0;
      }
      pcStack_24 = "CAS/DesignModePresetResource/CreateFromStream";
      FUN_007d9500(apvStack_10,&pcStack_24);
      FUN_007998a0(apvStack_10,(uint)param_1 & 0xff);
      bVar4 = 0;
      if ((byte)param_1 != '\0') {
        do {
          FUN_0056d0e0(this,(ushort *)&pcStack_24);
          uVar3 = ResourceReferences_ResolveNarrowHandle
                            (this_00,(ushort *)&pcStack_24,
                             (undefined4 *)((uint)bVar4 * 0x10 + (int)apvStack_10[0]));
          if ((char)uVar3 == '\0') {
            if (apvStack_10[0] != (void *)0x0) {
              Memory_FreeIfNonNull(apvStack_10[0]);
            }
            goto LAB_005c02c3;
          }
          bVar4 = bVar4 + 1;
        } while (bVar4 < (byte)param_1);
      }
      offset = StreamContext_GetPositionAndMarkNegative(this);
      StreamContext_SeekWithSignedAbsoluteGuard(this,iStack_18,0);
      bVar4 = Preset_ReadBinaryBlock(this_02,this,(int *)apvStack_10);
      StreamContext_SeekWithSignedAbsoluteGuard(this,offset,0);
      bVar4 = bVar4 & *(byte *)((int)this + 0x14);
      piVar5 = local_14;
      if (bVar4 != 0) {
        *param_3 = this_02;
        piVar5 = (int *)0x0;
      }
      if (apvStack_10[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_10[0]);
      }
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 4))();
      }
      return bVar4;
    }
  }
LAB_005c02c3:
  (**(code **)(*this_02 + 4))();
  return 0;
}

