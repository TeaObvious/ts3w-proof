// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Socializing.SocialCallback selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	public static void OnStayOver(Sim actor, Sim target, bool showTNS)
	{
		Relationship relationship = Relationship.Get(actor, target, createIfNone: false);
		if (relationship != null)
		{
			if (relationship.SimDescriptionA == target.SimDescription)
			{
				relationship.mWhenAllowedToStayOverSimA = SimClock.CurrentTime();
			}
			else
			{
				relationship.mWhenAllowedToStayOverSimB = SimClock.CurrentTime();
			}
		}
		target.GreetSimOnLot(actor.LotHome);
		if (target.LotCurrent != actor.LotHome)
		{
			target.InteractionQueue.AddNext(GoInsideLot.Singleton.CreateInstance(actor.LotHome, target, new InteractionPriority(InteractionPriorityLevel.UserDirected), isAutonomous: false, cancellableByPlayer: true));
			return;
		}
		VisitSituation visitSituation = VisitSituation.FindVisitSituationInvolvingGuest(target);
		if (target.IsOutside)
		{
			target.InteractionQueue.AddNext(GoInsideLot.Singleton.CreateInstance(actor.LotHome, target, new InteractionPriority(InteractionPriorityLevel.UserDirected), isAutonomous: false, cancellableByPlayer: true));
		}
		if (visitSituation != null)
		{
			GroupingSituation situationOfType = target.GetSituationOfType<GroupingSituation>();
			if (situationOfType != null && situationOfType.RomanticGrouping && situationOfType.AreBothSimsInDate(target, actor))
			{
				GroupingSituation.RemoveSimFromGroupSituation(target, GroupingSituation.LeavingReasons.AskToStayOver);
			}
			visitSituation.AllowedToStayOver = true;
			visitSituation.SetStateSocializing();
		}
		if (!target.IsSelectable)
		{
			Sim.RemoveGoHomeInteractions(target, forceRemoveAll: true);
		}
		if (showTNS && actor.IsSelectable)
		{
			StyledNotification.Format format = new StyledNotification.Format(LocalizeString("NPCStayOver"), target.ObjectId, StyledNotification.NotificationStyle.kSimTalking);
			StyledNotification.Show(format);
		}
	}

	public static void OnAskToStayOverAccepted(Sim actor, Sim target, string interaction, ActiveTopic topic, InteractionInstance i)
	{
		Relationship relationship = Relationship.Get(actor, target, createIfNone: false);
		if (relationship != null)
		{
			if (relationship.SimDescriptionA == actor.SimDescription)
			{
				relationship.mWhenAllowedToStayOverSimA = SimClock.CurrentTime();
			}
			else
			{
				relationship.mWhenAllowedToStayOverSimB = SimClock.CurrentTime();
			}
		}
		actor.GreetSimOnLot(target.LotHome);
		if (target.LotCurrent != target.LotHome)
		{
			target.InteractionQueue.AddNext(GoHome.Singleton.CreateInstance(target.LotHome, target, new InteractionPriority(InteractionPriorityLevel.UserDirected), isAutonomous: false, cancellableByPlayer: true));
		}
		else
		{
			VisitSituation visitSituation = VisitSituation.FindVisitSituationInvolvingGuest(actor);
			if (visitSituation != null)
			{
				visitSituation.AllowedToStayOver = true;
				GroupingSituation situationOfType = target.GetSituationOfType<GroupingSituation>();
				if (situationOfType != null && situationOfType.RomanticGrouping && situationOfType.AreBothSimsInDate(actor, target))
				{
					GroupingSituation.RemoveSimFromGroupSituation(target, GroupingSituation.LeavingReasons.AskToStayOver);
				}
			}
		}
		if (actor.IsSelectable)
		{
			StyledNotification.Format format = new StyledNotification.Format(LocalizeString("PCStayOver"), target.ObjectId, StyledNotification.NotificationStyle.kSimTalking);
			StyledNotification.Show(format);
		}
	}

	public static void Greet(Sim actor, Sim target, string interaction, ActiveTopic topic, InteractionInstance i)
	{
		InviteIn(actor, target, interaction, topic, i);
	}

	public static void InviteIn(Sim actor, Sim target, string interaction, ActiveTopic topic, InteractionInstance i)
	{
		if (target.Service is UniversityMascot)
		{
			MascotIntroSituation situationOfType = target.GetSituationOfType<MascotIntroSituation>();
			if (situationOfType.RegisterInviteIn(actor, target))
			{
				return;
			}
		}
		VisitSituation situationOfType2 = target.GetSituationOfType<VisitSituation>();
		if (situationOfType2 != null && situationOfType2.Child is VisitSituation.VisitorWantsToComeIn { Followers: not null } visitorWantsToComeIn)
		{
			foreach (Sim follower in visitorWantsToComeIn.Followers)
			{
				InviteInSingleTarget(actor, follower, interaction, topic, i);
			}
		}
		InviteInSingleTarget(actor, target, interaction, topic, i);
		SetBestLevelToDisplayForSim(actor);
		if (target.IsHuman)
		{
			InteractionInstance entry = GoInsideLot.Singleton.CreateInstance(actor.LotHome, actor, i.GetPriority(), isAutonomous: false, cancellableByPlayer: true);
			actor.InteractionQueue.AddNext(entry);
			if (target.Service != null)
			{
				OnAskedToHangOut(actor, target, interaction, topic, i);
			}
		}
	}

	private static void InviteInSingleTarget(Sim actor, Sim target, string interaction, ActiveTopic topic, InteractionInstance i)
	{
		VisitSituation.OnInvitedIn(target);
		if (target.IsHuman)
		{
			GoInsideLotAndSocialize goInsideLotAndSocialize = GoInsideLotAndSocialize.Singleton.CreateInstance(actor, target, new InteractionPriority(InteractionPriorityLevel.NonCriticalNPCBehavior), isAutonomous: true, cancellableByPlayer: true) as GoInsideLotAndSocialize;
			goInsideLotAndSocialize.Delay = 1;
			target.InteractionQueue.Add(goInsideLotAndSocialize);
		}
	}

	public static void InviteEveryoneIn(Sim actor, Sim target, string interaction, ActiveTopic topic, InteractionInstance i)
	{
		int num = 1;
		foreach (Sim sim in actor.LotHome.GetSims())
		{
			if (!sim.IsAtHome && sim.Service == null)
			{
				VisitSituation.OnInvitedIn(sim);
				if (!sim.IsSelectable)
				{
					GoInsideLotAndSocialize goInsideLotAndSocialize = GoInsideLotAndSocialize.Singleton.CreateInstance(actor, sim, new InteractionPriority(InteractionPriorityLevel.NonCriticalNPCBehavior), isAutonomous: true, cancellableByPlayer: true) as GoInsideLotAndSocialize;
					goInsideLotAndSocialize.Delay = num++;
					sim.InteractionQueue.Add(goInsideLotAndSocialize);
				}
			}
		}
		InteractionInstance entry = GoInsideLot.Singleton.CreateInstance(actor.LotHome, actor, new InteractionPriority(InteractionPriorityLevel.NonCriticalNPCBehavior), isAutonomous: false, cancellableByPlayer: true);
		actor.InteractionQueue.AddNext(entry);
	}

	public static void AllowedIn(Sim actor, Sim target, string interaction, ActiveTopic topic, InteractionInstance i)
	{
		AllowedInHelper(actor, target);
	}

	private static void AllowedInSingleActorHelper(Sim actor, Sim target)
	{
		if (target.IsAtHome && actor.LotCurrent == target.LotHome)
		{
			VisitSituation.OnInvitedIn(actor);
			actor.InteractionQueue.Add(GoInsideLot.Singleton.CreateInstance(target.LotHome, actor, new InteractionPriority(InteractionPriorityLevel.High), isAutonomous: false, cancellableByPlayer: true));
		}
	}

	public static void AllowedInHelper(Sim actor, Sim target)
	{
		VisitSituation situationOfType = actor.GetSituationOfType<VisitSituation>();
		if (situationOfType != null && situationOfType.Child is VisitSituation.HostOutside { Followers: not null } hostOutside)
		{
			foreach (Sim follower in hostOutside.Followers)
			{
				AllowedInSingleActorHelper(follower, target);
			}
		}
		AllowedInSingleActorHelper(actor, target);
		SetBestLevelToDisplayForSim(actor);
	}

	public static void OnInvitedOver(Sim actor, Sim target, string interaction, ActiveTopic topic, InteractionInstance i)
	{
		GoHome goHome = GoHome.Singleton.CreateInstance(actor.LotHome, actor, i.GetPriority(), isAutonomous: false, cancellableByPlayer: true) as GoHome;
		goHome.SimFollowers = new List<Sim>();
		goHome.SimFollowers.Add(target);
		target.GreetSimOnLot(actor.LotHome);
		if (actor.InteractionQueue.PushAsContinuation(goHome, mustRun: true))
		{
			EventTracker.SendEvent(EventTypeId.kInvitedSimOver, actor, target);
		}
	}
