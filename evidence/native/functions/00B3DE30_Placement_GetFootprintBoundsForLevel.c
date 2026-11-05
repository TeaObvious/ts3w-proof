/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 STATIC ORIGINAL. cdecl level, object, output rectangle; AL status. Null object/component
   fails. Iterates FootprintComponent_NextPolygonByRuntimeFlags with runtime flags5 and option1;
   only matching signed-byte authored level, nonempty polygon and nondegenerate X/Z bounds enter
   union. First admitted rectangle initializes output; later ones union via51FE90. No admitted
   rectangle returns0; caller handles no-bounds failure rather than fabricating geometry. */

char __cdecl Placement_GetFootprintBoundsForLevel(int param_1,void *param_2,float *param_3)

{
  float *this;
  bool bVar1;
  void *this_00;
  char cVar2;
  uint local_14;
  float local_10;
  float local_c;
  float local_8;
  float local_4;
  
  if (param_2 == (void *)0x0) {
    return '\0';
  }
  this_00 = Object_GetComponentByMask(param_2,DAT_011e9fa8);
  if (this_00 != (void *)0x0) {
    cVar2 = '\0';
    local_14 = 0;
    param_2 = (void *)0x0;
    bVar1 = FootprintComponent_NextPolygonByRuntimeFlags(this_00,&local_14,5,(int *)&param_2,'\x01')
    ;
    this = param_3;
    if (bVar1) {
      do {
        if ((((param_1 == *(char *)((int)param_2 + 5)) &&
             (*(int *)((int)param_2 + 0x30) != *(int *)((int)param_2 + 0x34))) &&
            (Geometry_GetPolygonXZBounds((int *)((int)param_2 + 0x30),&local_10),
            local_10 != local_8)) && (local_c != local_4)) {
          if (cVar2 == '\0') {
            *this = local_10;
            this[1] = local_c;
            this[2] = local_8;
            this[3] = local_4;
            cVar2 = '\x01';
          }
          else {
            FUN_0051fe90(this,this,&local_10);
          }
        }
        bVar1 = FootprintComponent_NextPolygonByRuntimeFlags
                          (this_00,&local_14,5,(int *)&param_2,'\x01');
      } while (bVar1);
    }
    return cVar2;
  }
  return '\0';
}

