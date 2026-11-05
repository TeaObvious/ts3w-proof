/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX 0x20-byte instance, returns this. Base service
   type9430C3C4, vtable00FDEBB4, empty map-vector begin/end/capacity+10/+14/+18; allocator tag
   MapList+1C. Publishes global011CF308. */

void * __thiscall NameGuidMaps_Construct(void *this)

{
  FUN_0059f4c0(this,0x9430c3c4,0);
  *(undefined ***)this = &PTR_FUN_00fdebb4;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(char **)((int)this + 0x1c) = "ResourceSystem/NameGuidMapService/MapList";
  DAT_011cf308 = this;
  return this;
}

