/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role from complete original PC1.67 body. ECX receiver and plainRET; stored fastcall
   receiver type is inferred. Walk retained record list+3E8 against sentinel+3E4. For type1 rows,
   exact signed row/column tree lookups resolve payload; require nonnull payload and child+0C.
   Payload flags byte+18 bit0 and bit1 become independent low-byte stretch controls. Physical PUSH
   height,width,child,row,column then ECX grid and CALL005259D0 at00528874 supplies five words;
   caller C omits two controls due target stack-recovery artifacts. Unknown high argument bits are
   not semantic flags: only low bytes are consumed. Next retained record comes from004E1030. No
   child destruction, allocation or asynchronous publication established by this traversal. */

void __fastcall UiGrid_ReapplyRetainedCellWindows(void *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int *piVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  
  piVar5 = *(int **)((int)param_1 + 1000);
  if (piVar5 != (int *)((int)param_1 + 0x3e4)) {
    do {
      if (piVar5[4] == 1) {
        puVar1 = (undefined4 *)((int)param_1 + 900);
        puVar7 = *(undefined4 **)((int)param_1 + 0x38c);
        puVar6 = puVar1;
        while (puVar4 = puVar7, puVar4 != (undefined4 *)0x0) {
          if ((int)puVar4[4] < piVar5[6]) {
            puVar7 = (undefined4 *)*puVar4;
          }
          else {
            puVar7 = (undefined4 *)puVar4[1];
            puVar6 = puVar4;
          }
        }
        if ((puVar6 == puVar1) || (piVar5[6] < (int)puVar6[4])) {
          puVar6 = puVar1;
        }
        if (puVar6 != puVar1) {
          puVar1 = puVar6 + 7;
          puVar4 = (undefined4 *)puVar6[9];
          puVar7 = puVar1;
          while (puVar3 = puVar4, puVar3 != (undefined4 *)0x0) {
            if ((int)puVar3[4] < piVar5[5]) {
              puVar4 = (undefined4 *)*puVar3;
            }
            else {
              puVar4 = (undefined4 *)puVar3[1];
              puVar7 = puVar3;
            }
          }
          if ((puVar7 == puVar1) || (piVar5[5] < (int)puVar7[4])) {
            puVar7 = puVar1;
          }
          if (((puVar7 != puVar6 + 7) && (iVar2 = puVar7[6], iVar2 != 0)) &&
             (*(int **)(iVar2 + 0xc) != (int *)0x0)) {
            UiGrid_PlaceChildInCell
                      (param_1,*(int *)(iVar2 + 4),*(undefined4 *)(iVar2 + 8),*(int **)(iVar2 + 0xc)
                      );
          }
        }
      }
      piVar5 = FUN_004e1030(piVar5);
    } while (piVar5 != (int *)((int)param_1 + 0x3e4));
  }
  return;
}

