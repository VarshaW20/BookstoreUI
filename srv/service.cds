using { my.bookstore as db } from '../db/datamodel';

service BookService @(requires: 'authenticated-user', path: '/BookService') {

@odata.draft.enabled: true
entity Authors as projection on db.Authors;
entity Books as select ID, title, rating, cost, author from db.Books;
}

//Test changes
