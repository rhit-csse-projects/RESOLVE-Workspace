Realization Short_Queue_Reversal_Realiz for Short_Queue_Reversal_Capability of Queue_Template;
    Procedure SQ_Reverse(updates Q: Queue);
        Var Temp: Entry;

        Dequeue(Temp, Q);
        Enqueue(Temp, Q);
    end SQ_Reverse;
end Short_Queue_Reversal_Realiz;