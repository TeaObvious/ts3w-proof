/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  int *piVar3;
  uint uVar4;
  int offset;
  byte bVar5;
  uint uVar6;
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
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)DesignPreset_InitializeEmpty(this_01);
  }
  if (piVar3 == (int *)0x0) {
    return 0;
  }
  local_14 = piVar3;
  (**(code **)*piVar3)();
  StreamReader_ReadUInt32Into(this,&uStack_1c);
  if (uStack_1c - 1 < 2) {
    StreamReader_ReadUInt32Into(this,(uint *)(piVar3 + 0x17));
    StreamReader_ReadUInt32Into(this,&uStack_20);
    if (uStack_20 == 0) {
      *puVar1 = piVar3;
      return 1;
    }
    iStack_18 = StreamContext_GetPositionAndMarkNegative(this);
    StreamContext_SeekWithSignedAbsoluteGuard(this,iStack_18 + uStack_20,0);
    if (*(char *)((int)this + 0x14) != '\0') {
      StreamReader_ReadByteInto(this,(uchar *)&param_1);
      bVar2 = StreamReader_CheckArrayBytes(this,(uint)param_1 & 0xff,2);
      if (!bVar2) {
        (**(code **)(*piVar3 + 4))();
        return 0;
      }
      pcStack_24 = "CAS/DesignModePresetResource/CreateFromStream";
      FUN_007d9500(apvStack_10,&pcStack_24);
      FUN_007998a0(apvStack_10,(uint)param_1 & 0xff);
      uVar6 = 0;
      if ((byte)param_1 != '\0') {
        do {
          ReadUInt16AndAccumulateStatus(this,(ushort *)&pcStack_24);
          uVar4 = ResourceReferences_ResolveNarrowHandle
                            (this_00,(ushort *)&pcStack_24,
                             (undefined4 *)(uVar6 * 0x10 + (int)apvStack_10[0]));
          if ((char)uVar4 == '\0') {
            if (apvStack_10[0] != (void *)0x0) {
              Memory_FreeIfNonNull(apvStack_10[0]);
            }
            goto LAB_005c02c3;
          }
          bVar5 = (char)uVar6 + 1;
          uVar6 = (uint)bVar5;
        } while (bVar5 < (byte)param_1);
      }
      offset = StreamContext_GetPositionAndMarkNegative(this);
      StreamContext_SeekWithSignedAbsoluteGuard(this,iStack_18,0);
      bVar5 = Preset_ReadBinaryBlock(piVar3,this,(int *)apvStack_10);
      StreamContext_SeekWithSignedAbsoluteGuard(this,offset,0);
      bVar5 = bVar5 & *(byte *)((int)this + 0x14);
      if (bVar5 == 0) {
        piVar3 = local_14;
      }
      else {
        *param_3 = piVar3;
        piVar3 = (int *)0x0;
      }
      if (apvStack_10[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_10[0]);
      }
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 4))();
      }
      return bVar5;
    }
  }
LAB_005c02c3:
  (**(code **)(*piVar3 + 4))();
  return 0;
}

