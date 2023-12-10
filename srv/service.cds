using Investx as invx from '../db/Schema';

service fiap {
    function getCustomer (
        customerID  : invx.Customer:ID
    ) returns Customer;

    
    entity Customer             as select from invx.Customer;
    entity BankData             as select from invx.BankData;
    entity Product              as select from invx.Product;
    entity Purchase             as select from invx.Purchase;
    entity InvestmentDetails    as select from invx.InvestmentDetails;

    
}