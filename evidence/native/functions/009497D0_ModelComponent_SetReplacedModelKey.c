/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 ordinary Model replacement producer. ECX component, stack4 resource-key pointer,
   RET4, no defined return value. Calls existing9492B0 resource/bounds change then always ORs
   component+81 bit0, including an equal/prototype key when this setter is actually invoked. The
   named World_ObjectSetModel wrapper78CBB0 separately skips invoking this setter when its full key
   is unchanged. Constructor949510 clears bit0; reader94AA90 version>=14 loads serialized bit
   separately. Full owned8instructions24bytes; callee metadata/bytes and failure/resource policy
   remain untouched. */

void __thiscall ModelComponent_SetReplacedModelKey(void *this,void *resourceKey)

{
  ModelComponent_ApplyResourceBoundsChange(this,resourceKey);
  *(byte *)((int)this + 0x81) = *(byte *)((int)this + 0x81) | 1;
  return;
}

