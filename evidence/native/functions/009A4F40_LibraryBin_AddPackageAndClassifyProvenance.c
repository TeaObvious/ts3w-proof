/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Selected full original bin-package addition.
   Metadata predicate009A1690 selects0679B9B8; first matched group checks01000000 then02000000,
   producing2/3, else installed0/local1; no marker installed0/local4. When category0 product4..17
   maps8..A0. Stores sign-extended constants for13..17 then AND FF at009A533A, so final
   categories128..160 are nonnegative. Do not mistake intermediate negative C literals for final
   values. Current package-index ordering/error policy is a bounded project projection, not all
   native filesystem/resource lifetime behavior. */

/* Current caller/reader join: actual9A5600 pushes filename descriptor, installed lowbyte and
   productDWORD; this body RET0C. Genuine pseudo's single param/unaff_retaddr/unaff_EBX are
   ABI/local tracking artifacts, not one input. Calls9A4E50 before9A23D0 lookup; lookup alone
   does not insert. Native table entry physical base+10 differs from C local iterator pointer;
   +248/+24C modification time cleared before9A2EB0 open, later64bit4DBEC0 result is stored.
   This is not a length/mtime source-coherence attestation. Provider owner+78 is conditionally
   closed/cleared/released only after virtual1C admits, then stream/output refs release. Full
   virtual1C/provider,9A4E50/2050 case/duplicate and timestamp semantics remain open. */

undefined4 LibraryBin_AddPackageAndClassifyProvenance(undefined4 *param_1)

