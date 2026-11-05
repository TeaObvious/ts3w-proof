/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67 object sound admission. ECX=Audio component; byte name/flags/related
   object/existing sound id RET16, UInt32 EAX (0 rejected). Only flag bits0/1 used. Missing global
   interface rejects. If both bits clear, owner Transform and camera exist: SSE squared range is
   (dz*dz+dy*dy)+dx*dx with each original lane operation; ordered COMISS/JA rejects only greater
   than FLOAT32 at104465C, equality and unordered do not take that branch. Case-sensitive byte
   PREFIX comparisons vo_(3) and base_tv(7), not whole-name/case-folded matches. Speed global==3
   with vo prefix and ANY nonempty component row list rejects; unsigned row count>=8 rejects. Rows
   are20bytes, not necessarily backend-started voices. Inactive byte4C==0 AND not base_tv: both bits
   clear rejects; else reuse/nonzero allocate id, construct/append name row, OR80000000 for vo,
   return id WITHOUT command configuration/submission. Ordinary branch configures shared interface
   context and submits virtual68 before row append, without observing start success. Row name
   retained only for flagbit0; otherwise empty. OR80000000 for vo and OR40000000 for base_tv OR
   flagbit1 (943350 reachable; earlier unreachable warning was wrong virtual-call stack ABI). Packed
   low30-bit mask is applied by readers, not a newly proved allocator limit. Speed1/2 vo ordinary
   start stops mask80000000 on existing rows before appending itself. Float command arguments are
   actual x87 FSTP/SSE FLOAT32 values, not lost stack parameters. Room signed16 and owner identifier
   use NUMERIC CVTSI2SS; owner word18 is kept bit-for-bit EXCEPT exact7FFFFFFF maps0, not a min/max
   clamp; do not reinterpret those integers as float bits. Scoped virtual-call prototypes render
   only the callee-popped stack words using a stack-only stdcall override; the actual receiver is
   ECX, so these overrides do not establish stdcall source declarations. Full backend
   implementation, complete room/camera lifetimes, event thread/order and handle allocator domain
   remain unexpanded.
   
   Aligned-ESP/indirect-call recovery still leaves artifacts in actual C: unaff_* GUID words, flag
   booleans merged with unrelated locals, a Transform receiver rendered as this, handle replaced by
   a local pointer and float/int casts. Original physical arguments govern: virtual50 at942F35
   receives PID03475381 and TWO ZERO DWORDs;942F75 PID13F18A1F,owner+8 low,owner+C high;942F92
   PID6BF16A1E,related+8 low,related+C high. 942F5C receives PID0347538C and normalized request
   flags bit0. 943078 receiver is retained Transform component, NOT Audio component.
   vo/base_tv/request booleans are the explicit tested bytes at ESP10..13, not uninitialized values.
   EDI saved sound handle at ESP18 is reloaded before submission/tail and returned unchanged.
   Position float casts and vector copies are raw lane bits; only the noted room/identifier CVTSI2SS
   are numeric conversions. These actual-C artifacts are not original undefined-value behavior. */

uint __thiscall
ObjectSound_StartWithAdmissionChecks
          (void *this,byte *soundNameBytes,uint flags,void *relatedObject,uint existingSoundId)

