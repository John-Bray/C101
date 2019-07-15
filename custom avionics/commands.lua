size={256,110}

function update()

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

	airframeHide = findCommand("jb/sasl/airframe/toggle")    
	function airframeHide_handler(phase)	-- happens too fast !!!!!!!
		if 1 == phase and (get(runTime) - lastCommandClick ) > 0.5 then
			if get(airframeHidden) == 0 then 
				set(airframeHidden, 1) -- the kill dataref
				lastCommandClick = get(runTime)	 
			else
				set(airframeHidden, 0)  -- to make iit visible
				lastCommandClick = get(runTime)	
			end
		end
	end
	registerCommandHandler(airframeHide, 0, airframeHide_handler)  	--  CTRL V

	headingHoldToggle = findCommand("jb/sasl/copilot/headingHold")  
	function headingHoldToggle_handler(phase)	-- happens too fast !!!!!!!
	local		 current_FD = get(FD_mode) -- 0 =off, 1 =FD, 2 = AP
	local		headingSelectCommand = findCommand("sim/autopilot/heading")

	
		if 1 == phase and (get(runTime) - lastCommandClick ) > 0.5 then
			set(AP_Hdg_mag, get(Hdg))	
			commandOnce(headingSelectCommand)	
			-- what was the result of that toggle?
			-- if 	Heading hold is now engaged then we need full AP so set FD=2
			
			
			-- otherwise, do we still need FD=2 ?
			
			
			-- or even FD=1 ?
			
			if current_FD < 2 then  -- set to current heading, enable heading hold and switch AP servos on if necessary
				set(FD_mode, 2) 
			else --  we will still need FD=1 for autothrottle or FD=2 if AltHold is engaged
				set(FD_mode, 0) 
			end
			lastCommandClick = get(runTime)
		end
	end
	registerCommandHandler(headingHoldToggle, 0, headingHoldToggle_handler)	
	
	

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
