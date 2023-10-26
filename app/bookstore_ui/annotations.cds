using BookService as service from '../../srv/service';

annotate service.Authors with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>FirstName}',
            Value : firstname,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>LastName}',
            Value : lastname,
        },
    ]
);
annotate service.Authors with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firstname',
                Value : firstname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastname',
                Value : lastname,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Author}',
            ID : 'Author',
            Target : '@UI.FieldGroup#Author',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>BooksWrittenByAuthor}',
            ID : 'BookswrittenbyAuthor',
            Target : 'books/@UI.LineItem#BookswrittenbyAuthor',
        },
    ]
);
annotate service.Authors with @(
    UI.SelectionFields : [
        ID,
        firstname,
    ]
);
annotate service.Authors with {
    ID @Common.Label : '{i18n>Id}'
};
annotate service.Authors with {
    firstname @Common.Label : '{i18n>I18nfirstnamee}'
};
annotate service.Books with @(
    UI.LineItem #BookswrittenbyAuthor : [
        {
            $Type : 'UI.DataField',
            Value : title,
            Label : '{i18n>BookTitle}',
        },{
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : '{i18n>Rating}',
        },
        {
            $Type : 'UI.DataField',
            Value : cost,
            Label : '{i18n>Cost}',
        },]
);
annotate service.Authors with @(
    UI.DataPoint #rating : {
        $Type : 'UI.DataPointType',
        Value : ID,
        Title : 'ID',
        TargetValue : 5,
        Visualization : #Rating,
    },
    UI.HeaderFacets : []
);
annotate service.Books with @(
    UI.DataPoint #rating : {
        Value : rating,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
annotate service.Authors with @(
    UI.FieldGroup #Author : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@UI.ConnectedFields#connected',
                Label : '{i18n>AuthorName}',
            },],
    }
);
annotate service.Authors with @(
    UI.ConnectedFields #connected : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{firstname}{lastname}',
        Data : {
            $Type : 'Core.Dictionary',
            firstname : {
                $Type : 'UI.DataField',
                Value : firstname,
            },
            lastname : {
                $Type : 'UI.DataField',
                Value : lastname,
            },
        },
    }
);
