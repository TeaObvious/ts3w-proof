# Original managed lot initialization

## Reference and scope

This is static PC1.67 original `Sims3GameplaySystems.dll` evidence. The
[central original assembly identity](../../evidence/managed/README.md#matching-original-assembly-identities)
is authoritative. Selected complete member bodies are `LotManager.AddLot`
(`06009976`,66 CIL bytes), `Lot.OnLotTypeChanged` (`0600F199`,65 bytes) and
`LotManager.OnLotTypeChanged` (`06009950`,38 bytes).
C# is actual annotated ILSpy rendering; original CIL controls operand types,
branches and constants. No world load, lot callback or gameplay test was run.

## Table insertion and script registration

[Complete AddLot CIL](../travel/managed/LotManager.visitors.il.txt)
([annotated managed member](../travel/managed/LotManager.visitors.cs)) first calls
`sLots.ContainsKey(lotId)`. An existing key returns null immediately. Otherwise,
exact UInt64 `ulong.MaxValue` chooses `WorldLot()`; every other supplied ID
chooses `Lot(ulong)`. This member has no independent nonzero-ID admission gate.

For a nonnull result it calls original `Lot.IsEditable` with the supplied bool,
then writes `sLots[lotId]`, calls original `Simulator.AddObject(object)` and
discards that call's returned `ObjectGuid`. It returns the lot reference.
There is no local exception recovery or rollback in this method. Constructor,
editability-setter and Simulator internals are not expanded by this extract.

The existing complete
[PreWorldLoad CIL](../travel/managed/LotManager.visitors.il.txt)
([annotated managed member](../travel/managed/LotManager.visitors.cs)) calls
`AddLot(ulong.MaxValue,false)` at IL0032 and stores the result as `sWorldLot`.
It selects that lot through the original ActiveLot setter. Consequently the
World Lot participates in the same dictionary and Simulator registration path.

The existing
[ActiveLot/SetActiveLot CIL](managed/LotManager.mapview.il.txt)
([annotated managed members](managed/LotManager.mapview.cs)) retain locked/pending
selection and native/event notification. See the
[active-lot contract](map-view-managed-callers.md).

## Classification notification

[Complete Lot.OnLotTypeChanged CIL](../travel/managed/Lot.visitors.il.txt)
([annotated managed member](../travel/managed/Lot.visitors.cs)) performs:

1. Store the supplied original `LotType` in `mLotType`.
2. Read the lot ID, query `World.GetResidentialLotSubType` and call the original
   `ResidentialLotSubType` setter.
3. Read the lot ID again, query `World.GetCommercialLotSubType` and call the
   original `CommercialLotSubType` setter.
4. If `LotManager.sWorldHasDiveLots` is false, read the commercial subtype and
   compare it to the original immediate integer80 (`kEP10_Diving`). On equality,
   set the shared flag true. The method never clears that flag.

This method receives only the lot type. Native World services produce the
subtypes; neither a hardcoded residential default nor the lot-type argument
alone supplies those values. Subtype-setter bodies and all native resource
selection remain outside this bounded evidence.

## Callers, consumers and limits

The [decoded direct-call lookup](../travel/managed/visitor-call-edges.tsv)
includes the selected methods' immediate calls, the retained PreWorldLoad caller and
`LotManager.OnLotTypeChanged(object,EventArgs)`'s callvirt at IL0020. That callback
is retained as a complete member in the same
[LotManager CIL](../travel/managed/LotManager.visitors.il.txt)
([annotated managed member](../travel/managed/LotManager.visitors.cs)). It admits
only original lot-type event arguments, resolves their lot ID and invokes the
lot method only for a nonnull result; the sender is unused. PreWorldLoad's existing retained body
registers the original World event handler.

These are static instruction sites, not observed callback executions. The table
does not establish all AddLot callers or complete World event dispatch. Original
constructors, full saved-group lifecycle, subtype setters and native geometry
production still require their own evidence. The diving flag does not by itself
establish diving transitions, underwater-world loading or travel behavior.
