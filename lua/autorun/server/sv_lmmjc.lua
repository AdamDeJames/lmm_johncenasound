util.AddNetworkString("LMMJCHasJoined")

resource.AddSingleFile("sound/lmmjc_JOHNCENA.wav")

function JohnCenaHasReallyJoinedTheServer( ply )
	timer.Simple( 3, function()
		if !ply:IsValid() then
			return
		end
		for k,v in pairs(player.GetAll()) do // the way you had it was weird to me sorry. lawl.
			if v:IsAdmin() then
				net.Start("LMMJCHasJoined")
				net.Broadcast()
			end
		end
	end)
end
hook.Add( "PlayerInitialSpawn", "JohnCenaHasReallyJoinedTheServer", JohnCenaHasReallyJoinedTheServer )