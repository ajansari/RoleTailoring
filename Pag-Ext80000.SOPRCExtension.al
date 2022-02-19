pageextension 80000 "SOP Act Extension" extends "9060"
{
    layout
    {
        addafter("Sales Quotes - Open")
        {
            field("Customers with Balance"; Rec."Customers wBalance")
            {
                ApplicationArea = All;
                DrillDownPageID = "Customer List";
                ToolTip = 'List of Customers with a balance due greater than zero';
            }
        }
    }
}