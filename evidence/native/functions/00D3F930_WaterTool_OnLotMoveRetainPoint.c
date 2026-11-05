/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 COMPLETE60-byte thiscall lotpointer+LotPaintPointpointer RET8ALtrue. ECX is WaterTool
   interactive subobject=fulltool+28. First CMP[ECX+5E],0 establishes engaged flag; three MOV pairs
   copy ALL raw DWORDs pointX/+4Z/+8signedInt32level into interactive+D8/DC/E0
   (fulltool+100/104/108), preserving the CMP flags until JNZ. Thus cache updates even when engaged.
   If NOTengaged, virtual+74(lot,point,float0) updates interactive presentation; either path
   returnsAL1. No fresh floor/global lookup, rounding, level clamp or stamp occurs in this callback.
   Function metadata only created from preexisting20instructions; original
   body/padding/adjacentcodeunits preserved. Interactive vtable1088B00+64 references this handler;
   constructorD404E0 assigns thatvtable. */

bool __thiscall WaterTool_OnLotMoveRetainPoint(void *this,undefined *lot,LotPaintPoint *point)

{
  *(float *)((int)this + 0xd8) = point->x;
  *(float *)((int)this + 0xdc) = point->z;
  *(int *)((int)this + 0xe0) = point->level;
  if (*(char *)((int)this + 0x5e) == '\0') {
    (**(code **)(*(int *)this + 0x74))(lot,point,0);
  }
  return true;
}

