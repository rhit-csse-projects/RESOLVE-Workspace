Realization Grid_Positioning_Realiz for Grid_Positioning_Template;
	uses Natural_Number_Theory;

	Type Grid_Pos = Record
			X, Y: Integer;
		end;
		conventions 0 <= GP.X <= Max_Right and 0 <= GP.Y <= Max_Top;
		correspondence Conc.GP.X = GP.X and Conc.GP.Y = GP.Y;
	end;

	Procedure Move_Left(updates GP: Grid_Pos);
		GP.X := GP.X - 1;
	end Move_Left;

	Procedure Move_Right(updates GP: Grid_Pos);
		GP.X := GP.X + 1;
	end Move_Right;

	Procedure Is_OK_to_Move_Left(restores GP: Grid_Pos): Boolean;
		Is_OK_to_Move_Left := (1 <= GP.X);
	end Is_OK_to_Move_Left;

	Procedure Is_OK_to_Move_Right(restores GP: Grid_Pos): Boolean;
		Is_OK_to_Move_Right := (GP.X < Max_Right);
	end Is_OK_to_Move_Right;

	Procedure Move_Down(updates GP: Grid_Pos);
		GP.Y := GP.Y - 1;
	end Move_Down;

	Procedure Move_Up(updates GP: Grid_Pos);
		GP.Y := GP.Y + 1;
	end Move_Up;

	Procedure Is_OK_to_Move_Down(restores GP: Grid_Pos): Boolean;
		Is_OK_to_Move_Down := (1 <= GP.Y);
	end Is_OK_to_Move_Down;

	Procedure Is_OK_to_Move_Up(restores GP: Grid_Pos): Boolean;
		Is_OK_to_Move_Up := (GP.Y < Max_Top);
	end Is_OK_to_Move_Up;

	Procedure Clear(clears GP: Grid_Pos);
		GP.X := 0;
		GP.Y := 0;
	end Clear;

end Grid_Positioning_Realiz;