/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. Physical input is ECX map owner; no incomingEDX read,
   no stack words/plainRET. Initializes forward and reverse map heads/count/capacity/debug labels,
   copies16DWORDs from initial nullquad011EC8E0 into owner+40, clears byte+80 and associated
   fields+84/+88/+8C, and sets nondeletable-key label+90. Thus all four implicit default keys start
   as nullquad. AA5490 later overwrites only the inline16-byte default key at+40 while reading
   resources. Default data is original initial-memory zero-fill evidence, not physically backed disk
   bytes. Existing inferredfastcall metadata is unchanged; no return-value contract claimed.
   Complete142ownedbytes. */

void __fastcall FloorPatternMap_Initialize(int param_1)

{
  float fVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  
  uVar2 = DAT_0103fd88;
  fVar1 = FLOAT_00f998f8;
  *(float *)(param_1 + 0x10) = FLOAT_00f998f8;
  *(undefined4 *)(param_1 + 0x14) = uVar2;
  *(char **)(param_1 + 0x1c) = "Lot/FloorResourceKeyMap/Map";
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 8) = 1;
  *(undefined4 **)(param_1 + 4) = &DAT_0114d900;
  *(float *)(param_1 + 0x30) = fVar1;
  *(undefined4 *)(param_1 + 0x34) = uVar2;
  *(char **)(param_1 + 0x3c) = "Lot/FloorResourceKeyMap/InverseMap";
  *(undefined4 *)(param_1 + 0x28) = 1;
  *(undefined4 **)(param_1 + 0x24) = &DAT_0114d900;
  *(undefined4 *)(param_1 + 0x2c) = 0;
  *(undefined4 *)(param_1 + 0x38) = 0;
  puVar4 = &DAT_011ec8e0;
  puVar5 = (undefined4 *)(param_1 + 0x40);
  for (iVar3 = 0x10; iVar3 != 0; iVar3 = iVar3 + -1) {
    *puVar5 = *puVar4;
    puVar4 = puVar4 + 1;
    puVar5 = puVar5 + 1;
  }
  *(undefined1 *)(param_1 + 0x80) = 0;
  *(undefined4 *)(param_1 + 0x84) = 0;
  *(undefined4 *)(param_1 + 0x88) = 0;
  *(undefined4 *)(param_1 + 0x8c) = 0;
  *(char **)(param_1 + 0x90) = "Lot/FloorResourceKeyMap/NonDeletablekeys";
  return;
}

