/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX machine; three physical stack words, RET0C, AL
   status. Byte length>=12; optional word swapping; unsigned version0200..02FF. Ordered packed
   actor, parameter, state lists fail AL0 on unresolved entries. Namespace triples require all three
   words nonzero. Version>0201 skips extra word before properties; priority0 leaves prior value,
   FFFFFFFE maps10000, other bits stored signed-compatible at+34; overlay6 leaves prior+38. Declared
   x/y actors cause absent Age(A4135FF7)/Species(E7B516CC) definitions to be injected. Wrapper
   materialization does not prove these defaults or null-index behavior. Decompiled remaining-length
   expression is a pointer/byte-count artifact: compare original SHR/IMUL/CMP before interpreting
   it. */

uint __thiscall JazzMachine_ReadResource(void *this,int *param_1,void *param_2,uint *param_3)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  undefined4 *puVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  uint *puVar8;
  uint *puVar9;
  
  if (param_1[1] == 0) {
    puVar8 = (uint *)0x0;
  }
  else {
    puVar8 = *(uint **)(param_1[1] + 8);
  }
  uVar2 = (**(code **)(*param_1 + 0x1c))();
  uVar3 = FUN_00731be0(this,uVar2);
  if (0xb < uVar2) {
    if ((char)param_3 != '\0') {
      FUN_007d3070(puVar8,uVar2 >> 2);
    }
    param_3 = puVar8 + 1;
    uVar3 = *param_3;
    if ((0x1ff < uVar3) && (uVar3 < 0x300)) {
      *(uint *)((int)this + 0x2c) = puVar8[2];
      puVar9 = puVar8 + 4;
      for (uVar3 = puVar8[3]; uVar3 != 0; uVar3 = uVar3 - 1) {
        puVar4 = RcolContext_ResolveOneBasedBlock(param_2,*puVar9);
        uVar5 = 0;
        if (puVar4 == (undefined4 *)0x0) goto LAB_007febf2;
        FUN_007fe190(this,puVar4);
        puVar9 = puVar9 + 1;
      }
      for (uVar3 = *puVar9; puVar9 = puVar9 + 1, uVar3 != 0; uVar3 = uVar3 - 1) {
        puVar4 = RcolContext_ResolveOneBasedBlock(param_2,*puVar9);
        uVar5 = 0;
        if (puVar4 == (undefined4 *)0x0) goto LAB_007febf2;
        FUN_007fe210(this,puVar4);
      }
      uVar3 = *puVar9;
      for (; puVar8 = puVar9 + 1, uVar3 != 0; uVar3 = uVar3 - 1) {
        puVar4 = RcolContext_ResolveOneBasedBlock(param_2,*puVar8);
        uVar5 = 0;
        if (puVar4 == (undefined4 *)0x0) goto LAB_007febf2;
        FUN_007fd970(this,puVar4);
        puVar9 = puVar8;
      }
      uVar3 = *puVar8;
      if (param_1[1] == 0) {
        uVar5 = 0;
      }
      else {
        uVar5 = *(uint *)(param_1[1] + 8);
      }
      if ((int)(uVar3 * 3) < (int)((uVar2 * 4 - (int)puVar8) + uVar5) >> 2) {
        puVar9 = puVar9 + 2;
        for (; uVar3 != 0; uVar3 = uVar3 - 1) {
          uVar2 = *puVar9;
          puVar8 = puVar9 + 1;
          puVar1 = puVar9 + 2;
          puVar9 = puVar9 + 3;
          if (((uVar2 != 0) && (*puVar8 != 0)) && (*puVar1 != 0)) {
            FUN_007feaa0(this,uVar2,*puVar8,*puVar1);
          }
        }
        if (0x201 < *param_3) {
          puVar9 = puVar9 + 1;
        }
        *(uint *)((int)this + 0x3c) = *puVar9;
        uVar3 = puVar9[1];
        if (uVar3 != 0) {
          if (uVar3 == 0xfffffffe) {
            *(undefined4 *)((int)this + 0x34) = 10000;
          }
          else {
            *(uint *)((int)this + 0x34) = uVar3;
          }
        }
        if (puVar9[2] != 6) {
          *(uint *)((int)this + 0x38) = puVar9[2];
        }
        iVar6 = FUN_007fda00(this,(wint_t *)&DAT_00fe5534);
        if (iVar6 != 0) {
          iVar6 = FUN_007fda50(this,(wint_t *)L"x:Age");
          if (iVar6 == 0) {
            puVar4 = (undefined4 *)FUN_004e4500(0x40,&DAT_01007da0,0);
            if (puVar4 == (undefined4 *)0x0) {
              puVar4 = (undefined4 *)0x0;
            }
            else {
              puVar4 = (undefined4 *)FUN_007fd520(puVar4);
            }
            FUN_007fd370(&param_3,puVar4);
            puVar8 = param_3;
            FUN_007fe280(param_3,(wint_t *)L"x:Age");
            FUN_007fd140(puVar8,0xa4135ff7);
            FUN_007fe210(this,puVar8);
            if (puVar8 != (uint *)0x0) {
              (**(code **)(*puVar8 + 4))();
            }
          }
          iVar6 = FUN_007fda50(this,(wint_t *)L"x:Species");
          if (iVar6 == 0) {
            puVar4 = (undefined4 *)FUN_004e4500(0x40,&DAT_01007da0,0);
            if (puVar4 == (undefined4 *)0x0) {
              puVar4 = (undefined4 *)0x0;
            }
            else {
              puVar4 = (undefined4 *)FUN_007fd520(puVar4);
            }
            FUN_007fd370(&param_3,puVar4);
            puVar8 = param_3;
            FUN_007fe280(param_3,(wint_t *)L"x:Species");
            FUN_007fd140(puVar8,0xe7b516cc);
            FUN_007fe210(this,puVar8);
            if (puVar8 != (uint *)0x0) {
              (**(code **)(*puVar8 + 4))();
            }
          }
        }
        iVar7 = FUN_007fda00(this,(wint_t *)&DAT_00fcd010);
        iVar6 = 0;
        if (iVar7 != 0) {
          iVar6 = FUN_007fda50(this,(wint_t *)L"y:Age");
          if (iVar6 == 0) {
            puVar4 = (undefined4 *)FUN_004e4500(0x40,&DAT_01007da0,0);
            if (puVar4 == (undefined4 *)0x0) {
              puVar4 = (undefined4 *)0x0;
            }
            else {
              puVar4 = (undefined4 *)FUN_007fd520(puVar4);
            }
            FUN_007fd370(&param_3,puVar4);
            puVar8 = param_3;
            FUN_007fe280(param_3,(wint_t *)L"y:Age");
            FUN_007fd140(puVar8,0xa4135ff7);
            FUN_007fe210(this,puVar8);
            if (puVar8 != (uint *)0x0) {
              (**(code **)(*puVar8 + 4))();
            }
          }
          iVar6 = FUN_007fda50(this,(wint_t *)L"y:Species");
          if (iVar6 == 0) {
            puVar4 = (undefined4 *)FUN_004e4500(0x40,&DAT_01007da0,0);
            if (puVar4 == (undefined4 *)0x0) {
              puVar4 = (undefined4 *)0x0;
            }
            else {
              puVar4 = (undefined4 *)FUN_007fd520(puVar4);
            }
            FUN_007fd370(&param_3,puVar4);
            puVar8 = param_3;
            FUN_007fe280(param_3,(wint_t *)L"y:Species");
            FUN_007fd140(puVar8,0xe7b516cc);
            iVar6 = FUN_007fe210(this,puVar8);
            if (puVar8 != (uint *)0x0) {
              iVar6 = (**(code **)(*puVar8 + 4))();
            }
          }
        }
        return CONCAT31((int3)((uint)iVar6 >> 8),1);
      }
LAB_007febf2:
      return uVar5 & 0xffffff00;
    }
  }
  return uVar3 & 0xffffff00;
}

