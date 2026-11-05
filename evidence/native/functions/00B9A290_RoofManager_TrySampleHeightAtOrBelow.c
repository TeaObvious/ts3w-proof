/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 manager height query at or below a signed story ceiling. Existing ECX auto-this,
   Stack4/Stack8 raw32 coordinate words, StackC signed ceiling, Stack10 float output pointer; AL
   char result and RET16 metadata are preserved. Output starts Float32 zero and hit byte zero.
   Negative ceiling skips all levels. Each level is collected through
   B97B20(manager,scratch,level,0); per-level best starts DWORD C47A0000 (-1000.0). Each returned
   pointer is passed to B95C70 with the coordinate words reloaded as Float32, level and mode1. The
   x87 result is FST-rounded to a Float32 temporary without popping ST0; FCOMIP compares the
   still-extended result against prior rounded Float32 best. JBE rejects less/equal/unordered.
   Strictly greater results store the rounded temporary into best/output and set hit. All peers on
   that level are examined; first successful level stops, otherwise signed levels descend through
   zero. Scratch storage is freed only if nonnull and not the local buffer. Selected caller AB7D8C
   is observed in a bounded lot-wrapper window; second incoming B9A549 is metadata only. Collection,
   child geometry/provider behavior, x87 control/rounding modes and complete caller scheduling are
   outside this body proof. Analyst name and previously empty PLATE only; all existing
   ABI/types/locals/refs/instructions/ranges/bytes remain unchanged. */

char __thiscall
RoofManager_TrySampleHeightAtOrBelow
          (void *this,undefined4 param_1,undefined4 param_2,int param_3,float *param_4)

{
  uint *puVar1;
  uint *puVar2;
  float10 fVar3;
  char local_11d;
  float local_11c;
  uint *local_114;
  uint *local_110;
  uint local_100 [64];
  
  *param_4 = 0.0;
  local_11d = '\0';
  local_114 = local_100;
  local_110 = local_100;
  for (; -1 < param_3; param_3 = param_3 + -1) {
    local_110 = local_114;
    FUN_00b97b20(this,&local_114,param_3,0);
    puVar1 = local_110;
    local_11c = DAT_00fbb78c;
    puVar2 = local_114;
    if (local_114 != local_110) {
      do {
        fVar3 = FUN_00b95c70(this,*puVar2,param_1,param_2,param_3,'\x01');
        if ((float10)local_11c < fVar3) {
          *param_4 = (float)fVar3;
          local_11d = '\x01';
          local_11c = (float)fVar3;
        }
        puVar2 = puVar2 + 1;
      } while (puVar2 != puVar1);
      if (local_11d != '\0') break;
    }
  }
  if ((local_114 != (uint *)0x0) && (local_114 != local_100)) {
    Memory_FreeIfNonNull(local_114);
  }
  return local_11d;
}

