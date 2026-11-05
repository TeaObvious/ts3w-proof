/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX Model, no stack args, RET; ALtrue. Only when currentkey
   typeword+10 nonzero, builds current descriptors and calls94B3E0 with key+8 and stored
   material+4C. Other fields/temporary ownership retained. This is one replay path, not a full
   post-load event-order proof. */

undefined4 __fastcall ModelComponent_RepublishCurrentResource(void *param_1)

{
  undefined4 in_EAX;
  int local_34;
  int local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  int local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  int local_10;
  int local_c;
  
  if (*(int *)((int)param_1 + 0x10) != 0) {
    FUN_00d4c330(&local_10,*(int *)((int)param_1 + 0x3c) - *(int *)((int)param_1 + 0x38) >> 2,
                 (undefined4 *)((int)param_1 + 0x44));
    FUN_008a5c80(&local_34,*(int **)((int)param_1 + 0x38),*(int **)((int)param_1 + 0x3c),local_10);
    local_20 = *(int *)((int)param_1 + 0x18);
    local_1c = *(undefined4 *)((int)param_1 + 0x1c);
    local_c = local_34;
    local_18 = *(undefined4 *)((int)param_1 + 0x20);
    local_2c = *(undefined4 *)((int)param_1 + 0x2c);
    local_14 = *(undefined4 *)((int)param_1 + 0x24);
    local_30 = *(int *)((int)param_1 + 0x28);
    local_28 = *(undefined4 *)((int)param_1 + 0x30);
    local_24 = *(undefined4 *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x20) = 0;
    ModelComponent_PresentResourceAndSavedMaterial
              (param_1,(undefined4 *)((int)param_1 + 8),&local_20,&local_30,
               *(int *)((int)param_1 + 0x4c),*(char *)((int)param_1 + 0x80) != -1);
    in_EAX = FUN_00626e50(&local_10);
  }
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

