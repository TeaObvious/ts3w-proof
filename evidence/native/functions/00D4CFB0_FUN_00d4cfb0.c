/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original analyst note.
   ECX receiver, TWO physical stackwords key and optional changed-byte output, RET8. Genuine C omits second parameter, substitutes key for changed output and prints unaff_EDI for saved receiver. Actual D4D0AA loads original second word at savedESP+34 before optional byte write; D4D126 restores receiver from savedESP+10 for CDA0. Service4AFE80 NULL->AL0; virtual44 DWORD compared, not established timestamp/hash/pointer semantics. B1E0 result tags constants select original library/other paths; no inferred tag names or full child semantics. Selected library path9A16B0/9A1F80, modebyte owner+59 and alternateCDA0/out/subobject+4 release retain separate state/lifetime/open questions. */
bool __thiscall FUN_00d4cfb0(void *this,uint *param_1)

{
  bool bVar1;
  bool bVar2;
  void *this_00;
  int *piVar3;
  uint *puVar4;
  int iVar5;
  uint *puVar6;
  undefined4 uVar7;
  uint *puVar8;
  void *unaff_EDI;
  undefined1 uStack00000000;
  uint *local_1c [7];
  
  local_1c[0] = this;
  piVar3 = (int *)FUN_004afe80();
  puVar6 = param_1;
  if (piVar3 == (int *)0x0) {
    return false;
  }
  puVar4 = (uint *)(**(code **)(*piVar3 + 0x44))(param_1);
  iVar5 = FUN_00d4b1e0((int)puVar6);
  if (((iVar5 != -0x75a4b414) && (iVar5 != -0x51f44112)) && (iVar5 != -0x73755358)) {
    if (iVar5 == -0x651a948f) {
      FUN_00c8df10(DAT_011ee034,puVar6,&uStack00000000,'\x01',0);
      return true;
    }
    if (iVar5 == 0x16c05b51) {
      return true;
    }
    if (*(char *)((int)this + 0x59) != '\0') {
      iVar5 = FUN_00d4b1e0((int)puVar6);
      puVar6 = (uint *)FUN_00d4bdc0(this,iVar5);
      if (puVar4 != puVar6) {
        return false;
      }
    }
    goto LAB_00d4d15b;
  }
  bVar2 = false;
  FUN_007d7900(local_1c);
  this_00 = DAT_011ea6a4;
  if ((DAT_011ea6a4 != (void *)0x0) &&
     (uVar7 = FUN_009a16b0(DAT_011ea6a4,local_1c), (char)uVar7 != '\0')) {
    if (local_1c[0] != puVar4) {
      uVar7 = FUN_009a1f80(this_00,puVar6);
      if ((char)uVar7 != '\0') {
        if (param_1 != (uint *)0x0) {
          *(undefined1 *)param_1 = 1;
        }
        StreamReader_ReleaseAuxiliary(local_1c);
        return true;
      }
      if (local_1c[0] != puVar4) goto LAB_00d4d0d5;
    }
    bVar2 = true;
  }
LAB_00d4d0d5:
  bVar1 = true;
  if (((iVar5 == -0x75a4b414) && (!bVar2)) && ((puVar4 != (uint *)0x0 && (DAT_011edbc4 != 0)))) {
    if (*(int *)(DAT_011edbc4 + 0xb0) == 0) {
      puVar8 = (uint *)0x0;
    }
    else {
      puVar8 = *(uint **)(*(int *)(DAT_011edbc4 + 0xb0) + 0x70);
    }
    if ((puVar4 != puVar8) && (puVar4 != *(uint **)(DAT_011edbc4 + 0x84))) {
      bVar1 = false;
    }
  }
  param_1 = (uint *)0x0;
  if ((!bVar2) && (bVar1)) {
    uVar7 = FUN_00d4cda0(unaff_EDI,puVar6,(int *)&param_1);
    if (((char)uVar7 != '\0') && (puVar4 != param_1)) {
      puVar4 = (uint *)0x0;
    }
    if (param_1 != (uint *)0x0) {
      (**(code **)(param_1[1] + 4))();
    }
  }
  StreamReader_ReleaseAuxiliary(local_1c);
LAB_00d4d15b:
  return puVar4 != (uint *)0x0;
}