{
  undefined **this;
  undefined *puVar1;
  size_t _Size;
  undefined **ppuVar2;
  void *pvVar3;
  void *_Src;
  char cVar4;
  char cVar5;
  undefined4 uVar6;
  wchar_t *pwVar7;
  uint uVar8;
  int *unaff_EBX;
  uint *puVar9;
  __time64_t _Var10;
  char unaff_retaddr;
  int iVar11;
  void *pvStack_7b4;
  undefined **local_7b0;
  uint *local_7ac;
  undefined **local_7a8;
  int local_7a4;
  uint *puStack_7a0;
  uint *puStack_79c;
  undefined4 uStack_798;
  char *pcStack_794;
  uint uStack_790;
  void *pvStack_78c;
  undefined4 uStack_784;
  undefined4 uStack_780;
  uint uStack_77c;
  char *pcStack_778;
  uint uStack_774;
  uint uStack_770;
  void *apvStack_76c [2];
  int iStack_764;
  uint uStack_75c;
  char *pcStack_758;
  uint uStack_754;
  uint uStack_750;
  void *apvStack_74c [2];
  int iStack_744;
  undefined4 auStack_73c [6];
  undefined1 auStack_724 [8];
  undefined1 local_71c [16];
  undefined4 auStack_70c [5];
  void *local_6f8;
  undefined2 *local_6f4;
  int local_6f0;
  undefined4 local_6ec;
  undefined1 local_6e8 [136];
  undefined1 local_660 [448];
  void *local_4a0;
  int local_49c;
  int local_498;
  undefined4 local_494;
  undefined4 local_490 [34];
  undefined1 local_408 [448];
  undefined4 local_248 [34];
  undefined4 local_1c0 [108];
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 *local_4;
  
  FUN_009b11a0(local_248);
  FUN_009af280(local_1c0);
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = (undefined4 *)0x0;
  FUN_00408df0(&local_4a0,param_1);
  FUN_009a4da0(local_490,local_248);
  _Src = local_4a0;
  local_6f8 = (void *)0x0;
  local_6f4 = (undefined2 *)0x0;
  local_6f0 = 0;
  local_6ec = local_494;
  FUN_00408890(&local_6f8,(local_49c - (int)local_4a0 >> 1) + 1);
  pvVar3 = local_6f8;
  _Size = (local_49c - (int)_Src >> 1) * 2;
  memmove(local_6f8,_Src,_Size);
  local_6f4 = (undefined2 *)(_Size + (int)pvVar3);
  *local_6f4 = 0;
  FUN_009a4da0(local_6e8,local_490);
  ppuVar2 = local_7a8;
  local_7ac = (uint *)((uint)local_7ac & 0xffffff00);
  this = local_7a8 + 0xd;
  FUN_009a4e50(this,&local_7a4,&local_6f8);
  FUN_009af1b0((int)local_660);
  FUN_009b1220((int)local_6e8);
  if ((2 < (int)(local_6f0 - (int)local_6f8 & 0xfffffffeU)) && (local_6f8 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_6f8);
  }
  FUN_009af1b0((int)local_408);
  FUN_009b1220((int)local_490);
  if ((2 < (int)(local_498 - (int)local_4a0 & 0xfffffffeU)) && (local_4a0 != (void *)0x0)) {
    Memory_FreeIfNonNull(local_4a0);
  }
  FUN_009af1b0((int)local_1c0);
  FUN_009b1220((int)local_248);
  FUN_009a23d0(this,&local_7a4,param_1);
  *(undefined4 *)(local_7a4 + 0x248) = 0;
  *(undefined4 *)(local_7a4 + 0x24c) = 0;
  local_7ac = (uint *)(local_7a4 + 0x98);
  local_7b0 = (undefined **)0x0;
  FUN_007d7920(local_71c,local_7a8[0x20],local_7a8[0x21]);
  uVar6 = FUN_009a2eb0(local_7a8,param_1,(int *)&local_7b0);
  if ((char)uVar6 == '\0') {
    StreamReader_ReleaseAuxiliary(local_71c);
    uVar8 = 0;
    if (local_7b0 != (undefined **)0x0) {
      uVar8 = (**(code **)(local_7b0[1] + 4))();
    }
    return uVar8 & 0xffffff00;
  }
  iVar11 = 2;
  pwVar7 = (wchar_t *)(**(code **)(*local_7b0 + 0x28))();
  _Var10 = FUN_004dbec0(pwVar7,iVar11);
  *(__time64_t *)(local_7a4 + 0x248) = _Var10;
  uStack_784 = 0;
  uStack_780 = 0;
  uStack_77c = 0;
  pcStack_778 = "Scratch/ExportBin/AddPackage/Keylist";
  local_7a8 = &PTR_LAB_0104bf28;
  iVar11 = (**(code **)(*local_7b0 + 0x30))(&uStack_784,&local_7a8);
  if (iVar11 == 0) {
    if (unaff_retaddr == '\0') {
      *(undefined4 *)(local_7a4 + 0x250) = 4;
    }
    else {
      *(undefined4 *)(local_7a4 + 0x250) = 0;
    }
  }
  else if ((*(uint *)((int)pvStack_78c + 0xc) & 0x1000000) == 0) {
    if ((*(uint *)((int)pvStack_78c + 0xc) & 0x2000000) == 0) {
      if (unaff_retaddr == '\0') {
        *(undefined4 *)(local_7a4 + 0x250) = 1;
      }
      else {
        *(undefined4 *)(local_7a4 + 0x250) = 0;
      }
    }
    else {
      *(undefined4 *)(local_7a4 + 0x250) = 3;
    }
  }
  else {
    *(undefined4 *)(local_7a4 + 0x250) = 2;
  }
  if (*(int *)(local_7a4 + 0x250) == 0) {
    switch(param_1) {
    case (undefined4 *)0x4:
      *(undefined4 *)(local_7a4 + 0x250) = 8;
      break;
    case (undefined4 *)0x5:
      *(undefined4 *)(local_7a4 + 0x250) = 0x10;
      break;
    case (undefined4 *)0x6:
      *(undefined4 *)(local_7a4 + 0x250) = 0x18;
      break;
    case (undefined4 *)0x7:
      *(undefined4 *)(local_7a4 + 0x250) = 0x20;
      break;
    case (undefined4 *)0x8:
      *(undefined4 *)(local_7a4 + 0x250) = 0x28;
      break;
    case (undefined4 *)0x9:
      *(undefined4 *)(local_7a4 + 0x250) = 0x30;
      break;
    case (undefined4 *)0xa:
      *(undefined4 *)(local_7a4 + 0x250) = 0x38;
      break;
    case (undefined4 *)0xb:
      *(undefined4 *)(local_7a4 + 0x250) = 0x40;
      break;
    case (undefined4 *)0xc:
      *(undefined4 *)(local_7a4 + 0x250) = 0x48;
      break;
    case (undefined4 *)0xd:
      *(undefined4 *)(local_7a4 + 0x250) = 0x50;
      break;
    case (undefined4 *)0xe:
      *(undefined4 *)(local_7a4 + 0x250) = 0x58;
      break;
    case (undefined4 *)0xf:
      *(undefined4 *)(local_7a4 + 0x250) = 0x60;
      break;
    case (undefined4 *)0x10:
      *(undefined4 *)(local_7a4 + 0x250) = 0x68;
      break;
    case (undefined4 *)0x11:
      *(undefined4 *)(local_7a4 + 0x250) = 0x70;
      break;
    case (undefined4 *)0x12:
      *(undefined4 *)(local_7a4 + 0x250) = 0x78;
      break;
    case (undefined4 *)0x13:
      *(undefined4 *)(local_7a4 + 0x250) = 0xffffff80;
      break;
    case (undefined4 *)0x14:
      *(undefined4 *)(local_7a4 + 0x250) = 0xffffff88;
      break;
    case (undefined4 *)0x15:
      *(undefined4 *)(local_7a4 + 0x250) = 0xffffff90;
      break;
    case (undefined4 *)0x16:
      *(undefined4 *)(local_7a4 + 0x250) = 0xffffff98;
      break;
    case (undefined4 *)0x17:
      *(undefined4 *)(local_7a4 + 0x250) = 0xffffffa0;
    }
    *(uint *)(local_7a4 + 0x250) = *(uint *)(local_7a4 + 0x250) & 0xff;
  }
  *(undefined4 **)(local_7a4 + 0x254) = param_1;
  FUN_007d7920(auStack_73c,unaff_EBX,1);
  cVar4 = FUN_009b1780((void *)(local_7a4 + 0x10),auStack_73c);
  cVar5 = FUN_009afab0(pvStack_7b4,auStack_73c);
  if ((cVar4 == '\0') && (cVar5 == '\0')) {
    FUN_009a2320(this,(int *)&local_7ac,(int *)local_7ac,(int *)local_7a8);
  }
  else if (ppuVar2[0x20] != (undefined *)0x0) {
    FUN_00d640f0(&pvStack_7b4);
    puStack_7a0 = (uint *)0x0;
    puStack_79c = (uint *)0x0;
    uStack_798 = 0;
    pcStack_794 = "Scratch/ExporBbin/KeyList";
    (**(code **)(*unaff_EBX + 0x30))(&puStack_7a0,&pvStack_7b4);
    local_7ac = puStack_79c;
    if (puStack_7a0 != puStack_79c) {
      puVar9 = puStack_7a0;
      do {
        pcStack_778 = (char *)puVar9[1];
        uStack_77c = *puVar9;
        uStack_774 = puVar9[2];
        uStack_770 = puVar9[3];
        FUN_00408df0(apvStack_76c,local_4);
        pcStack_758 = pcStack_778;
        uStack_75c = uStack_77c;
        uStack_754 = uStack_774;
        uStack_750 = uStack_770;
        FUN_00408df0(apvStack_74c,apvStack_76c);
        uStack_790 = uStack_790 & 0xffffff00;
        FUN_009a2460(ppuVar2 + 0x15,auStack_70c,&uStack_75c);
        if ((2 < (int)(iStack_744 - (int)apvStack_74c[0] & 0xfffffffeU)) &&
           (apvStack_74c[0] != (void *)0x0)) {
          Memory_FreeIfNonNull(apvStack_74c[0]);
        }
        if ((2 < (int)(iStack_764 - (int)apvStack_76c[0] & 0xfffffffeU)) &&
           (apvStack_76c[0] != (void *)0x0)) {
          Memory_FreeIfNonNull(apvStack_76c[0]);
        }
        puVar9 = puVar9 + 4;
      } while (puVar9 != local_7ac);
    }
    if (puStack_7a0 != (uint *)0x0) {
      Memory_FreeIfNonNull(puStack_7a0);
    }
    FUN_00d64160(&pvStack_7b4);
  }
  if (((int *)ppuVar2[0x1e] != (int *)0x0) &&
     (cVar4 = (**(code **)(*(int *)ppuVar2[0x1e] + 0x1c))(), cVar4 != '\0')) {
    (**(code **)(*(int *)ppuVar2[0x1e] + 8))();
    puVar1 = ppuVar2[0x1e];
    if (puVar1 != (undefined *)0x0) {
      ppuVar2[0x1e] = (undefined *)0x0;
      (**(code **)(*(int *)(puVar1 + 4) + 4))();
    }
    if (ppuVar2[9] != ppuVar2[10]) {
      *(undefined2 *)ppuVar2[9] = 0;
      ppuVar2[10] = ppuVar2[9];
    }
  }
  StreamReader_ReleaseAuxiliary(auStack_73c);
  local_7b0 = &PTR_LAB_00fb3ccc;
  if (pvStack_78c != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_78c);
  }
  StreamReader_ReleaseAuxiliary(auStack_724);
  uVar6 = (**(code **)(unaff_EBX[1] + 4))();
  return CONCAT31((int3)((uint)uVar6 >> 8),1);
}

