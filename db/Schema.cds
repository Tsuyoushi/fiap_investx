namespace Investx;

using {
    managed,
    cuid,
    Currency
} from '@sap/cds/common';

entity Customer : managed, cuid {
    firstName   : String;
    lastName    : String;
    email       : String;
    phoneNumber : String;
    address     : Address;
    bankData    : Association to BankData;
}

entity BankData : managed, cuid {
    customerID    : Integer;
    accountNumber : String;
    routingNumber : String;
};

entity Product : managed, cuid {
    name        : String;
    description : String;
    type        : ProductType;
};

entity Purchase : managed, cuid {
    customer          : Association to Customer;
    product           : Association to Product;
    quantity          : Integer;
    purchaseDate      : Date;
    investmentDetails : Association to InvestmentDetails;
};

entity InvestmentDetails : managed, cuid {
    investmentType : InvestmentType;
    amount         : Decimal(15, 2);
};

type Address {
    street     : String;
    city       : String;
    postalCode : String;
    country    : String;
};

type ProductType    : Integer enum {
    Investment = 1;
    Stock      = 2;
};

type InvestmentType : Integer enum {
    Stock      = 1;
    Bond       = 2;
    MutualFund = 3;
    RealEstate = 4;
};
