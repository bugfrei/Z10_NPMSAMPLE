CLASS ZCL_ZNPMSAMPLE_DATA DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS ZCL_ZNPMSAMPLE_DATA IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA itab TYPE TABLE OF znpmsample.

    TRY.
      itab = VALUE #(
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'John'
          lastname = 'Doe'
          street = 'Main Street 123'
          zipcode = '12345'
          city = 'Sample City'
          phone = '123-456-7890'
          mobile = '098-765-4321'
          email = 'john.doe@example.com'
          pin = '2345'
          status = abap_true
          gender = 'm'
          birthday = '19850615'
          currencycode = 'USD'
          price = '45.78'
          quantity = '250'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'Jane'
          lastname = 'Smith'
          street = 'Second Avenue 456'
          zipcode = '67890'
          city = 'Example Town'
          phone = '234-567-8901'
          mobile = '987-654-3210'
          email = 'jane.smith@example.com'
          pin = '6789'
          status = abap_false
          gender = 'f'
          birthday = '19900720'
          currencycode = 'EUR'
          price = '60.25'
          quantity = '500'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'Alice'
          lastname = 'Johnson'
          street = 'Third Street 789'
          zipcode = '11223'
          city = 'Demo City'
          phone = '345-678-9012'
          mobile = '876-543-2109'
          email = 'alice.johnson@example.com'
          pin = '3456'
          status = abap_true
          gender = 'f'
          birthday = '19881105'
          currencycode = 'GBP'
          price = '85.6'
          quantity = '750'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'Bob'
          lastname = 'Brown'
          street = 'Fourth Lane 012'
          zipcode = '33445'
          city = 'Test Village'
          phone = '456-789-0123'
          mobile = '765-432-1098'
          email = 'bob.brown@example.com'
          pin = '5678'
          status = abap_false
          gender = 'm'
          birthday = '19751230'
          currencycode = 'CAD'
          price = '72.1'
          quantity = '100'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'Charlie'
          lastname = 'Davis'
          street = 'Fifth Avenue 345'
          zipcode = '55667'
          city = 'Example City'
          phone = '567-890-1234'
          mobile = '654-321-0987'
          email = 'charlie.davis@example.com'
          pin = '7890'
          status = abap_true
          gender = 'm'
          birthday = '19950325'
          currencycode = 'AUD'
          price = '30.5'
          quantity = '300'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'David'
          lastname = 'Evans'
          street = 'Sixth Street 678'
          zipcode = '77889'
          city = 'Sample Town'
          phone = '678-901-2345'
          mobile = '543-210-9876'
          email = 'david.evans@example.com'
          pin = '8901'
          status = abap_false
          gender = 'm'
          birthday = '19800815'
          currencycode = 'JPY'
          price = '55.4'
          quantity = '650'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'Emma'
          lastname = 'Green'
          street = 'Seventh Lane 901'
          zipcode = '88990'
          city = 'Demo Town'
          phone = '789-012-3456'
          mobile = '432-109-8765'
          email = 'emma.green@example.com'
          pin = '9012'
          status = abap_true
          gender = 'f'
          birthday = '19720130'
          currencycode = 'CHF'
          price = '25.75'
          quantity = '200'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'Fiona'
          lastname = 'Hill'
          street = 'Eighth Avenue 234'
          zipcode = '99001'
          city = 'Test City'
          phone = '890-123-4567'
          mobile = '321-098-7654'
          email = 'fiona.hill@example.com'
          pin = '1234'
          status = abap_false
          gender = 'f'
          birthday = '19920910'
          currencycode = 'NZD'
          price = '40.8'
          quantity = '400'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'George'
          lastname = 'Ivanov'
          street = 'Ninth Street 567'
          zipcode = '10112'
          city = 'Example Village'
          phone = '901-234-5678'
          mobile = '210-987-6543'
          email = 'george.ivanov@example.com'
          pin = '4567'
          status = abap_true
          gender = 'm'
          birthday = '19830412'
          currencycode = 'CNY'
          price = '90.99'
          quantity = '150'
        )
        (
          id = cl_system_uuid=>create_uuid_x16_static( )
          firstname = 'Hannah'
          lastname = 'Jones'
          street = 'Tenth Lane 890'
          zipcode = '22334'
          city = 'Sample Village'
          phone = '012-345-6789'
          mobile = '109-876-5432'
          email = 'hannah.jones@example.com'
          pin = '6789'
          status = abap_false
          gender = 'f'
          birthday = '19870517'
          currencycode = 'INR'
          price = '15.3'
          quantity = '350'
        )
    ).
    CATCH cx_root.
    ENDTRY.

    DELETE FROM znpmsample.

    INSERT znpmsample FROM TABLE itab.

    out->write( |{ sy-dbcnt } entries inserted successfully| ).

  ENDMETHOD.
ENDCLASS.
