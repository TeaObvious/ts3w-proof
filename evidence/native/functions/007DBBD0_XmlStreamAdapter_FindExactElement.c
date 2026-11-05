/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC167_STARTUP_READER_007dbbd0. ECX adapter and UTF16 target name. State must be1 and target
   nonnull. Perform existing name-map/position handling, advance through adapter, compare current
   element names with exact UTF16 code units and lengths, continue until matching name or advance
   failure. Success is low AL=1; target comparison is case-sensitive. Underlying token traversal and
   position reset remain provider boundaries. Three nonowned alignment bytes7DBC9D..9F excluded. */

uint __thiscall XmlStreamAdapter_FindExactElement(void *this,short *param_1)

{
  ushort uVar1;
  int iVar2;
  ushort *allocation;
  byte bVar3;
  uint in_EAX;
  int *piVar4;
  undefined3 extraout_var;
  ushort *puVar5;
  undefined3 extraout_var_00;
  uint extraout_EAX;
  uint uVar6;
  undefined4 extraout_EAX_00;
  undefined4 uVar7;
  ushort *puVar8;
  short **ppsVar9;
  short *psVar10;
  short *psVar11;
  short *local_18 [2];
  ushort *local_10;
  int local_c;
  int local_8;
  char *local_4;
  
  if ((*(int *)((int)this + 0x48) == 1) && (in_EAX = 0, param_1 != (short *)0x0)) {
    local_10 = (ushort *)0x0;
    local_c = 0;
    local_8 = 0;
    local_4 = "Services/XmlStreamAdapter/ElementName";
    FUN_0040b590(&local_10,param_1);
    iVar2 = *(int *)(*(int *)((int)this + 0x28) + *(int *)((int)this + 0x2c) * 4);
    piVar4 = (int *)FUN_007db400((void *)((int)this + 0x24),local_18,&local_10);
    if (*piVar4 != iVar2) {
      FUN_007da230(this,0);
    }
    bVar3 = XmlStreamAdapter_AdvanceElement((int)this);
    allocation = local_10;
    in_EAX = CONCAT31(extraout_var,bVar3);
    if (bVar3 != 0) {
      psVar11 = (short *)(local_c - (int)local_10 >> 1);
      local_18[0] = psVar11;
      do {
        puVar5 = XmlCursor_GetRawElementName(*(void **)((int)this + 8));
        uVar1 = *puVar5;
        puVar8 = puVar5;
        while (uVar1 != 0) {
          puVar8 = puVar8 + 1;
          uVar1 = *puVar8;
        }
        param_1 = (short *)(((int)puVar8 - (int)puVar5 >> 1) * 2 >> 1);
        ppsVar9 = &param_1;
        if ((int)psVar11 <= (int)param_1) {
          ppsVar9 = local_18;
        }
        puVar8 = allocation;
        for (psVar10 = *ppsVar9; psVar10 != (short *)0x0; psVar10 = (short *)((int)psVar10 + -1)) {
          if (*puVar8 != *puVar5) {
            uVar6 = (-(uint)(*puVar8 < *puVar5) & 0xfffffffe) + 1;
            if (uVar6 != 0) goto LAB_007dbcc2;
            break;
          }
          puVar8 = puVar8 + 1;
          puVar5 = puVar5 + 1;
        }
        if ((int)param_1 <= (int)psVar11) {
          uVar6 = (uint)((int)param_1 < (int)psVar11);
LAB_007dbcc2:
          if (uVar6 == 0) {
            uVar7 = 0;
            if ((2 < (int)(local_8 - (int)allocation & 0xfffffffeU)) &&
               (allocation != (ushort *)0x0)) {
              Memory_FreeIfNonNull(allocation);
              uVar7 = extraout_EAX_00;
            }
            return CONCAT31((int3)((uint)uVar7 >> 8),1);
          }
        }
        bVar3 = XmlStreamAdapter_AdvanceElement((int)this);
        in_EAX = CONCAT31(extraout_var_00,bVar3);
      } while (bVar3 != 0);
    }
    if ((2 < (int)(local_8 - (int)allocation & 0xfffffffeU)) && (allocation != (ushort *)0x0)) {
      Memory_FreeIfNonNull(allocation);
      in_EAX = extraout_EAX;
    }
  }
  return in_EAX & 0xffffff00;
}

