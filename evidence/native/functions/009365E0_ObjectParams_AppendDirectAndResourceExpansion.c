/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX owner; builder pointer, RET4. Appends
   direct defaults FIRST via936200; then visits own64-byte kind2 records and requests resource key
   at+28 via original manager virtual+0C with SIX explicit stack words. Successful returned resource
   is queried for IID B7B8BAAF, retained, then its+28 vector is traversed in20-byte entries. Copies
   resource keys as FINAL type3: input hashA6E5F629 plus type01661233 emitsA6E5F629;
   type8EAF13DE->8415534A,03B4C61D->9CC7E9B2,D3044521->9E2A3B0E,D382BF57->FF0F8907. Optional93B670
   AL predicate emits389CED06 from+50. Releases selected query/resource references. The raw LEA
   queried+28/null test does not establish null-safe query failure; resource manager success/type
   preconditions and full VPXY parsing remain open. */

void __thiscall ObjectParams_AppendDirectAndResourceExpansion(void *this,void *builder)

{
  uint *resourceKey16;
  void *this_00;
  void *pvVar1;
  bool bVar2;
  uint uVar3;
  int *piVar4;
  int *piVar5;
  undefined4 uVar6;
  int iVar7;
  int *piVar8;
  uint uVar9;
  int local_18;
  int iStack_14;
  uint local_8;
  
  this_00 = builder;
  ObjectParams_AppendDirectDefaults(this,builder);
  uVar3 = *(int *)((int)this + 0x30) - *(int *)((int)this + 0x2c) >> 6;
  local_8 = 0;
  if (uVar3 != 0) {
    local_18 = 0;
    while( true ) {
      piVar5 = (int *)0x0;
      piVar8 = (int *)(*(int *)((int)this + 0x2c) + local_18);
      if ((char)piVar8[0xf] == '\x02') break;
LAB_00936776:
      local_18 = local_18 + 0x40;
      local_8 = local_8 + 1;
      if (uVar3 <= local_8) {
        return;
      }
    }
    builder = (void *)0x0;
    piVar4 = (int *)FUN_004afe80();
    pvVar1 = builder;
    if (piVar4 != (int *)0x0) {
      if (builder != (void *)0x0) {
        builder = (void *)0x0;
        (**(code **)(*(int *)pvVar1 + 4))();
      }
      bVar2 = (**(code **)(*piVar4 + 0xc))(piVar4,(uint *)(piVar8 + 10),&builder,0,0,0,0);
      if (bVar2) {
        if ((builder != (void *)0x0) &&
           (piVar5 = (**(code **)(*(int *)builder + 0xc))(builder,0xb7b8baaf), piVar5 != (int *)0x0)
           ) {
          (**(code **)*piVar5)();
        }
        piVar4 = piVar5 + 10;
        if (piVar4 != (int *)0x0) {
          iStack_14 = (piVar5[0xb] - *piVar4) / 0x14;
          if (iStack_14 != 0) {
            iVar7 = 0;
            do {
              resourceKey16 = *(uint **)(iVar7 + 4 + *piVar4);
              if ((*piVar8 == -0x591a09d7) && (resourceKey16[2] == 0x1661233)) {
                uVar9 = 0xa6e5f629;
LAB_00936724:
                ParameterBuilder_AppendResourceKey16(this_00,uVar9,resourceKey16);
              }
              else {
                uVar9 = resourceKey16[2];
                if (uVar9 == 0x8eaf13de) {
                  uVar9 = 0x8415534a;
                  goto LAB_00936724;
                }
                if (uVar9 == 0x3b4c61d) {
                  uVar9 = 0x9cc7e9b2;
                  goto LAB_00936724;
                }
                if (uVar9 == 0xd3044521) {
                  uVar9 = 0x9e2a3b0e;
                  goto LAB_00936724;
                }
                if (uVar9 == 0xd382bf57) {
                  uVar9 = 0xff0f8907;
                  goto LAB_00936724;
                }
              }
              iVar7 = iVar7 + 0x14;
              iStack_14 = iStack_14 + -1;
            } while (iStack_14 != 0);
          }
          uVar6 = FUN_0093b670((int)piVar5);
          if ((char)uVar6 != '\0') {
            ParameterBuilder_AppendResourceKey16(this_00,0x389ced06,(uint *)(piVar5 + 0x14));
          }
          if (piVar5 != (int *)0x0) {
            (**(code **)(*piVar5 + 4))();
          }
          if (builder != (void *)0x0) {
            (**(code **)(*(int *)builder + 4))();
          }
          goto LAB_00936776;
        }
        if (piVar5 != (int *)0x0) {
          (**(code **)(*piVar5 + 4))();
        }
      }
    }
    if (builder != (void *)0x0) {
      (**(code **)(*(int *)builder + 4))();
    }
  }
  return;
}