{
  void *this_00;
  void *pvVar1;
  bool bVar2;
  short sVar3;
  int iVar4;
  int iVar5;
  int *this_01;
  int *arg1;
  undefined4 uVar6;
  undefined4 unaff_EBX;
  undefined4 unaff_ESI;
  int *piVar7;
  uint unaff_EDI;
  uint uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined4 local_7c;
  char cStack_74;
  char cStack_73;
  char cStack_72;
  char cStack_71;
  int local_70;
  int iStack_68;
  int *local_60;
  int *piStack_5c;
  int *piStack_58;
  int *piStack_54;
  void *local_50;
  void *pvStack_4c;
  int iStack_48;
  int *piStack_44;
  void *pvStack_40;
  void *pvStack_3c;
  int iStack_38;
  undefined1 auStack_24 [32];
  
  if ((DAT_011d9c40 == 0) || (piVar7 = (int *)(DAT_011d9c40 + -0x27bd0), piVar7 == (int *)0x0)) {
    return 0;
  }
  if (*(void **)((int)this + 4) == (void *)0x0) {
    local_7c = (void *)0x0;
  }
  else {
    local_7c = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea158);
  }
  if (((((flags & 1) == 0) && ((flags >> 1 & 1) == 0)) && (local_7c != (void *)0x0)) &&
     (iVar4 = FUN_0096a050(), iVar4 != 0)) {
    FUN_00958070(local_7c,(float *)&local_60);
    fVar9 = (float)local_60 - *(float *)(iVar4 + 0x60);
    fVar10 = (float)piStack_5c - *(float *)(iVar4 + 100);
    fVar11 = (float)piStack_58 - *(float *)(iVar4 + 0x68);
    local_60 = (int *)(fVar11 * fVar11 + fVar10 * fVar10 + fVar9 * fVar9);
    piStack_5c = local_60;
    piStack_58 = local_60;
    piStack_54 = local_60;
                    /* SSE (dz^2+dy^2)+dx^2 compared against float word104465C. JA means ordered
                       strictly greater; NaN/equality do not reject here. */
    if (40000.0 < (float)local_60) {
      return 0;
    }
  }
  pvVar1 = DAT_011cedb4;
  iVar4 = BytePrefix_CompareCaseSensitive(soundNameBytes,(byte *)&PTR_LAB_01044658,3);
  iVar5 = BytePrefix_CompareCaseSensitive(soundNameBytes,(byte *)"base_tv",7);
  if (((pvVar1 == (void *)0x3) && (iVar4 == 0)) &&
     (*(int *)((int)this + 0x20) != *(int *)((int)this + 0x24))) {
    return 0;
  }
  this_00 = (void *)((int)this + 0x20);
  if (7 < (uint)((*(int *)((int)this + 0x24) - *(int *)((int)this + 0x20)) / 0x14)) {
    return 0;
  }
                    /* Inactive state: flagged non-TV requests append a replay row and RETURN before
                       any backend start command. List membership is not voice-start confirmation.
                        */
  if ((*(char *)((int)this + 0x4c) == '\0') && (iVar5 != 0)) {
    if (((flags & 1) == 0) && ((flags >> 1 & 1) == 0)) {
      return 0;
    }
    if (existingSoundId == 0) {
      existingSoundId = (**(code **)(*piVar7 + 0x2c))();
    }
    if (existingSoundId == 0) {
      return 0;
    }
    ObjectSoundRow_Construct(&local_50,existingSoundId,soundNameBytes);
    if (iVar4 == 0) {
      local_50 = (void *)((uint)local_50 | 0x80000000);
    }
    ObjectSoundRows_AppendCopy(this_00,&local_50);
    ObjectSoundRow_DestroyName(&local_50);
    return existingSoundId;
  }
  if (existingSoundId == 0) {
    existingSoundId = (**(code **)(*piVar7 + 0x2c))();
  }
  if ((void *)existingSoundId == (void *)0x0) {
    return 0;
  }
  (**(code **)(*piVar7 + 0x44))(0x3475365);
  (**(code **)(*piVar7 + 0x54))(0x347537e,soundNameBytes,0);
                    /* Actual three stack DWORDs are PID03475381,0,0. Unaffiliated
                       high-word/register expressions in actual C are stack recovery artifacts. */
  (**(code **)(*piVar7 + 0x50))(0x3475381,(ulonglong)unaff_EDI << 0x20);
  (**(code **)(*piVar7 + 0x4c))(0x3475385,existingSoundId);
                    /* Actual value is normalized request flagbit0, not a byte from the Transform
                       pointer. */
  (**(code **)(*piVar7 + 0x4c))(0x347538c,(uint)(local_7c._1_1_ != '\0'));
                    /* Actual owner GUID64: lowDWORD owner+8, highDWORD owner+C; PID13F18A1F.
                       Unaff_* / swapped-looking C values are artifacts. */
  (**(code **)(*piVar7 + 0x50))
            (0x13f18a1f,CONCAT44(unaff_ESI,*(undefined4 *)(*(int *)((int)this + 4) + 0xc)));
  if (relatedObject != (void *)0x0) {
                    /* Actual related GUID64: lowDWORD related+8, highDWORD related+C; PID6BF16A1E.
                        */
    (**(code **)(*piVar7 + 0x50))
              (0x6bf16a1e,CONCAT44(unaff_EBX,*(undefined4 *)((int)relatedObject + 0xc)));
  }
  if ((cStack_74 != '\0') || ((*(uint *)(*(int *)((int)this + 4) + 0x2c) & DAT_011ea0fc) != 0)) {
    (**(code **)(*piVar7 + 0x48))(0x489c3762,0.0);
    (**(code **)(*piVar7 + 0x48))(0x779a5ff4,0.0);
    (**(code **)(*piVar7 + 0x48))(0x4af82a78,0.0);
    (**(code **)(*piVar7 + 0x48))(0x703d682b,0.0);
    (**(code **)(*piVar7 + 0x48))(0x15525baa,0.0);
    (**(code **)(*piVar7 + 0x48))(0xfc047eec,0.0);
    (**(code **)(*piVar7 + 0x48))(0x49eb68db,0.0);
    (**(code **)(*piVar7 + 0x48))(0x25df0108,1.0);
  }
  if (*(char *)((int)this + 0x4d) != '\0') {
    (**(code **)(*piVar7 + 0x48))(0xe1f872f2,1.0);
  }
  if (this != (void *)0x0) {
                    /* ECX is retained owner Transform component from ESP14. Decompiled Audio-this
                       receiver is an alias/recovery artifact. */
    FUN_00958070(this,(float *)&piStack_54);
    (**(code **)(*piVar7 + 0x4c))(0x3475389,1);
    piStack_44 = piStack_54;
    pvStack_40 = local_50;
    pvStack_3c = pvStack_4c;
    iStack_38 = iStack_48;
    (**(code **)(*piVar7 + 0x48))(0x3475391,(float)piStack_54);
    piStack_44 = piStack_54;
    pvStack_40 = local_50;
    pvStack_3c = pvStack_4c;
    iStack_38 = iStack_48;
    (**(code **)(*piVar7 + 0x48))(0x3475395,(float)local_50);
    piStack_44 = piStack_54;
    pvStack_40 = local_50;
    pvStack_3c = pvStack_4c;
    iStack_38 = iStack_48;
    (**(code **)(*piVar7 + 0x48))(0x3475398,(float)pvStack_4c);
    FUN_00866280(piVar7,existingSoundId,*(undefined4 *)(*(int *)((int)this + 4) + 8),
                 *(undefined4 *)(*(int *)((int)this + 4) + 0xc));
  }
  if (*(void **)((int)this + 4) == (void *)0x0) goto LAB_009432dc;
  this_01 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011edf08);
  piStack_5c = this_01;
  if (this_01 != (int *)0x0) {
    if (DAT_011edbc4 == (void *)0x0) {
      arg1 = (int *)0x0;
LAB_00943155:
      local_70 = 0;
    }
    else {
      arg1 = WorldObjects_FindLotByGuid(DAT_011edbc4,this_01[2],this_01[3],(uint *)0x0);
      if (arg1 == (int *)0x0) goto LAB_00943155;
      local_70 = arg1[0xa6];
    }
    iStack_68 = 0;
    if (local_70 != 0) {
      pvStack_4c = (void *)0x0;
      piStack_54 = (int *)-1.0;
      local_50 = (void *)-1.0;
      ObjectLocation_CopyXZLevel(this_01,&piStack_54,&local_50,&pvStack_4c);
      uVar6 = FUN_00b05960(*(int *)((int)pvVar1 + 4));
      if (((char)uVar6 != '\0') &&
         (bVar2 = FUN_00b012b0(*(void **)((int)pvVar1 + 4),arg1,auStack_24), bVar2)) {
        FUN_0068bda0(auStack_24,(float *)&piStack_44);
        piStack_54 = piStack_44;
        local_50 = pvStack_3c;
      }
      sVar3 = LotRoom_ResolveForLocalLocation(&piStack_54,0,1);
      iStack_68 = (int)sVar3;
    }
                    /* SUB/NEG/SBB/AND maps ONLY exact owner word18==7FFFFFFF to0; all other raw
                       DWORD values retained, then signed CVTSI2SS. */
    uVar8 = -(uint)(this_01[6] != 0x7fffffff) & this_01[6];
    if (arg1 != (int *)0x0) {
      piStack_54 = (int *)-1.0;
      local_50 = (void *)-1.0;
      pvStack_4c = (void *)0x0;
      ObjectLocation_CopyXZLevel(piStack_5c,&piStack_54,&local_50,&pvStack_4c);
      bVar2 = Lot_TestNextLevelAtLocalLocation(arg1,&piStack_54,1);
      if ((bVar2) && (uVar8 = 0, arg1[0xa6] != 0)) {
        pvStack_4c = (void *)((int)pvStack_4c + 1);
        sVar3 = LotRoom_ResolveForLocalLocation(&piStack_54,0,1);
        iStack_68 = (int)sVar3;
      }
    }
    (**(code **)(*piVar7 + 0x58))(0x2081b4e6,arg1);
    (**(code **)(*piVar7 + 0x48))(0x5dbed967,(float)iStack_68);
    (**(code **)(*piVar7 + 0x48))(0x39ff78d1,(float)(int)uVar8);
    this = pvVar1;
  }
                    /* Restore allocated/reused sound handle from ESP18; final return keeps that
                       handle. Pointer-valued substitutions in actual C are artifacts. */
  existingSoundId = (uint)this_00;
