/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: thumb/track/background half-open order1/2/0 then -1; EAX int RET8.
   Literal half-open hit order is thumb 1, track 2, background 0, else -1. SSE COMISS branch
   behavior is authoritative for unordered inputs. EAX integer; RET 8. Auto-analysis is disabled and
   no inferred prototype is forced.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 WinSlider_PickComponent(float param_1,float param_2)

{
  int in_ECX;
  
  if ((((*(float *)(in_ECX + 0x278) <= param_1) && (*(float *)(in_ECX + 0x27c) <= param_2)) &&
      (param_1 < *(float *)(in_ECX + 0x280))) && (param_2 < *(float *)(in_ECX + 0x284))) {
    return 1;
  }
  if (((*(float *)(in_ECX + 0x288) <= param_1) && (*(float *)(in_ECX + 0x28c) <= param_2)) &&
     ((param_1 < *(float *)(in_ECX + 0x290) && (param_2 < *(float *)(in_ECX + 0x294))))) {
    return 2;
  }
  if (((*(float *)(in_ECX + 0x268) <= param_1) && (*(float *)(in_ECX + 0x26c) <= param_2)) &&
     ((param_1 < *(float *)(in_ECX + 0x270) && (param_2 < *(float *)(in_ECX + 0x274))))) {
    return 0;
  }
  return 0xffffffff;
}

