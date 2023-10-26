namespace my.bookstore;

entity Authors {
    key ID        : Integer;
        firstname : String(50);
        lastname  : String(50);
        books     : Composition of many Books
                        on books.author = $self;
}

entity Books {
    key ID     : UUID;
        title  : String(50);
        cost   : Decimal(10, 2);
        rating : Integer;
        author : Association to one Authors;
}
