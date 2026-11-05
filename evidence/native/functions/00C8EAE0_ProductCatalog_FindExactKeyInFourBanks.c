/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 exact native product lookup used by floor contribution): Physical thiscall
   ECX catalog plus one stack pointer to16-byte resource key, RET4, EAX product pointer or0. Loop
   checks four ordered bank descriptors, stride14h, using C8C950 lower_bound over24-byte entries.
   Actual comparison word order0,4,C,8 is unsigned instanceLow,instanceHigh,group,type in this
   concrete key context; compare returned iterator with end and reject a lower-bound greater-than
   query. Nonzero entry+10 product pointer returns; otherwise try next bank, finally EAX0. Do not
   infer family names, package precedence, error recovery or full platform lifetime from this leaf.
   Concrete A8E370 passes its pattern-entry first key and reads binary32 product+58 when found,
   skipping misses. Product Common reader C93100 supplies raw32 bits at+58 without
   finite/nonnegative validation; current exact installed CWAL reader and explicit monetary
   readiness/failure policy remain project boundaries. Preserve existing prototype/body/bytes. */

uint __thiscall ProductCatalog_FindExactKeyInFourBanks(void *this,uint *param_1)

{
  uint *end;
  uint *puVar1;
  uint uVar2;
  undefined4 *puVar3;
  bool bVar4;
  
  uVar2 = 1;
  puVar3 = (undefined4 *)((int)this + 0x48);
  do {
    end = (uint *)*puVar3;
    puVar1 = ProductCatalogKeyArray_LowerBound
                       ((void *)puVar3[-1],end,param_1,(uint)*(byte *)(puVar3 + 3));
    if (puVar1 == end) {
LAB_00c8eb39:
      puVar1 = end;
    }
    else {
      bVar4 = *param_1 < *puVar1;
      if (((*param_1 == *puVar1) && (bVar4 = param_1[1] < puVar1[1], param_1[1] == puVar1[1])) &&
         (bVar4 = param_1[3] < puVar1[3], param_1[3] == puVar1[3])) {
        bVar4 = param_1[2] < puVar1[2];
      }
      if ((bVar4) || (puVar1 == puVar1 + 6)) goto LAB_00c8eb39;
    }
    if ((puVar1 != end) && (puVar1[4] != 0)) {
      return puVar1[4];
    }
    uVar2 = uVar2 + 1;
    puVar3 = puVar3 + 5;
    if (4 < uVar2) {
      return 0;
    }
  } while( true );
}

