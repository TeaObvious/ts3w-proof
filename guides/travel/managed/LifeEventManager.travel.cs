// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
		private ResourceKey mSnapshot;

		public bool HasSnapshot => mSnapshot != ResourceKey.kInvalidResourceKey;

		public void Forget(ISimDescription actor)
		{
			mIsVisible = false;
			if (HasSnapshot)
			{
				World.DeleteTravelDBResource(mSnapshot);
			}
			OnLifeEventBecameInvisible(actor);
		}

		public void SetSnapshot(ResourceKey snapshot)
		{
			mSnapshot = snapshot;
		}

		public void UpdateSnapshot(ResourceKey snapshot)
		{
			mSnapshot = snapshot;
		}

		private ResourceKey mSnapshot;

		public ResourceKey Snapshot => mSnapshot;

		private ResourceKey mSnapshot;

		public ResourceKey Snapshot => mSnapshot;

	private ResourceKey GetScreenshot(LifeEvent e, Event originalEvent)
	{
		if (GameStates.IsLiveState && Actor.LotCurrent != null && Actor.LotCurrent.IsActive)
		{
			Lot lot = ((originalEvent != null) ? (originalEvent.TargetObject as Lot) : null);
			ObjectGuid[] objIdsToFrame;
			if (Actor.Posture is ITakeMemorySnapshotOfParentPosture takeMemorySnapshotOfParentPosture && takeMemorySnapshotOfParentPosture.ParentId != ObjectGuid.InvalidObjectGuid)
			{
				objIdsToFrame = new ObjectGuid[1] { takeMemorySnapshotOfParentPosture.ParentId };
			}
			else if (lot != null)
			{
				objIdsToFrame = new ObjectGuid[2]
				{
					Actor.ObjectId,
					new ObjectGuid(lot.LotId)
				};
			}
			else
			{
				Sim simFromSubject = GetSimFromSubject(e.Subject);
				objIdsToFrame = ((simFromSubject != null && Lot.AreInSameRoom(simFromSubject, Actor)) ? new ObjectGuid[2] { Actor.ObjectId, simFromSubject.ObjectId } : new ObjectGuid[1] { Actor.ObjectId });
			}
			return World.CapturePhoto(PaintingStyle.Normal, objIdsToFrame);
		}
		return ResourceKey.kInvalidResourceKey;
	}

	public void MergeTravelData(SimDescription simDescription, LifeEventManager importedLifeEventManager)
	{
		mOwnerDescription = simDescription;
	}
