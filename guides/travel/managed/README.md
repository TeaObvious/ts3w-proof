# Original travel and visitor managed evidence

These are selected complete original member bodies and corresponding original IL from PC 1.67. Omitted sibling members are outside each extract; files ending `.travel.cs` or `.visitors.cs` are evidence fragments and are not implementation source. C# modern syntax is the ILSpy rendering. Original IL/metadata controls constants, branches, field attributes and actual calls.

Sims3GameplaySystems.dll supplies GameStates, TravelUtil, Bin, SimDescription/MiniSimDescription, world states, arrival/return behaviour and future services. Sims3GameplayObjects.dll supplies TimePortal. SimIFace.dll supplies CauseEffectWorldState. Original DLL identities and S3SA keys are recorded centrally in the [shared managed reference](../../../evidence/managed/README.md#matching-original-assembly-identities).

[Call edges](call-edges.tsv) retain decoded original IL instruction offsets from Systems, Objects, ScriptCore and SimIFace for the selected travel boundaries. They are static call/callvirt sites, not runtime counts; cross-assembly MemberRef names identify the original target declaration, and interface dispatch remains dynamic. The table includes adjacent passport/memory consumers to expose shared storage ownership. It is a bounded boundary lookup, not a complete whole-game call graph.

Read [world travel](../world-travel.md) for the contract and [travel databases](../travel-databases.md) for native writers/readers. Managed-only claims are paired C#/IL references in those guides.

Read [residential visits and greeting](../visitors-and-door-greeting.md) for arrival, ringing, invitation, household greeting writers, automatic inside-room greeting, native room/outside queries and portal permissions. `VisitLot`, `InviteInOrRefuseEntrance` and `PortalPlanEventArgs` are complete original Systems type exports. Sim, Household, Lot, LotManager, VisitSituation, SocialCallback, GameObject, CommonDoor and GlobalFunctions retain selected complete Systems members and metadata. LotLocation/eRoomDefinition are complete original SimIFace type exports. The complete original Door is retained once in [shared canonical C#](../../../evidence/managed/types/Sims3.Gameplay.Abstracts.Door.cs) ([IL](../../../evidence/managed/types/Sims3.Gameplay.Abstracts.Door.il.txt)).

[Visitor call edges](visitor-call-edges.tsv) decode actual original IL calls at selected greeting, invitation and room-classification boundaries. Method-definition, member-reference and method-specification operands are resolved to original declaring types; delegate invocation, authored state-machine events and interface implementations remain dynamic. The table is a bounded lookup for related producers/consumers, not a whole-game call graph or proof that every listed call executes for an ordinary visitor.

[Managed lot initialization](../../world/lot-managed-initialization.md) links
the complete original AddLot, lot-type callback and lot subtype consumer in
the existing LotManager/Lot pairs. ActiveLot lock/notification bodies remain
in their canonical map-view pair. The direct-call lookup identifies the
selected original instruction sites; it is not a runtime event trace.
