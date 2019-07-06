size={256,110}

function update()

	iPadVis = findCommand("jb/sasl/iPads/toggle")    
	function iPadVis_handler(phase)	-- happens too fast !!!!!!!
		if 1 == phase and (get(runTime) - lastCommandClick ) > 0.5 then
			if get(iPadVisibility) == 0 then 
				set(iPadVisibility, 1)
				set(iPad1_mode, 0)
				lastCommandClick = get(runTime)	 
			else
				set(iPadVisibility, 0)  -- to blank frame and buttons
				set(iPad1_mode, -1) -- to blank all screens
				lastCommandClick = get(runTime)	
			end
		end
	end
	registerCommandHandler(iPadVis, 0, iPadVis_handler)	--  SHIFT i 
	
	HudHide = findCommand("jb/sasl/hud/toggle")    
	function HudHide_handler(phase)	-- happens too fast !!!!!!!
		if 1 == phase and (get(runTime) - lastCommandClick ) > 0.5 then
			if get(HudHidden) == 0 then 
				set(HudHidden, 1) -- the kill dataref
				lastCommandClick = get(runTime)	 
			else
				set(HudHidden, 0)  -- to make iit visible
				lastCommandClick = get(runTime)	
			end
		end
	end
	registerCommandHandler(HudHide, 0, HudHide_handler)  	--  CTRL D

	yawToggle = findCommand("jb/sasl/yawDamper/toggle")  
	function yawToggle_handler(phase)	-- happens too fast !!!!!!!
		if 1 == phase and (get(runTime) - lastCommandClick ) > 0.5 then
			if get(jb_yawControl) == 1 then
				set(jb_yawControl, 0) 
			else
				set(jb_yawControl, 1) 
			end
			lastCommandClick = get(runTime)
		end
	end
	registerCommandHandler(yawToggle, 0, yawToggle_handler)	--  CTRL Y 
	
	
	
	
end  -- of function update()
