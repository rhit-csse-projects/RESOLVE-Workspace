Realization Empty_Full_Realiz for Empty_Full_Capabilities of Stack_Template;

    Procedure Is_Empty (restores S: Stack): Boolean;
        Is_Empty := (Depth(S) = 0);
    end Is_Empty;

    Procedure Is_Full (restores S: Stack): Boolean;
    --    Is_Full := (Rem_Capacity(S) = 0);
    -- alternative code shown below to illustrate how to assign Boolean values in code
        If (Rem_Capacity(S) = 0) then
            Is_Full := True();
        else
            Is_Full := False();
        end;
    end Is_Full;

end Empty_Full_Realiz;