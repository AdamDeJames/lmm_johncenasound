util.AddNetworkString("LMMJCHasJoined")

resource.AddSingleFile("sound/lmmjc_JOHNCENA.wav")

function JohnCenaHasReallyJoinedTheServer( ply )
	timer.Simple( 3, function()
		if !ply:IsValid() and !ply:IsAdmin() then
			return
		end
		for k,v in pairs(player.GetAll()) do
			net.Start("LMMJCHasJoined")
			net.Send(v)
		end
	end)
end
hook.Add( "PlayerInitialSpawn", "JohnCenaHasReallyJoinedTheServer", JohnCenaHasReallyJoinedTheServer )