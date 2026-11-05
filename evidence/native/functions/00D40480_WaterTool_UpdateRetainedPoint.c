/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 COMPLETE95-byte thiscall one LotPaintPointpointer RET4void, fullWaterTool receiver. Loads
   incomingpoint once intoEBX; interactive=receiver+28. First virtualinteractive+74 receives
   boundlot+34,samepoint,float0. If engaged+86 then D400F0 receives SAMEpoint unmodified; if
   undoable+194exists its virtual+34 returnsST0 and CD3670 receives
   amount,samepoint,float0,true,false. All paths join RET4. No independent return value, fresh
   cursor/currentfloor lookup, coordinate normalization or level rewrite. D40660 tailcalls with
   cachedpoint atfulltool+100; D402E0 direct firstclick separately passes its suppliedpoint
   toD400F0. Shared pointer/error/render helper effects remain their real owners, not new proof of
   fullcontroller parity. */

void __thiscall WaterTool_UpdateRetainedPoint(void *this,LotPaintPoint *point)

{
  float10 fVar1;
  
  (**(code **)(*(int *)((int)this + 0x28) + 0x74))(*(undefined4 *)((int)this + 0x34),point,0);
  if (*(char *)((int)this + 0x86) != '\0') {
    WaterTool_StampPoint(this,point);
    if (*(int **)((int)this + 0x194) != (int *)0x0) {
      fVar1 = (float10)(**(code **)(**(int **)((int)this + 0x194) + 0x34))();
      FUN_00cd3670((void *)((int)this + 0x28),(float)fVar1,&point->x,0.0,'\x01','\0');
    }
  }
  return;
}

