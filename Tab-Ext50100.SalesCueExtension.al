tableextension 80000 "Sales Cue Extension" extends "9053"
{
    fields
    {
        field(80000; "Customers wBalance"; Integer)
        {
            CalcFormula = Count("Customer" WHERE("Balance Due (LCY)" = FILTER(> 0.0)));
            Caption = 'Customers with Balance';
            FieldClass = FlowField;
        }
        field(80001; "Customers"; Integer)
        {
            CalcFormula = Count("Customer");
            Caption = 'Customers';
            FieldClass = FlowField;
        }
    }
}
