Realization Def_Pop_Realiz for Def_Pop_Capability of Stack_Template;

    Procedure Def_Pop (replaces R: Entry; updates S: Stack; replaces empty: Boolean);
        If ( Depth(S) = 0 ) then
            empty := True();
        else
            empty := False();
            Pop(R, S);
        end;
    end Def_Pop;

end Def_Pop_Realiz;