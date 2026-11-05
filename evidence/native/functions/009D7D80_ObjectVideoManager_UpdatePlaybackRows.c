/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Actual RET8 conflicts with stored one-argumentfastcall prototype; keep metadata unchanged. ECX
   manager, service byte+8D gate, QueryPerformanceCounter, playback list at+88,
   row-state/resource/loop/restart/end branches. Calls009D7570 and consumes iteratorEAX. Float max
   bits00FAB220=7F7FFFFF; retain x87FCOMIP/SSECOMISS carry/unordered masks, float-store rounding,
   and literal SUB/SBB/JS/JG/TEST/JC sequence(TEST clearscarry), not guessed high-level comparisons.
   Helpers009D6860/009D6710/009D64D0 and audio/visibility producers are unselected; this body does
   not prove previous-frame-onlydraw/decode, three-slotring or nativeRGBA8 policy. Preserve exact
   body/prototype/storage/CC. */

void __fastcall ObjectVideoManager_UpdatePlaybackRows(void *param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  int *piVar5;
  float10 fVar6;
  int *local_44;
  float local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  LARGE_INTEGER local_20;
  undefined4 local_18 [2];
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
  iVar1 = FUN_0060e910();
  if (*(char *)(iVar1 + 0x8d) == '\0') {
    piVar5 = *(int **)((int)param_1 + 0x88);
    local_44 = piVar5;
    QueryPerformanceCounter(&local_20);
    if (piVar5 != (int *)((int)param_1 + 0x88)) {
      do {
        if ((char)piVar5[0x29] == '\0') {
          if (((piVar5[0x1e] == 0) || (piVar5[0x1f] == 0)) || (piVar5[0x21] == 0)) {
            piVar5 = &local_24;
LAB_009d8080:
            puVar4 = (undefined4 *)
                     ObjectVideoManager_EndPlaybackAndBindFallback(param_1,piVar5,(int *)&local_44);
            piVar5 = (int *)*puVar4;
            local_44 = piVar5;
          }
          else {
            if (((char)piVar5[0x28] == '\0') && (*(char *)(piVar5[0x1f] + 0x78) != '\0')) {
              FUN_009d6710(piVar5[0x1c],(int *)piVar5[0x1d]);
              *(undefined1 *)(piVar5 + 0x28) = 1;
            }
            uVar3 = FUN_00f1c670(piVar5[0x1e]);
            if ((char)uVar3 != '\0') {
              if (*(char *)((int)piVar5 + 0xa2) == '\0') {
                piVar5 = &local_30;
                goto LAB_009d8080;
              }
              FUN_009d7840((int)piVar5);
            }
            iVar1 = FUN_00f1c750((void *)piVar5[0x1e]);
            if (iVar1 == 0) {
              piVar5 = (int *)*piVar5;
              local_44 = piVar5;
            }
            else {
              if (*(char *)((int)piVar5 + 0xa3) != '\0') {
                piVar5 = &local_2c;
                goto LAB_009d8080;
              }
              fVar6 = FUN_009d6860(piVar5[0x1c],piVar5[0x1d]);
              local_40 = (float)fVar6;
              piVar5[0x2a] = (int)(float)fVar6;
              if ((float10)0 <= fVar6) {
                if (3.4028235e+38 <= local_40) {
                  if (*(char *)((int)piVar5 + 0xa2) == '\0') {
                    piVar5 = &local_28;
                    goto LAB_009d8080;
                  }
                  FUN_009d64d0((int)piVar5);
                  *(undefined1 *)(piVar5 + 0x29) = 1;
                  FUN_009d6710(piVar5[0x1c],(int *)piVar5[0x1d]);
                  FUN_009d70e0(param_1,(int)piVar5,'\0');
                }
                else {
                  if (local_40 < *(float *)((int)param_1 + 0x94) ||
                      local_40 == *(float *)((int)param_1 + 0x94)) goto LAB_009d8052;
                  if (*(char *)((int)piVar5 + 0xa5) == '\0') {
                    *(undefined1 *)((int)piVar5 + 0xa5) = 1;
                    FUN_00f18be0(piVar5[0x1e]);
                  }
                  piVar5 = (int *)*piVar5;
                  local_44 = piVar5;
                }
              }
              else {
LAB_009d8052:
                if (*(char *)((int)piVar5 + 0xa5) != '\0') {
                  *(undefined1 *)((int)piVar5 + 0xa5) = 0;
                  FUN_00f1c870(piVar5[0x1e]);
                }
                FUN_00f1e470((void *)piVar5[0x1e]);
                piVar5 = (int *)*piVar5;
                local_44 = piVar5;
              }
            }
          }
        }
        else {
          fVar6 = FUN_009d6860(piVar5[0x1c],piVar5[0x1d]);
          piVar5[0x2a] = (int)(float)fVar6;
          if (fVar6 < (float10)3.4028235e+38) {
            local_40 = (float)piVar5[0x24];
            if ((local_40 == 0.0) ||
               (iVar1 = *(int *)(*(int *)((int)param_1 + 0x24) + *(int *)((int)param_1 + 0x28) * 4),
               piVar2 = (int *)FUN_009d6c30((void *)((int)param_1 + 0x20),local_18,
                                            (uint *)(piVar5 + 0x24)), *piVar2 == iVar1)) {
              if (*(char *)((int)piVar5 + 0xa2) != '\0') {
                local_10 = piVar5[0x18];
                local_8 = piVar5[0x1a];
                local_c = piVar5[0x19];
                local_4 = piVar5[0x1b];
                piVar5[0x18] = 0;
                piVar5[0x19] = 0;
                piVar5[0x1a] = 0;
                piVar5[0x1b] = 0;
                uVar3 = FUN_009d79e0(param_1,&local_10,piVar5[0x1c],(int *)piVar5[0x1d],
                                     *(char *)((int)piVar5 + 0xa2),(int)local_40,piVar5[0x27],
                                     piVar5[0x22],piVar5[0x23],piVar5[0x26],piVar5[0x25],
                                     *(undefined1 *)((int)piVar5 + 0xa1));
                if ((char)uVar3 != '\0') goto LAB_009d808d;
              }
              piVar5 = &local_38;
              goto LAB_009d8080;
            }
          }
          else {
            local_3c = (local_20.s.HighPart - piVar5[0x2d]) -
                       (uint)(local_20.s.LowPart < (uint)piVar5[0x2c]);
            if (-1 < local_3c) {
              if (*(char *)((int)piVar5 + 0xa2) == '\0') {
                piVar5 = &local_34;
                goto LAB_009d8080;
              }
              FUN_009d64d0((int)piVar5);
              goto LAB_009d808d;
            }
          }
          piVar5 = (int *)*piVar5;
          local_44 = piVar5;
        }
LAB_009d808d:
      } while (piVar5 != (int *)((int)param_1 + 0x88));
    }
  }
  return;
}

