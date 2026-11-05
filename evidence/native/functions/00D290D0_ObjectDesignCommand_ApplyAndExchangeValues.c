/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Three stack DWORDs: GUIDlow/high and row-value-block pointer,
   RET0Ch. Missing object/component exits unchanged. For resolved component, copies component+38
   through6225B0 to block+40, calls94B150 with block+0/+10 and949460 with block+60 first DWORD; then
   exchanges two16-byte value lanes block0..1F with20..3F and pointer-bearing text blocks50/60
   through existing copy helpers. Full child semantics and exact undo interface direction remain
   bounded. */

void ObjectDesignCommand_ApplyAndExchangeValues(undefined4 param_1,undefined4 param_2,int *param_3)

{
  int *piVar1;
  void **this;
  void **this_00;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  void *pvVar10;
  void *local_10;
  undefined2 *local_c;
  int local_8;
  
  pvVar10 = ObjectRegistry_GetGlobal();
  pvVar10 = ObjectRegistry_FindBorrowed(pvVar10,CONCAT44(param_2,param_1));
  if ((pvVar10 != (void *)0x0) &&
     (pvVar10 = Object_GetComponentByMask(pvVar10,DAT_011e9fc4), pvVar10 != (void *)0x0)) {
    FUN_006225b0(param_3 + 0x10,(int *)((int)pvVar10 + 0x38));
    piVar1 = param_3 + 4;
    FUN_0094b150(pvVar10,param_3,piVar1);
    this = (void **)(param_3 + 0x18);
    FUN_00949460(pvVar10,(LPCWSTR)param_3[0x18]);
    iVar2 = param_3[8];
    iVar3 = param_3[9];
    iVar4 = param_3[10];
    iVar5 = param_3[0xb];
    iVar6 = param_3[0xc];
    iVar7 = param_3[0xe];
    iVar8 = param_3[0xd];
    iVar9 = param_3[0xf];
    this_00 = (void **)(param_3 + 0x14);
    FUN_00408df0(&local_10,this_00);
    param_3[8] = *param_3;
    param_3[9] = param_3[1];
    param_3[10] = param_3[2];
    param_3[0xc] = *piVar1;
    param_3[0xb] = param_3[3];
    param_3[0xd] = param_3[5];
    param_3[0xe] = param_3[6];
    param_3[0xf] = param_3[7];
    if (this != this_00) {
      FUN_00408d60(this_00,*this,(undefined2 *)param_3[0x19]);
    }
    *param_3 = iVar2;
    param_3[1] = iVar3;
    param_3[2] = iVar4;
    *piVar1 = iVar6;
    param_3[5] = iVar8;
    param_3[3] = iVar5;
    param_3[6] = iVar7;
    param_3[7] = iVar9;
    if (&local_10 != this) {
      FUN_00408d60(this,local_10,local_c);
    }
    if ((2 < (int)(local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (void *)0x0)) {
      Memory_FreeIfNonNull(local_10);
    }
  }
  return;
}

