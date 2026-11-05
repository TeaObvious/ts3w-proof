/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note, existing FUN name retained; no database rename.
   ECX metadata receiver plus stream-context stackword, RET4, resultAL. Constructs type predicate with vtableFD92B0 and D063545B at+4; context database virtual+30 populates local key vector. Empty result returnsAL0. First returned key contributes instance low/high at9B17EF/F4; stores metadata+18/+1C and passes only those words plus context to9B1280. Candidate type/group are not passed. Concrete enumeration order/provider/deletion/filter dispatch remain separately bounded. C local_18/local_14 names overlap predicate/vector slots across indirect call, not caller inputs. */
undefined1 __thiscall FUN_009b1780(void *this,undefined4 *param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined1 uVar3;
  undefined **local_18;
  undefined **local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_18 = &PTR_LAB_00fd92b0;
  local_14 = (undefined **)0xd063545b;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = "ResourceSystem/DownloadContentHost/LotContentMetadata/LotTypeKeyList";
  (**(code **)(*(int *)*param_1 + 0x30))(&local_10,&local_18);
  if (local_18 == local_14) {
    if (local_18 != (undefined **)0x0) {
      Memory_FreeIfNonNull(local_18);
    }
    return 0;
  }
  puVar1 = *local_18;
  *(undefined **)((int)this + 0x18) = puVar1;
  puVar2 = local_18[1];
  *(undefined **)((int)this + 0x1c) = puVar2;
  uVar3 = FUN_009b1280(this,param_1,puVar1,puVar2);
  if (local_18 != (undefined **)0x0) {
    Memory_FreeIfNonNull(local_18);
  }
  return uVar3;
}