LAB_009432dc:
  (**(code **)(*piVar7 + 0x68))();
  piVar7 = local_60;
  if ((((piStack_58 == (int *)0x1) || (piStack_58 == (int *)0x2)) && (cStack_74 != '\0')) &&
     (*local_60 != local_60[1])) {
    ObjectSound_StopMatchingRows(this,0,0x80000000);
  }
  if (cStack_73 == '\0') {
    soundNameBytes = &DAT_00f98f7a;
  }
  ObjectSoundRow_Construct(&piStack_44,existingSoundId,soundNameBytes);
  if (cStack_74 != '\0') {
    piStack_44 = (int *)((uint)piStack_44 | 0x80000000);
  }
                    /* Reachable: base_tv prefix OR request flagbit1 selects packed row40000000.
                       Former unreachable decompiler warning was bad virtual-call stack cleanup. */
  if ((cStack_71 != '\0') || (cStack_72 != '\0')) {
    piStack_44 = (int *)((uint)piStack_44 | 0x40000000);
  }
  ObjectSoundRows_AppendCopy(piVar7,&piStack_44);
  if ((1 < iStack_38 - (int)pvStack_40) && (pvStack_40 != (void *)0x0)) {
    Memory_FreeIfNonNull(pvStack_40);
  }
  return (uint)(void *)existingSoundId;
}

