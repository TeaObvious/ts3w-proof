/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX original owner, no stack arguments/plain RET. Capture owner+35C,
   compare previous+38C and retain that inequality for selected refresh calls. Iterate actual
   segmented outer cursors at+1C4/+1CC/+1D0/+1D4; each0x81C-byte bucket has seven0x128-byte lanes.
   When bucket+818 iszero, scan actual lane+AC/+B0 hash rows, linked by node+80 and original
   sentinel arrays. For node+C zero and absent material atnode+40 or material+30 not3, call
   C51330(node+8) and TEST AL; any false clears this bucket result. Actual lane primary object is
   dirty-queued through6FA9F0, conditionally C3A890 on captured-word inequality, always C3C700;
   secondary lane+4 object gets selected dirty queue and A5CFF0. After seven lanes write bucket+818
   result, advance actual segmented cursors and finally copy captured+35C to+38C even when outer
   range empty. Numeric lane/field roles, complete deeper geometry and upstream scheduler are not
   inferred from stride. Non-owned alignment inside complete envelope is exported explicitly.
   Polling material status is not current Task/CTS/GPU-slot/budget parity or proof that every edit
   refills within its original frame. */

void __fastcall WallRender_PollBucketMaterialsAndRefreshObjects(int param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  void *pvVar5;
  int iVar6;
  uint uVar7;
  undefined4 *puVar8;
  int iVar9;
  int *piVar10;
  undefined1 local_32;
  int local_2c;
  undefined4 *local_20;
  undefined4 *local_18;
  undefined4 *local_14;
  
  iVar3 = *(int *)(param_1 + 0x35c);
  local_18 = *(undefined4 **)(param_1 + 0x1cc);
  iVar2 = *(int *)(param_1 + 0x38c);
  local_14 = *(undefined4 **)(param_1 + 0x1d0);
  local_20 = *(undefined4 **)(param_1 + 0x1c4);
  puVar4 = *(undefined4 **)(param_1 + 0x1d4);
  if (local_20 != puVar4) {
    do {
      local_32 = 1;
                    /* Exactly seven lanes, actual0x128-byte step atC51858. Numeric loop count alone
                       does not recover original authored level indices. */
      local_2c = 7;
      puVar8 = local_20;
      do {
        pvVar5 = (void *)*puVar8;
        if (*(char *)(local_20 + 0x206) == '\0') {
          piVar10 = (int *)puVar8[0x2b];
          iVar9 = *piVar10;
          if (iVar9 == 0) {
            piVar10 = piVar10 + 1;
            iVar9 = *piVar10;
            while (iVar9 == 0) {
              piVar10 = piVar10 + 1;
              iVar9 = *piVar10;
            }
            iVar9 = *piVar10;
          }
          iVar6 = *(int *)(puVar8[0x2b] + puVar8[0x2c] * 4);
          while (iVar9 != iVar6) {
                    /* ECX=node+8; C51330 material resolver/predicate. OnlyAL controls bucket
                       readiness; no wholeEAX boolean or current texture/GPU completion claim. */
            if ((*(int *)(iVar9 + 0xc) == 0) &&
               (((*(int *)(iVar9 + 0x40) == 0 || (*(int *)(*(int *)(iVar9 + 0x40) + 0x30) != 3)) &&
                (uVar7 = WallMaterialEntry_ResolveAndTestReady(iVar9 + 8), (char)uVar7 == '\0')))) {
              local_32 = 0;
            }
            iVar9 = *(int *)(iVar9 + 0x80);
            while (iVar9 == 0) {
              piVar1 = piVar10 + 1;
              piVar10 = piVar10 + 1;
              iVar9 = *piVar1;
            }
          }
          SceneObject_QueueDirtyOnce((int)pvVar5);
        }
        if (iVar3 != iVar2) {
          FUN_00c3a890(pvVar5);
        }
        FUN_00c3c700(pvVar5);
        pvVar5 = (void *)puVar8[1];
        if (*(char *)(local_20 + 0x206) == '\0') {
          SceneObject_QueueDirtyOnce((int)pvVar5);
        }
        FUN_00a5cff0(pvVar5);
        puVar8 = puVar8 + 0x4a;
        local_2c = local_2c + -1;
      } while (local_2c != 0);
                    /* Store actual per-bucket all-selected-materials-ready byte+818 after seven
                       lane passes; captured owner word still copied+35C→+38C afterward. */
      *(undefined1 *)(local_20 + 0x206) = local_32;
      local_20 = local_20 + 0x207;
      if (local_20 == local_18) {
        local_14 = local_14 + 1;
        local_20 = (undefined4 *)*local_14;
        local_18 = local_20 + 0x81c;
      }
    } while (local_20 != puVar4);
    *(int *)(param_1 + 0x38c) = iVar3;
    return;
  }
  *(int *)(param_1 + 0x38c) = iVar3;
  return;
}

