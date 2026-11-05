/* Recomputes all four stored upper-quarter flags for every cell at one input level. ECX floor
   manager and Int32 level stack word, RET 4. X/Z traverse manager dimensions; each q calls the same
   floor-support predicate used by incremental refresh, with no excluded Object. Low flags are
   preserved. This body emits no change messages or pending-list operations. Analyst-assigned name.
    */

void __thiscall RebuildFloorUpperQuarterFlagsForLevel(void *this,int param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  byte bVar4;
  byte *pbVar5;
  int iVar6;
  int local_c;
  int local_8;

  /* 00A8D43A: Relative level is the full Int32 input level minus manager min+10; no local level bounds check. The floor flag grid pointer is at manager+28. */
  iVar3 = param_1 - *(int *)((int)this + 0x10);
  local_8 = 0;
  if (0 < *(int *)((int)this + 8)) {
    do {
      local_c = 0;
      if (0 < *(int *)((int)this + 0xc)) {
        do {
          iVar1 = param_1;
          /* 00A8D464: Outer X and inner Z counters use manager dimensions +8/+C. Stored grid indexing uses full Int32 counters/relative level, while the query location narrows X/Z/level to bytes. */
          iVar6 = *(int *)((int)this + 0x28);
          pbVar5 = (byte *)((*(int *)(iVar6 + 4) * iVar3 + local_8) * *(int *)(iVar6 + 8) +
                            *(int *)(iVar6 + 0x10) + local_c);
          param_1._3_1_ = SUB41(iVar1,3);
          param_1._0_3_ =
               CONCAT12(*(char *)((int)this + 0x10) + (char)iVar3,
                        CONCAT11((char)local_c,(char)local_8));
          iVar6 = 0;
          do {
            bVar4 = '\x01' << ((char)iVar6 + 4U & 0x1f);
            /* 00A8D496: For every cell iterate q=0..3, calling AD2990 with excluded Object pointer zero. The fourth packed byte is not newly written here; AD2990 forces its own full-mask support query and constructs its own single-quarter basement mask. */
            uVar2 = TestFloorQuarterSupport(*(void **)((int)this + 4),(char *)&param_1,iVar6,0);
            /* 00A8D4AB: Consume support AL only; set stored bit q+4 on true, clear it on false. All low-quarter flags remain unchanged. Unlike A913D0, this body has no changed-value check, per-quarter message emission or pending-list removal. */
            if ((char)uVar2 == '\0') {
              *pbVar5 = *pbVar5 & ~bVar4;
            }
            else {
              *pbVar5 = *pbVar5 | bVar4;
            }
            iVar6 = iVar6 + 1;
          } while (iVar6 < 4);
          local_c = local_c + 1;
        } while (local_c < *(int *)((int)this + 0xc));
      }
      local_8 = local_8 + 1;
    } while (local_8 < *(int *)((int)this + 8));
  }
  return;
}
