/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 VisualState producer contract. Analyst-assigned native consumer; ECX render
   manager, full UInt64GUID (TWO DWORD stack words) THEN UInt32geometryState, RET12, ALbool only.
   Prior twoUInt32 decompilation OMITTED the third state word and falsely used GUIDhigh as state.
   Copy fullGUID locally; RenderGuidMap_FindIterator(manager+4,outIterator,GUIDptr). Reject
   iterator==manager1028sentinel or0, or iterator-8==0. Query object virtualC with
   rawtypeid017F1D88; NULL false. On success read THIRD entry stackword and store exact UInt32 at
   resolved SceneModel+2A4, returnAL1; failureAL0. Zero is admitted. No shader compile/resource
   preparation/draw/readiness in this store. Original constructor6F59A0 initializes2A4=0; reviewed
   draw6F60B0 copies2A4 to packet30; unrelated ordinal2B8 remains distinct. Full map/global
   authority and actual dispatch thread/lifetime remain separate.
   VirtualC query call at6FFD0A has explicit ECX receiver plus one callee-popped UInt32type word;
   override matches balanced success epilogue and existing query ABI. Without it decompiler leaves
   that word on stack and again mislabels the later third argument as GUIDhigh. Concrete dynamic
   query target remains separate evidence. */

bool __thiscall
RenderObject_StoreSceneModelGeometryState(void *this,ulonglong objectGuid,uint geometryState)

{
  int *this_00;
  void *pvVar1;
  ulonglong local_8;
  
  local_8 = objectGuid;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&objectGuid,(byte *)&local_8);
  if ((((int)objectGuid != *(int *)((int)this + 0x1028)) && ((int)objectGuid != 0)) &&
     (this_00 = (int *)((int)objectGuid + -8), this_00 != (int *)0x0)) {
                    /* Virtual interface query: ECX receiver +one UInt32type stack word, callee
                       pops4. Ignoring cleanup corrupts downstream geometryState stack mapping. */
    pvVar1 = (**(code **)(*this_00 + 0xc))(this_00,0x17f1d88);
    if (pvVar1 != (void *)0x0) {
                    /* Read THIRD entry stackword: UInt32geometryState, after TWO DWORDs of
                       fullGUID. This is NOT GUIDhigh. */
      *(uint *)((int)pvVar1 + 0x2a4) = geometryState;
      return true;
    }
  }
  return false;
}

